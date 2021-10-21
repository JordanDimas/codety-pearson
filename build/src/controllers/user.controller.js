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
exports.UserController = void 0;
const database_1 = __importDefault(require("../database"));
const uuid_1 = require("uuid");
class userController {
    updateAvatar(req, res) {
        return __awaiter(this, void 0, void 0, function* () {
            console.log(Date().toLocaleString(), " :", "User updateAvatar: ", req.body);
            const update = req.body;
            let resp;
            try {
                resp = yield database_1.default.query('UPDATE usuario SET id_avatar = ? WHERE id_usuario = ?', [[update.id_avatar], [update.id_usuario]]);
                console.log(`resp : ${JSON.stringify(resp)}`);
                let response = {
                    codigo: "200.pearson.0000",
                    mensaje: "operacion exitosa",
                    folio: uuid_1.v4(),
                    resultado: {
                        mensaje: "registro actualizado"
                    }
                };
                res.json(response);
            }
            catch (err) {
                let dateEx = Date().toLocaleString();
                console.log(dateEx, " :", "User updateAvatar [Error]: ", err);
                res.status(403).json({ message: 'ERROR', date: dateEx, description: err });
            }
        });
    }
    getAvatar(req, res) {
        return __awaiter(this, void 0, void 0, function* () {
            console.log(Date().toLocaleString(), " :", "User getAvatar: ", req.query);
            const data = req.query;
            let resp;
            try {
                resp = yield database_1.default.query(`select a.id_avatar,
                                            a.nombre,
                                            a.descripcion,
                                            a.path
                                    from    avatar a,
                                            usuario  u
                                    where   u.id_usuario = ? and
                                            a.id_avatar = u.id_avatar`, [data.id_usuario]);
                console.log(`resp : ${JSON.stringify(resp)}`);
                let response = {
                    codigo: "200.pearson.0000",
                    mensaje: "operacion exitosa",
                    folio: uuid_1.v4(),
                    resultado: {
                        avatar: resp[0]
                    }
                };
                res.json(response);
            }
            catch (err) {
                let dateEx = Date().toLocaleString();
                console.log(dateEx, " :", "User getAvatar [Error]: ", err);
                res.status(403).json({ message: 'ERROR', date: dateEx, description: err });
            }
        });
    }
    insertSentimientoActividad(req, res) {
        return __awaiter(this, void 0, void 0, function* () {
            console.log(Date().toLocaleString(), " :", "User insertSentimientoActividad: ", req.body);
            const bodyData = req.body;
            let resp;
            try {
                resp = yield database_1.default.query(`INSERT into sentimiento_actividad  (   reg_status,
                                                                            created_by,
                                                                            created_date,
                                                                            last_update_by,
                                                                            id_sentimiento_inicio,
                                                                            id_sentimiento_fin,
                                                                            id_actividad_inscripcion
                                                            )   values  (   'activo',
                                                                            'developer',
                                                                            '2021-10-10',
                                                                            'developer',
                                                                            ?,
                                                                            ?,
                                                                            ?
                                                                        )`, [
                    [bodyData.id_sentimiento_inicio],
                    [bodyData.id_sentimiento_fin],
                    [bodyData.id_actividad_inscripcion]
                ]);
                console.log(`resp : ${JSON.stringify(resp)}`);
                let response = {
                    codigo: "200.pearson.0000",
                    mensaje: "operacion exitosa",
                    folio: uuid_1.v4(),
                    resultado: {
                        mensaje: "registro creado",
                        id_sentimiento_actividad: resp.insertId
                    }
                };
                res.json(response);
            }
            catch (err) {
                let dateEx = Date().toLocaleString();
                console.log(dateEx, " :", "User insertSentimientoActividad [Error]: ", err);
                res.status(403).json({ message: 'ERROR', date: dateEx, description: err });
            }
        });
    }
    getActividadList(req, res) {
        return __awaiter(this, void 0, void 0, function* () {
            console.log(Date().toLocaleString(), " :", "User getActividadList: ", req.query);
            const reqData = req.query;
            let resp;
            try {
                resp = yield database_1.default.query(`SELECT a.id_actividad,
                                                a.nombre,
                                                a.fecha_inicio,
                                                a.fecha_fin,
                                                a.status_actividad
                                        FROM    actividad_inscripcion  ai,
                                                actividad a
                                        where   a.id_actividad = ai.id_actividad and
                                                id_inscripcion = ?
                                     `, [reqData.id_inscripcion]);
                let lista = [];
                for (let list of resp) {
                    let aux = {
                        id_actividad: list.id_actividad,
                        nombre: list.nombre,
                        fecha_inicio: list.fecha_inicio,
                        fecha_fin: list.fecha_fin,
                        estatus_actividad: list.status_actividad
                    };
                    lista.push(aux);
                }
                console.log(`resp : ${JSON.stringify(resp)}`);
                const response = {
                    codigo: "200.pearson.0000",
                    mensaje: "operacion exitosa",
                    folio: uuid_1.v4(),
                    resultado: { lista }
                };
                res.json(response);
            }
            catch (err) {
                let dateEx = Date().toLocaleString();
                console.log(dateEx, " :", "User getActividadList [Error]: ", err);
                res.status(403).json({ message: 'ERROR', date: dateEx, description: err });
            }
        });
    }
}
exports.UserController = new userController();
