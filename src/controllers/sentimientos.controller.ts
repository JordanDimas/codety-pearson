import { Request, Response } from "express";
import pool from '../database';
import jwt from 'jsonwebtoken';
import { v4 as uuidv4 } from 'uuid';
require('dotenv').config({ path: '../../../.env' });

class sentimientosController {

    public async getSentimientosList(req: Request, res: Response): Promise<void> {
        console.log(Date().toLocaleString(), " :", "User login: ", req.body);
        const usuario = req.body;
        let resp: any;
        try {
            resp = await pool.query(`SELECT * FROM sentimiento`);

            let sentimientos_lista = [];

            for(let sentimiento of resp){
               let aux = {
                    id_sentimiento: sentimiento.id_sentimiento, 
                    nombre: sentimiento.nombre,
                    descripcion: sentimiento.descripcion
                }
                sentimientos_lista.push(aux);
            }

            console.log(`resp : ${JSON.stringify(resp)}`);

                const response = {
                    codigo: "200.pearson.0000",
                    mensaje: "operacion exitosa",
                    folio: uuidv4(),
                    resultado: {sentimientos_lista}
                };

                res.json(response);
        } catch (err) {
            let dateEx = Date().toLocaleString();
            console.log(dateEx, " :", "User login [Error]: ", err);
            res.status(403).json({ message: 'ERROR', date: dateEx, description: err });
        }
    }
}

export const SentimientosController = new sentimientosController();