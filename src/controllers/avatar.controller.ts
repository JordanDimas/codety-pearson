import { Request, Response } from "express";
import pool from '../database';
import jwt from 'jsonwebtoken';
import { v4 as uuidv4 } from 'uuid';
require('dotenv').config({ path: '../../../.env' });

class avatarController {

    public async getAvatarList(req: Request, res: Response): Promise<void> {
        console.log(Date().toLocaleString(), " :", "User login: ", req.body);
        const usuario = req.body;
        let resp: any;
        try {
            resp = await pool.query(`SELECT * FROM avatar`);

            let avatar_lista = [];

            for(let avatar of resp){
               let aux = {
                    id_avatar: avatar.id_avatar, 
                    nombre: avatar.nombre,
                    descripcion: avatar.descripcion,
                    path: avatar.path
                }
                avatar_lista.push(aux);
            }

            console.log(`resp : ${JSON.stringify(resp)}`);

                const response = {
                    codigo: "200.pearson.0000",
                    mensaje: "operacion exitosa",
                    folio: uuidv4(),
                    resultado: {avatar_lista}
                };

                res.json(response);
        } catch (err) {
            let dateEx = Date().toLocaleString();
            console.log(dateEx, " :", "User login [Error]: ", err);
            res.status(403).json({ message: 'ERROR', date: dateEx, description: err });
        }
    }
}

export const AvatarController = new avatarController();