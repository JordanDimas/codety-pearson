import { Router } from "express";
//
import { SentimientosController } from '../controllers/sentimientos.controller';
const {isLogged} = require("../middleware/auth.middleware");

class sentimientosRoutes{
    public router : Router = Router();

    constructor(){
        this.config();
    }

    config():void{
        this.router.get('/list',isLogged,SentimientosController.getSentimientosList);

    }
}

const SentimientosRoutes = new sentimientosRoutes();

export default SentimientosRoutes.router;