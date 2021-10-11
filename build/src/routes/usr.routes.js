"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
const usr_controller_1 = require("../controllers/usr.controller");
//controller
//import {usrController} from '';
class usrRoutes {
    constructor() {
        this.router = express_1.Router();
        this.config();
    }
    config() {
        this.router.get('/login', usr_controller_1.UsrController.get);
    }
}
const UsrRoutes = new usrRoutes();
exports.default = UsrRoutes.router;
