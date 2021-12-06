import { Router } from "express";
//
import { LecturaController } from '../controllers/lectura.controller';
const {isLogged} = require("../middleware/auth.middleware");
class lecturaRoutes{
    public router : Router = Router();

    constructor(){
        this.config();
    }

    config():void{
        this.router.get('/list',isLogged,LecturaController.getLecturaList);

    }
}

const LecturaRoutes = new lecturaRoutes();

export default LecturaRoutes.router;