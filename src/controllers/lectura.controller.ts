import { Request, Response } from "express";
import pool from '../database';
import jwt from 'jsonwebtoken';
import { v4 as uuidv4 } from 'uuid';
require('dotenv').config({ path: '../../../.env' });

class lecturaController {

    public async getLecturaList(req: Request, res: Response): Promise<void> {
        console.log(Date().toLocaleString(), " :", "lectura list: ", req.body);
        const usuario = req.body;
        let resp: any;
        try {
            resp = await pool.query(`SELECT * FROM lectura`);

            let lectura_lista = [];

            for(let lectura of resp){
               let aux = {
                    id_lectura: lectura.id_lectura, 
                    nombre: lectura.nombre,
                    descripcion: lectura.descripcion,
                    texto: lectura.texto
                }
                lectura_lista.push(aux);
            }

            console.log(`resp : ${JSON.stringify(resp)}`);

                const response = {
                    codigo: "200.pearson.0000",
                    mensaje: "operacion exitosa",
                    folio: uuidv4(),
                    resultado: {lectura_lista}
                };

                res.json(response);
        } catch (err) {
            let dateEx = Date().toLocaleString();
            console.log(dateEx, " :", "lectura list [Error]: ", err);
            res.status(403).json({ message: 'ERROR', date: dateEx, description: err });
        }
    }


}



export const LecturaController = new lecturaController();