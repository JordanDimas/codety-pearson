import { Router } from "express";
//
import { AvatarController } from '../controllers/avatar.controller';

class avatarRoutes{
    public router : Router = Router();

    constructor(){
        this.config();
    }

    config():void{
        this.router.get('/list',AvatarController.getAvatarList);

    }
}

const AvatarRoutes = new avatarRoutes();

export default AvatarRoutes.router;