import { Router } from "express";
//
import { SessionController } from '../../controllers/session/session.controller';
//
import { UsrController } from "../../controllers/user/usr.controller";


//controller
//import {usrController} from '';


class usrRoutes{
    public router : Router = Router();

    constructor(){
        this.config();
    }


    config():void{
        this.router.get('/login',SessionController.login);

    }
}

const UsrRoutes = new usrRoutes();

export default UsrRoutes.router;