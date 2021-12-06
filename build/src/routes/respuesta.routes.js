"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
//
const respuesta_controller_1 = require("../controllers/respuesta.controller");
const { isLogged } = require("../middleware/auth.middleware");
class respuestaRoutes {
    constructor() {
        this.router = express_1.Router();
        this.config();
    }
    config() {
        this.router.post('/actividad/set', isLogged, respuesta_controller_1.RespuestaController.setRespuesta);
    }
}
const RespuestaRoutes = new respuestaRoutes();
exports.default = RespuestaRoutes.router;
