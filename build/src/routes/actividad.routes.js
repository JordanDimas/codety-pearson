"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
//
const actividad_controller_1 = require("../controllers/actividad.controller");
const { isLogged } = require("../middleware/auth.middleware");
class actividadRoutes {
    constructor() {
        this.router = express_1.Router();
        this.config();
    }
    config() {
        this.router.get('/list', isLogged, actividad_controller_1.ActividadController.getActividadList);
        this.router.get('/lectura/get', isLogged, actividad_controller_1.ActividadController.getLectura);
        this.router.get('/preguntas/get', isLogged, actividad_controller_1.ActividadController.getPreguntas);
    }
}
const ActividadRoutes = new actividadRoutes();
exports.default = ActividadRoutes.router;
