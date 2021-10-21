import { Router } from "express";
//
import { LecturaController } from '../controllers/lectura.controller';

class lecturaRoutes{
    public router : Router = Router();

    constructor(){
        this.config();
    }

    config():void{
        this.router.get('/list',LecturaController.getLecturaList);

    }
}

const LecturaRoutes = new lecturaRoutes();

export default LecturaRoutes.router;