import { Request, Response } from "express";
import pool from '../database';
import jwt from 'jsonwebtoken';
import { v4 as uuidv4 } from 'uuid';
require('dotenv').config({ path: '../../../.env' });

class respuestaController {

    public async setRespuesta(req: Request, res: Response): Promise<void> {
        console.log(Date().toLocaleString(), " :", "respuestaController setRespuesta: ", req.body);
        const reqBody = req.body;
        let resp: any;
        try {

        let qry = `INSERT into respuesta_actividad (respuesta_usuario,
                                                    puntos,
                                                    intento,
                                                    reg_status,
                                                    created_by,
                                                    created_date,
                                                    last_update_by,
                                                    last_update_date,
                                                    id_pregunta_respuesta,
                                                    id_actividad_inscripcion,
                                                    id_respuesta,
                                                    id_pregunta
                                        ) VALUES ( '${reqBody.respuesta_usuario}',
                                                    ${reqBody.puntos},
                                                    ${reqBody.intento},
                                                    'activo',
                                                    'developer',
                                                    '2021-10-10',
                                                    'developer',
                                                    '2021-10-10',
                                                    1,
                                                    ${reqBody.id_actividad_inscripcion},
                                                    ${reqBody.id_respuesta},
                                                    ${reqBody.id_pregunta})`;

            resp = await pool.query(qry);

            console.log(`resp : ${JSON.stringify(resp)}`);

                const response = {
                    codigo: '200.pearson.0000',
                    mensaje: 'operacion exitosa',
                    folio: uuidv4(),
                    resultado: {
                        msg: 'respuesta guardada'
                    }
                };

                res.json(response);
        } catch (err) {
            let dateEx = Date().toLocaleString();
            console.log(dateEx, " :", "User login [Error]: ", err);
            res.status(403).json({ message: 'ERROR', date: dateEx, description: err });
        }
    }
}

export const RespuestaController = new respuestaController();