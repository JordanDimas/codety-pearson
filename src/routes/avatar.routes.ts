import { Router } from "express";
//
import { AvatarController } from '../controllers/avatar.controller';
const {isLogged} = require("../middleware/auth.middleware");

class avatarRoutes{
    public router : Router = Router();

    constructor(){
        this.config();
    }

    config():void{
        this.router.get('/list',isLogged,AvatarController.getAvatarList);

    }
}

const AvatarRoutes = new avatarRoutes();

export default AvatarRoutes.router;