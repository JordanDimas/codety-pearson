"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.PreguntasController = void 0;
const database_1 = __importDefault(require("../database"));
const uuid_1 = require("uuid");
require('dotenv').config({ path: '../../../.env' });
class preguntasController {
    getPreguntasActividad(req, res) {
        return __awaiter(this, void 0, void 0, function* () {
            console.log(Date().toLocaleString(), " :", "preguntas getLectura: ", req.query);
            const data = req.query;
            let resp;
            let resp2;
            let resp3;
            try {
                resp = yield database_1.default.query(`select l.id_lectura,
                                            l.nombre,
                                            l.descripcion,
                                            l.texto
                                    from    lectura l,
                                            actividad  a
                                    where   a.id_actividad = ? and
                                            l.id_lectura = a.id_lectura`, [data.id_actividad]);
                console.log(`resp : ${JSON.stringify(resp)}`);
                resp2 = yield database_1.default.query(`select p.id_pregunta,
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
                                             h.id_insignia = i.id_insignia and`, [resp.id_lectura]);
                console.log(`resp : ${JSON.stringify(resp2)}`);
                let preguntas = [];
                for (let list of resp2) {
                    let aux = {
                        id_pregunta: list.id_pregunta,
                        pregunta: list.pregunta,
                        puntos: list.puntos,
                        habilidad: list.habilidad,
                        insignia: list.insignia,
                        respuestas: {}
                    };
                    preguntas.push(aux);
                }
                for (let pregunta of preguntas) {
                    resp3 = yield database_1.default.query(`select r.id_respuesta,
                                                 p.id_pregunta,
                                                 r.respuesta,
                                                 r.feedback,
                                                 r.correcta,
                                    from         pregunta p,
                                                 respuesta  r
                            where                p.id_pregunta = ? and
                                                 p.id_pregunta = r.id_pregunta`, [resp.id_pregunta]);
                    console.log(`resp : ${JSON.stringify(resp3)}`);
                    let respuestas = [];
                    for (let respuesta of resp3) {
                        let aux2 = {
                            id_respuesta: respuesta.id_respuesta,
                            id_pregunta: respuesta.id_pregunta,
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
                    folio: uuid_1.v4(),
                    resultado: {
                        preguntas: preguntas
                    }
                };
                res.json(response);
            }
            catch (err) {
                let dateEx = Date().toLocaleString();
                console.log(dateEx, " :", "lectura getLectura [Error]: ", err);
                res.status(403).json({ message: 'ERROR', date: dateEx, description: err });
            }
        });
    }
}
exports.PreguntasController = new preguntasController();
