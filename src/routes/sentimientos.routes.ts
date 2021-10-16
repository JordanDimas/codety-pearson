import { Router } from "express";
//
import { SentimientosController } from '../controllers/sentimientos.controller';

class sentimientosRoutes{
    public router : Router = Router();

    constructor(){
        this.config();
    }

    config():void{
        this.router.get('/list',SentimientosController.getSentimientosList);

    }
}

const SentimientosRoutes = new sentimientosRoutes();

export default SentimientosRoutes.router;