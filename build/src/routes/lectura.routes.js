"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
//
const lectura_controller_1 = require("../controllers/lectura.controller");
const { isLogged } = require("../middleware/auth.middleware");
class lecturaRoutes {
    constructor() {
        this.router = express_1.Router();
        this.config();
    }
    config() {
        this.router.get('/list', isLogged, lectura_controller_1.LecturaController.getLecturaList);
        this.router.get('/search', isLogged, lectura_controller_1.LecturaController.getLecturaSearch);
    }
}
const LecturaRoutes = new lecturaRoutes();
exports.default = LecturaRoutes.router;
