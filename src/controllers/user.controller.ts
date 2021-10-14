import { Request, Response } from "express";
import pool from '../database';
import { v4 as uuidv4 } from 'uuid';

class userController {

    public async updateUserAvatar(req: Request, res: Response): Promise<void> {
        console.log(Date().toLocaleString(), " :", "User updateUserAvatar: ", req.body);
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
            console.log(dateEx, " :", "User updateUserAvatar [Error]: ", err);
            res.status(403).json({ message: 'ERROR', date: dateEx, description: err });
        }
    }

}

export const UserController = new userController();