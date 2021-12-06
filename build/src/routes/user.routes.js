"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
const user_controller_1 = require("../controllers/user.controller");
const { isLogged } = require("../middleware/auth.middleware");
class usrRoutes {
    constructor() {
        this.router = express_1.Router();
        this.config();
    }
    config() {
        this.router.put('/avatar/update', isLogged, user_controller_1.UserController.updateAvatar);
        this.router.get('/avatar/get', isLogged, user_controller_1.UserController.getAvatar);
        this.router.get('/actividad/list', isLogged, user_controller_1.UserController.getActividadList);
        this.router.post('/actividad/sentimiento/insert', isLogged, user_controller_1.UserController.insertSentimientoActividad);
    }
}
const UsrRoutes = new usrRoutes();
exports.default = UsrRoutes.router;
