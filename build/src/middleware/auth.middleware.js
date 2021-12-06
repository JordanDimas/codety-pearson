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
const express_1 = require("express");
const jsonwebtoken_1 = __importDefault(require("jsonwebtoken"));
const uuid_1 = require("uuid");
const router = express_1.Router();
let isLogged = (req, res, next) => __awaiter(void 0, void 0, void 0, function* () {
    console.log(Date().toLocaleString(), ": token :", req.headers['x-token']);
    let token = req.headers['x-token'];
    if (token) {
        jsonwebtoken_1.default.verify(token, 'pearson2021#@', function (err, decoded) {
            if (err) {
                return res.status(400).json({
                    codigo: "400.pearson.0000",
                    mensaje: "operacion fallida",
                    folio: uuid_1.v4(),
                    resultado: { detalle: 'token invalido' }
                });
            }
            else {
                req.decoded = decoded;
                console.log("decoded: ", decoded);
                next();
            }
        });
    }
    else {
        return res.status(400).json({
            codigo: "400.pearson.0000",
            mensaje: "operacion fallida",
            folio: uuid_1.v4(),
            resultado: { detalle: 'token invalido' }
        });
    }
});
module.exports = {
    isLogged
};
