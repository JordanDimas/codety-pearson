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
            resp = await pool.query(`SELECT * FROM actividad where id_distribucion_escuela = ?`, [reqData.id_distribucion_escuela]);

            let actividad_lista = [];

            for (let list of resp) {
                let aux = {
                    id_actividad: list.id_actividad,
                    nombre: list.nombre,
                    fecha_Inicio: list.fecha_Inicio,
                    fecha_fin: list.fecha_fin,
                    bateria: list.bateria,
                    status_actividad: list.status_actividad
                }
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
}

export const ActividadController = new actividadController();