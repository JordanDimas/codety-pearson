import { Request, Response } from "express";
import pool from '../database';
import jwt from 'jsonwebtoken';
import { v4 as uuidv4 } from 'uuid';
require('dotenv').config({ path: '../../../.env' });

class preguntasController {
    public async getPreguntasActividad(req: Request, res: Response): Promise<void> {
        console.log(Date().toLocaleString(), " :", "preguntas getLectura: ", req.query);
        const data = req.query;
        let resp: any;
        let resp2: any;
        let resp3: any;
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
    
            resp2 = await pool.query(`select p.id_pregunta,
                                             p.pregunta,
                                             p.puntos
                                             h.alias habilidad,
                                             i.nombre insignia
                                    from     lectura_pregunta lp,
                                             pregunta  p,
                                             habilidad h,
                                             insignia i
                                    where    lp.id_lectura = ? and
                                             lp.id_pregunta = p.id_pregunta and
                                             p.id_habilidad = h.id_habilidad and
                                             h.id_insignia = i.id_insignia and`,
                                                [resp.id_lectura]);
    
    
            console.log(`resp : ${JSON.stringify(resp2)}`);
    
            let preguntas = [];
            
            for(let list of resp2){
    
                let aux = {
                    id_pregunta: list.id_pregunta, 
                    pregunta: list.pregunta,
                    puntos: list.puntos,
                    habilidad: list.habilidad,
                    insignia:  list.insignia,
                    respuestas: {}
                 }
                 preguntas.push(aux);
             }
    
             for(let pregunta of preguntas){
    
                resp3 = await pool.query(`select r.id_respuesta,
                                                 p.id_pregunta,
                                                 r.respuesta,
                                                 r.feedback,
                                                 r.correcta,
                                    from         pregunta p,
                                                 respuesta  r
                            where                p.id_pregunta = ? and
                                                 p.id_pregunta = r.id_pregunta`,
                                                       [resp.id_pregunta]);
    
                                console.log(`resp : ${JSON.stringify(resp3)}`);
    
    
                let respuestas = [];
    
                for(let respuesta of resp3){
                    let aux2 = {
                        id_respuesta: respuesta.id_respuesta,
                        id_pregunta: respuesta.id_pregunta,
                        respuesta: respuesta.respuesta,
                        feedback: respuesta.feedback,
                        correcta: respuesta.correcta
                    }
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
            }
    
            res.json(response);
        } catch (err) {
            let dateEx = Date().toLocaleString();
            console.log(dateEx, " :", "lectura getLectura [Error]: ", err);
            res.status(403).json({ message: 'ERROR', date: dateEx, description: err });
        }
    }
}

export const PreguntasController = new preguntasController();