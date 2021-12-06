import { Router } from "express";
//
import { RespuestaController } from '../controllers/respuesta.controller';
const {isLogged} = require("../middleware/auth.middleware");
class respuestaRoutes{
    public router : Router = Router();

    constructor(){
        this.config();
    }

    config():void{
        this.router.post('/actividad/set',isLogged,RespuestaController.setRespuesta);

    }
    
}

const RespuestaRoutes = new respuestaRoutes();

export default RespuestaRoutes.router;