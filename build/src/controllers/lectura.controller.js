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
exports.LecturaController = void 0;
const database_1 = __importDefault(require("../database"));
const uuid_1 = require("uuid");
require('dotenv').config({ path: '../../../.env' });
class lecturaController {
    getLecturaList(req, res) {
        return __awaiter(this, void 0, void 0, function* () {
            console.log(Date().toLocaleString(), " :", "lectura list: ", req.body);
            const usuario = req.body;
            let resp;
            try {
                resp = yield database_1.default.query(`SELECT * FROM lectura`);
                let lectura_lista = [];
                for (let lectura of resp) {
                    let aux = {
                        id_lectura: lectura.id_lectura,
                        nombre: lectura.nombre,
                        descripcion: lectura.descripcion,
                        texto: lectura.texto
                    };
                    lectura_lista.push(aux);
                }
                console.log(`resp : ${JSON.stringify(resp)}`);
                const response = {
                    codigo: "200.pearson.0000",
                    mensaje: "operacion exitosa",
                    folio: uuid_1.v4(),
                    resultado: { lectura_lista }
                };
                res.json(response);
            }
            catch (err) {
                let dateEx = Date().toLocaleString();
                console.log(dateEx, " :", "lectura list [Error]: ", err);
                res.status(403).json({ message: 'ERROR', date: dateEx, description: err });
            }
        });
    }
    getLecturaSearch(req, res) {
        return __awaiter(this, void 0, void 0, function* () {
            console.log(Date().toLocaleString(), " :", "getLecturaSearch : ", req.query);
            const request = req.query;
            let resp;
            try {
                let qry;
                qry = `select l.id_lectura,
                            l.nombre,
                            cl.nombre categoria
                    from    lectura l,
                            categoria_lectura cl,
                            lectura_grado lg,
                            grado g
                    where   l.id_lectura = lg.id_lectura and
                            lg.id_grado = g.id_grado and 
                            l.id_categoria_lectura = cl.id_categoria_lectura and (
                            g.nombre like '%${request.grado}%' and
                            l.nombre like '%${request.nombre}%' and
                            cl.nombre like '%${request.categoria}%') order by l.nombre`;
                /* qry = `select l.id_lectura,
                                 l.nombre,
                                 cl.nombre categoria
                         from    lectura l,
                                 categoria_lectura cl
                         where  l.id_categoria_lectura = cl.id_categoria_lectura and
                                 l.nombre like '%${request.nombre}%' and
                                 cl.nombre like '%${request.categoria}%' order by l.nombre`*/
                console.log(qry);
                resp = yield database_1.default.query(qry);
                console.log(`resp : ${JSON.stringify(resp)}`);
                const response = {
                    codigo: "200.pearson.0000",
                    mensaje: "operacion exitosa",
                    folio: uuid_1.v4(),
                    resultado: { resp }
                };
                res.json(response);
            }
            catch (err) {
                let dateEx = Date().toLocaleString();
                console.log(dateEx, " :", "getLecturaSearch  [Error]: ", err);
                res.status(403).json({ message: 'ERROR', date: dateEx, description: err });
            }
        });
    }
}
exports.LecturaController = new lecturaController();
