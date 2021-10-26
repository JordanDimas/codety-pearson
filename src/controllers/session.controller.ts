import { Request, Response } from "express";
import pool from '../database';
import jwt from 'jsonwebtoken';
import { v4 as uuidv4 } from 'uuid';
require('dotenv').config({ path: '../../../.env' });

class sessionController {
    
    public async login(req: Request, res: Response): Promise<void> {
        console.log(Date().toLocaleString(), " :", "User login: ", req.body);
        const usuario = req.body;
        let resp: any;
        try {
            resp = await pool.query(`SELECT u.id_usuario,                      
                                            u.nombre,
                                            u.apellido_paterno apelllidoPaterno,
                                            u.apellido_materno apellidoMaterno,
                                            u.nombre_usuario nombreUsuario,
                                            r.nombre rol, 
                                            c.nombre ciudad,
                                            p.nombre pais,
                                            i.id_inscripcion,
                                            gra.nombre grado,
                                            gru.grupo ,
                                            ce.año,
                                            ce.ciclo,
                                            e.nombre escuela,
                                            de.id_distribucion_escuela
                                    FROM    usuario u,
                                            rol r ,
                                            inscripcion i,
                                            ciudad c,
                                            pais p,
                                            grado gra,
                                            grupo gru,
                                            ciclo_escolar ce,
                                            escuela e,
                                            distribucion_escuela de
                                    WHERE   r.id_rol = u.id_rol and
                                            u.id_usuario = i.id_usuario and
                                            p.id_pais = c.id_pais and
                                            i.id_distribucion_escuela = de.id_distribucion_escuela and
                                            de.id_grupo = gru.id_grupo and
                                            de.id_escuela = e.id_escuela and
                                            e.id_ciudad = c.id_ciudad and
                                            de.id_grado = gra.id_grado and
                                            i.id_ciclo_escolar = ce.id_ciclo_escolar and
                                            u.nombre_usuario = ? and 
                                            u.contraseña = ?`,
                [[req.body.nombreUsuario], [req.body.contraseña]]
            );

            let qry1 = `select  insi.id_insignia,
                                insi.nombre,
                                insi.alias,
                                sum(ra.puntos) total
                        from    inscripcion insc,
                                actividad_inscripcion ai, 
                                respuesta_actividad ra,
                                pregunta p,
                                insignia insi
                        WHERE   insc.id_inscripcion = ai.id_inscripcion and
                                ai.id_actividad_inscripcion = ra.id_actividad_inscripcion and 
                                ra.id_pregunta = p.id_pregunta and 
                                p.id_insignia = insi.id_insignia and
                                insc.id_inscripcion  = ${resp[0].id_inscripcion}
                                GROUP BY insi.nombre`;

            let resp1 = await pool.query(qry1);

            console.log(`resp : ${JSON.stringify(resp)}`);
            console.log(`resp1 : ${JSON.stringify(resp1)}`);
            
            let lista_insignia = [];

            for(let list of resp1){
                let aux = {
                    id_insignia: list.id_insignia, 
                     nombre: list.nombre,
                     alias: list.alias,
                     total: list.total
                 }
                 lista_insignia.push(aux);
             }

            if (resp.length > 0) {
                const token = generateAccesToken(usuario);
                console.log("token: ", token);

                let resultado = {
                    token_usuario: token,
                    usuario: {
                        id_usuario: resp[0].id_usuario,
                        nombre: resp[0].nombre,
                        apelllidoPaterno: resp[0].apelllidoPaterno,
                        apellidoMaterno: resp[0].apellidoMaterno,
                        nombreUsuario: resp[0].nombreUsuario,
                        rol: resp[0].rol,
                    },
                    escuela: {
                        id_inscripcion: resp[0].id_inscripcion,
                        id_disttribucion_escuela: resp[0].id_distribucion_escuela,
                        escuela: resp[0].escuela,
                        grado: resp[0].grado,
                        grupo: resp[0].grupo,
                        ciclo: resp[0].ciclo,
                        año: resp[0].año,
                        ciudad: resp[0].ciudad,
                        pais: resp[0].pais,
                    },
                    insignias: lista_insignia
                }

                const response = {
                    codigo: "200.pearson.0000",
                    mensaje: "operacion exitosa",
                    folio: uuidv4(),
                    resultado: resultado
                };

                res.json(response);

            } else {
                res.status(404).json({
                    codigo: "404.pearson.0000",
                    mensaje: "usuario no encontrado",
                    folio: uuidv4(),
                    resultado: {}
                });
            }
        } catch (err) {
            let dateEx = Date().toLocaleString();
            console.log(dateEx, " :", "User login [Error]: ", err);
            res.status(403).json({ message: 'ERROR', date: dateEx, description: err });
        }
    }

}

const generateAccesToken = function (usuario: any) {
    console.log("generando token");
    return jwt.sign(usuario, "pearson2021#@", { expiresIn: '1d' })
}

export const SessionController = new sessionController();