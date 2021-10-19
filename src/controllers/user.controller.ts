import { Request, Response } from "express";
import pool from '../database';
import { v4 as uuidv4 } from 'uuid';

class userController {

    public async updateAvatar(req: Request, res: Response): Promise<void> {
        console.log(Date().toLocaleString(), " :", "User updateAvatar: ", req.body);
        const update = req.body;
        let resp: any;
        try {
            resp = await pool.query('UPDATE usuario SET id_avatar = ? WHERE id_usuario = ?',
                [[update.id_avatar], [update.id_usuario]]);

            console.log(`resp : ${JSON.stringify(resp)}`);

            let response = {
                codigo: "200.pearson.0000",
                mensaje: "operacion exitosa",
                folio: uuidv4(),
                resultado: {
                    mensaje: "registro actualizado"
                }
            }

            res.json(response);
        } catch (err) {
            let dateEx = Date().toLocaleString();
            console.log(dateEx, " :", "User updateAvatar [Error]: ", err);
            res.status(403).json({ message: 'ERROR', date: dateEx, description: err });
        }
    }

    public async getAvatar(req: Request, res: Response): Promise<void> {
        console.log(Date().toLocaleString(), " :", "User getAvatar: ", req.query);
        const data = req.query;
        let resp: any;
        try {
            resp = await pool.query(`select a.id_avatar,
                                            a.nombre,
                                            a.descripcion,
                                            a.path
                                    from    avatar a,
                                            usuario  u
                                    where   u.id_usuario = ? and
                                            a.id_avatar = u.id_avatar`,
                                     [data.id_usuario]);


            console.log(`resp : ${JSON.stringify(resp)}`);

            let response = {
                codigo: "200.pearson.0000",
                mensaje: "operacion exitosa",
                folio: uuidv4(),
                resultado: {
                    avatar: resp[0]
                }
            }

            res.json(response);
        } catch (err) {
            let dateEx = Date().toLocaleString();
            console.log(dateEx, " :", "User getAvatar [Error]: ", err);
            res.status(403).json({ message: 'ERROR', date: dateEx, description: err });
        }
    }

    public async insertSentimientoActividad(req: Request, res: Response): Promise<void> {
        console.log(Date().toLocaleString(), " :", "User insertSentimientoActividad: ", req.body);
        const bodyData = req.body;
        let resp: any;

        try {
            resp = await pool.query(`INSERT into sentimiento_actividad  (   reg_status,
                                                                            created_by,
                                                                            created_date,
                                                                            last_update_by,
                                                                            id_sentimiento_inicio,
                                                                            id_sentimiento_fin,
                                                                            id_actividad_inscripcion
                                                            )   values  (   'activo',
                                                                            'developer',
                                                                            '2021-10-10',
                                                                            'developer',
                                                                            ?,
                                                                            ?,
                                                                            ?
                                                                        )`,
                                                                        [
                                                                            [bodyData.id_sentimiento_inicio],
                                                                            [bodyData.id_sentimiento_fin],
                                                                            [bodyData.id_actividad_inscripcion]
                                                                        ]
                                                                    );

            console.log(`resp : ${JSON.stringify(resp)}`);

            let response = {
                codigo: "200.pearson.0000",
                mensaje: "operacion exitosa",
                folio: uuidv4(),
                resultado: {
                    mensaje: "registro creado",
                    id_sentimiento_actividad: resp.insertId
                }
            }

            res.json(response);
        } catch (err) {
            let dateEx = Date().toLocaleString();
            console.log(dateEx, " :", "User insertSentimientoActividad [Error]: ", err);
            res.status(403).json({ message: 'ERROR', date: dateEx, description: err });
        }
    }

    public async getActividadList(req: Request, res: Response): Promise<void> {
        console.log(Date().toLocaleString(), " :", "User getActividadList: ", req.query);
        const reqData = req.query;
        let resp: any;
        try {
            resp = await pool.query(`SELECT ai.id_actividad_inscripcion,
                                                a.nombre,
                                                a.fecha_inicio,
                                                a.fecha_fin
                                        FROM    actividad_inscripcion  ai,
                                                actividad a
                                        where   a.id_actividad = ai.id_actividad and
                                                id_inscripcion = ?
                                     `, [reqData.id_inscripcion]);

            let lista = [];

            for (let list of resp) {
                let aux = {
                    id_actividad_inscripcion: list.id_actividad_inscripcion,
                    nombre: list.nombre,
                    fecha_inicio: list.fecha_inicio,
                    fecha_fin: list.fecha_fin
                }
                lista.push(aux);
            }

            console.log(`resp : ${JSON.stringify(resp)}`);

            const response = {
                codigo: "200.pearson.0000",
                mensaje: "operacion exitosa",
                folio: uuidv4(),
                resultado: { lista }
            };

            res.json(response);
        } catch (err) {
            let dateEx = Date().toLocaleString();
            console.log(dateEx, " :", "User getActividadList [Error]: ", err);
            res.status(403).json({ message: 'ERROR', date: dateEx, description: err });
        }
    }



}

export const UserController = new userController();