import { Request, Response } from "express";
import pool from '../../database';
import jwt from 'jsonwebtoken';
import { v4 as uuidv4 } from 'uuid';
require('dotenv').config({ path: '../../../.env' });

class sessionController {

    public async login(req: Request, res: Response): Promise<void> {
        console.log(Date().toLocaleString(), " :", "User login: ", req.body);
        const usuario = req.body;
        let resp: any;
        try {
            resp = await pool.query(`SELECT u.nombre,
                                            u.apellido_paterno apelllidoPaterno,
                                            u.apellido_materno apellidoMaterno,
                                            u.nombre_usuario nombreUsuario,
                                            r.nombre rol, 
                                            c.nombre ciudad,
                                            p.nombre pais,
                                            gra.nombre grado,
                                            gru.grupo ,
                                            ce.año,
                                            ce.ciclo
                                    FROM    usuario u,
                                            rol r ,
                                            inscripcion i,
                                            ciudad c,
                                            pais p,
                                            grado gra,
                                            grupo gru,
                                            ciclo_escolar ce
                                    WHERE   r.id_rol = u.id_rol and
                                            u.id_usuario = i.id_usuario and
                                            i.id_ciudad = c.id_ciudad and
                                            i.id_grado = gra.id_grado and
                                            i.id_grupo = gru.id_grupo and
                                            i.id_ciclo_escolar = ce.id_ciclo_escolar and
                                            p.id_pais = c.id_pais and
                                            u.nombre_usuario = ? and 
                                            u.contraseña = ?`,
                [[req.body.nombreUsuario], [req.body.contraseña]]
            );

            console.log(`resp : ${JSON.stringify(resp)}`);

            if (resp.length > 0) {
                const token = generateAccesToken(usuario);
                console.log("token: ", token);

                const response = {
                    codigo: "200.pearson.0000",
                    mensaje: "operacion exitosa",
                    folio: uuidv4(),
                    resultado: {
                        userToken: token,
                        usuario: resp[0]
                    }
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