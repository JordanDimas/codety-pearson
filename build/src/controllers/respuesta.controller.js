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
exports.RespuestaController = void 0;
const database_1 = __importDefault(require("../database"));
const uuid_1 = require("uuid");
require('dotenv').config({ path: '../../../.env' });
class respuestaController {
    setRespuesta(req, res) {
        return __awaiter(this, void 0, void 0, function* () {
            console.log(Date().toLocaleString(), " :", "respuestaController setRespuesta: ", req.body);
            const reqBody = req.body;
            let resp;
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
                resp = yield database_1.default.query(qry);
                console.log(`resp : ${JSON.stringify(resp)}`);
                const response = {
                    codigo: '200.pearson.0000',
                    mensaje: 'operacion exitosa',
                    folio: uuid_1.v4(),
                    resultado: {
                        msg: 'respuesta guardada'
                    }
                };
                res.json(response);
            }
            catch (err) {
                let dateEx = Date().toLocaleString();
                console.log(dateEx, " :", "User login [Error]: ", err);
                res.status(403).json({ message: 'ERROR', date: dateEx, description: err });
            }
        });
    }
}
exports.RespuestaController = new respuestaController();
