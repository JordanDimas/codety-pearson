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
exports.SessionController = void 0;
const database_1 = __importDefault(require("../../database"));
const jsonwebtoken_1 = __importDefault(require("jsonwebtoken"));
const uuid_1 = require("uuid");
require('dotenv').config({ path: '../../../.env' });
class sessionController {
    login(req, res) {
        return __awaiter(this, void 0, void 0, function* () {
            console.log(Date().toLocaleString(), " :", "User login: ", req.body);
            const usuario = req.body;
            let resp;
            try {
                resp = yield database_1.default.query(`SELECT u.nombre,
                                            u.apellido_paterno apelllidoPaterno,
                                            u.apellido_materno apellidoMaterno,
                                            u.nombre_usuario nombreUsuario,
                                            r.nombre rol, 
                                            c.nombre ciudad,
                                            p.nombre pais,
                                            gra.nombre grado,
                                            gru.grupo ,
                                            ce.año,
                                            ce.ciclo
                                    FROM    usuario u,
                                            rol r ,
                                            inscripcion i,
                                            ciudad c,
                                            pais p,
                                            grado gra,
                                            grupo gru,
                                            ciclo_escolar ce
                                    WHERE   r.id_rol = u.id_rol and
                                            u.id_usuario = i.id_usuario and
                                            i.id_ciudad = c.id_ciudad and
                                            i.id_grado = gra.id_grado and
                                            i.id_grupo = gru.id_grupo and
                                            i.id_ciclo_escolar = ce.id_ciclo_escolar and
                                            p.id_pais = c.id_pais and
                                            u.nombre_usuario = ? and 
                                            u.contraseña = ?`, [[req.body.nombreUsuario], [req.body.contraseña]]);
                console.log(`resp : ${JSON.stringify(resp)}`);
                if (resp.length > 0) {
                    const token = generateAccesToken(usuario);
                    console.log("token: ", token);
                    const response = {
                        codigo: "200.pearson.0000",
                        mensaje: "operacion exitosa",
                        folio: uuid_1.v4(),
                        resultado: {
                            userToken: token,
                            usuario: resp[0]
                        }
                    };
                    res.json(response);
                }
                else {
                    res.status(404).json({
                        codigo: "404.pearson.0000",
                        mensaje: "usuario no encontrado",
                        folio: uuid_1.v4(),
                        resultado: {}
                    });
                }
            }
            catch (err) {
                let dateEx = Date().toLocaleString();
                console.log(dateEx, " :", "User login [Error]: ", err);
                res.status(403).json({ message: 'ERROR', date: dateEx, description: err });
            }
        });
    }
}
const generateAccesToken = function (usuario) {
    console.log("generando token");
    return jsonwebtoken_1.default.sign(usuario, "pearson2021#@", { expiresIn: '1d' });
};
exports.SessionController = new sessionController();
