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
exports.ActividadController = void 0;
const database_1 = __importDefault(require("../database"));
const uuid_1 = require("uuid");
require('dotenv').config({ path: '../../../.env' });
class actividadController {
    getActividadList(req, res) {
        return __awaiter(this, void 0, void 0, function* () {
            console.log(Date().toLocaleString(), " :", "User login: ", req.query);
            const reqData = req.query;
            let resp;
            try {
                resp = yield database_1.default.query(`SELECT * FROM actividad where id_distribucion_escuela = ?`, [reqData.id_distribucion_escuela]);
                let actividad_lista = [];
                for (let list of resp) {
                    let aux = {
                        id_actividad: list.id_actividad,
                        nombre: list.nombre,
                        fecha_Inicio: list.fecha_Inicio,
                        fecha_fin: list.fecha_fin,
                        bateria: list.bateria,
                        status_actividad: list.status_actividad
                    };
                    actividad_lista.push(aux);
                }
                console.log(`resp : ${JSON.stringify(resp)}`);
                const response = {
                    codigo: "200.pearson.0000",
                    mensaje: "operacion exitosa",
                    folio: uuid_1.v4(),
                    resultado: { actividad_lista }
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
exports.ActividadController = new actividadController();
