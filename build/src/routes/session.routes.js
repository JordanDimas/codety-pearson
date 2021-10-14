"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
//
const session_controller_1 = require("../controllers/session.controller");
class usrRoutes {
    constructor() {
        this.router = express_1.Router();
        this.config();
    }
    config() {
        this.router.post('/login', session_controller_1.SessionController.login);
    }
}
const UsrRoutes = new usrRoutes();
exports.default = UsrRoutes.router;
