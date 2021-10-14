import { Router } from "express";
//
import { AvatarController } from '../controllers/avatar.controller';

class usrRoutes{
    public router : Router = Router();

    constructor(){
        this.config();
    }

    config():void{
        this.router.get('/list',AvatarController.getAvatarList);

    }
}

const UsrRoutes = new usrRoutes();

export default UsrRoutes.router;