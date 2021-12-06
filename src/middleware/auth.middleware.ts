import { Router } from 'express';
import jwt from 'jsonwebtoken';
import { v4 as uuidv4 } from 'uuid';

const router: Router = Router();

let isLogged = async (req: any, res: any, next: any) => {

    console.log(Date().toLocaleString(), ": token :", req.headers['x-token']);
    let token = req.headers['x-token'];

    if (token) {
        jwt.verify(token, 'pearson2021#@', function (err: any, decoded: any) {
            if (err) {
                return res.status(400).json({
                    codigo: "400.pearson.0000",
                    mensaje: "operacion fallida",
                    folio: uuidv4(),
                    resultado: { detalle: 'token invalido' }
                });
            } else {
                req.decoded = decoded;
                console.log("decoded: ", decoded);
                next();
            }
        });
    } else {
        return res.status(400).json({
            codigo: "400.pearson.0000",
            mensaje: "operacion fallida",
            folio: uuidv4(),
            resultado: { detalle: 'token invalido' }
        });
    }
};


module.exports = {
    isLogged
};