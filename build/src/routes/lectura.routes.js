"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
//
const lectura_controller_1 = require("../controllers/lectura.controller");
class lecturaRoutes {
    constructor() {
        this.router = express_1.Router();
        this.config();
    }
    config() {
        this.router.get('/list', lectura_controller_1.LecturaController.getLecturaList);
    }
}
const LecturaRoutes = new lecturaRoutes();
exports.default = LecturaRoutes.router;
