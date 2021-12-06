import { Router } from "express";
//
import { SessionController } from '../controllers/session.controller';
const {isLogged} = require("../middleware/auth.middleware");

class usrRoutes{
    public router : Router = Router();

    constructor(){
        this.config();
    }


    config():void{
        this.router.post('/login',SessionController.login);

    }
}

const UsrRoutes = new usrRoutes();

export default UsrRoutes.router;
