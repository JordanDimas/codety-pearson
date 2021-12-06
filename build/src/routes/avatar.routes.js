"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
//
const avatar_controller_1 = require("../controllers/avatar.controller");
const { isLogged } = require("../middleware/auth.middleware");
class avatarRoutes {
    constructor() {
        this.router = express_1.Router();
        this.config();
    }
    config() {
        this.router.get('/list', isLogged, avatar_controller_1.AvatarController.getAvatarList);
    }
}
const AvatarRoutes = new avatarRoutes();
exports.default = AvatarRoutes.router;
