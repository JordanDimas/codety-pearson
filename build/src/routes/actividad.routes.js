"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
//
const actividad_controller_1 = require("../controllers/actividad.controller");
class actividadRoutes {
    constructor() {
        this.router = express_1.Router();
        this.config();
    }
    config() {
        this.router.get('/list', actividad_controller_1.ActividadController.getActividadList);
    }
}
const ActividadRoutes = new actividadRoutes();
exports.default = ActividadRoutes.router;
