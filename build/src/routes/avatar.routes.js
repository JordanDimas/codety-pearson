"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
//
const avatar_controller_1 = require("../controllers/avatar.controller");
class usrRoutes {
    constructor() {
        this.router = express_1.Router();
        this.config();
    }
    config() {
        this.router.get('/list', avatar_controller_1.AvatarController.getAvatarList);
    }
}
const UsrRoutes = new usrRoutes();
exports.default = UsrRoutes.router;
