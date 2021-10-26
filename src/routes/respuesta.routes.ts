import { Router } from "express";
//
import { RespuestaController } from '../controllers/respuesta.controller';

class respuestaRoutes{
    public router : Router = Router();

    constructor(){
        this.config();
    }

    config():void{
        this.router.post('/actividad/set',RespuestaController.setRespuesta);

    }
    
}

const RespuestaRoutes = new respuestaRoutes();

export default RespuestaRoutes.router;