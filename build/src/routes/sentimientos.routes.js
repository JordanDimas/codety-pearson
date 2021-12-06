"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
//
const sentimientos_controller_1 = require("../controllers/sentimientos.controller");
const { isLogged } = require("../middleware/auth.middleware");
class sentimientosRoutes {
    constructor() {
        this.router = express_1.Router();
        this.config();
    }
    config() {
        this.router.get('/list', isLogged, sentimientos_controller_1.SentimientosController.getSentimientosList);
    }
}
const SentimientosRoutes = new sentimientosRoutes();
exports.default = SentimientosRoutes.router;
