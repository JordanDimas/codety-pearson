import { Request, Response } from "express";
import pool from '../database';
import jwt from 'jsonwebtoken';
import { v4 as uuidv4 } from 'uuid';
require('dotenv').config({ path: '../../../.env' });

class actividadController {

    public async getActividadList(req: Request, res: Response): Promise<void> {
        console.log(Date().toLocaleString(), " :", "User login: ", req.query);
        const reqData = req.query;
        let resp: any;
        try {
            resp = await pool.query(`SELECT * FROM actividad where grado = ? order by sesion asc`, [reqData.grado]);

            let actividad_lista = [];

            for (let list of resp) {
                let aux = {
                    id_actividad: list.id_actividad,
                    nombre: list.nombre,
                    grado: list.grado,
                    sesion: list.sesion,
                    bloque: list.bloque,
                    bateria: list.bateria,
                    status_actividad: list.status_actividad
                };
                actividad_lista.push(aux);
            }


            console.log(`resp : ${JSON.stringify(resp)}`);

            const response = {
                codigo: "200.pearson.0000",
                mensaje: "operacion exitosa",
                folio: uuidv4(),
                resultado: { actividad_lista }
            };

            res.json(response);
        } catch (err) {
            let dateEx = Date().toLocaleString();
            console.log(dateEx, " :", "User login [Error]: ", err);
            res.status(403).json({ message: 'ERROR', date: dateEx, description: err });
        }
    }

    public async getLectura(req: Request, res: Response): Promise<void> {
        console.log(Date().toLocaleString(), " :", "lectura getLectura: ", req.query);
        const data = req.query;
        let resp: any;
        try {
            resp = await pool.query(`select l.id_lectura,
                                            l.nombre,
                                            l.descripcion,
                                            l.texto
                                    from    lectura l,
                                            actividad  a
                                    where   a.id_actividad = ? and
                                            l.id_lectura = a.id_lectura`,
                [data.id_actividad]);


            console.log(`resp : ${JSON.stringify(resp)}`);

            let response = {
                codigo: "200.pearson.0000",
                mensaje: "operacion exitosa",
                folio: uuidv4(),
                resultado: {
                    lectura: resp[0]
                }
            };

            res.json(response);
        } catch (err) {
            let dateEx = Date().toLocaleString();
            console.log(dateEx, " :", "lectura getLectura [Error]: ", err);
            res.status(403).json({ message: 'ERROR', date: dateEx, description: err });
        }
    }

    public async getPreguntas(req: Request, res: Response): Promise<void> {
        console.log(Date().toLocaleString(), " :", "lectura getPreguntas: ", req.query);
        const data = req.query;
        let resp: any;
        let resp2: any;
        let resp3: any;
        try {
            resp = await pool.query(`select * from  actividad where id_actividad = ?`,
                [data.id_actividad]);


            console.log(`resp : ${JSON.stringify(resp)}`);

            resp2 = await pool.query(`select p.id_pregunta,
                                             p.pregunta,
                                             p.puntos,
                                             h.alias habilidad,
                                             i.nombre insignia,
                                             pt.nombre tipo_pregunta
                                    from     actividad_pregunta ap,
                                             pregunta  p,
                                             habilidad h,
                                             insignia i,
                                             pregunta_tipo pt
                                    where    ap.id_actividad = ? and
                                             ap.id_pregunta = p.id_pregunta and
                                             p.id_habilidad = h.id_habilidad and
                                             p.id_insignia = i.id_insignia and
                                             p.id_pregunta_tipo = pt.id_pregunta_tipo 
                                             order by p.id_pregunta asc`,
                [resp[0].id_actividad]);


            console.log(`resp2 : ${JSON.stringify(resp2)}`);

            let preguntas = [];

            for (let list of resp2) {

                let aux = {
                    id_pregunta: list.id_pregunta,
                    pregunta: list.pregunta,
                    puntos: list.puntos,
                    habilidad: list.habilidad,
                    insignia: list.insignia,
                    tipo_pregunta: list.tipo_pregunta,
                    respuestas: {}
                };
                preguntas.push(aux);
            }

            for (let pregunta of preguntas) {

                resp3 = await pool.query(`select r.id_respuesta,
                                                 p.id_pregunta,
                                                 r.respuesta,
                                                 r.feedback,
                                                 r.correcta
                                    from         pregunta p,
                                                 respuesta  r
                            where                p.id_pregunta = ? and
                                                 p.id_pregunta = r.id_pregunta`,
                    [pregunta.id_pregunta]);

                console.log(`res3 : ${JSON.stringify(resp3)}`);


                let respuestas = [];

                for (let respuesta of resp3) {
                    let aux2 = {
                        id_respuesta: respuesta.id_respuesta,
                        respuesta: respuesta.respuesta,
                        feedback: respuesta.feedback,
                        correcta: respuesta.correcta
                    };
                    respuestas.push(aux2);
                }

                pregunta.respuestas = respuestas;
            }

            let response = {
                codigo: "200.pearson.0000",
                mensaje: "operacion exitosa",
                folio: uuidv4(),
                resultado: {
                    preguntas: preguntas
                }
            };

            res.json(response);
        } catch (err) {
            let dateEx = Date().toLocaleString();
            console.log(dateEx, " :", "lectura getPreguntas [Error]: ", err);
            res.status(403).json({ message: 'ERROR', date: dateEx, description: err });
        }
    }

}

export const ActividadController = new actividadController();