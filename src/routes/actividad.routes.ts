import { Router } from "express";
//
import { ActividadController } from '../controllers/actividad.controller';
const {isLogged} = require("../middleware/auth.middleware");

class actividadRoutes{
    public router : Router = Router();

    constructor(){
        this.config();
    }

    config():void{
        this.router.get('/list',isLogged,ActividadController.getActividadList);
        this.router.get('/lectura/get',isLogged,ActividadController.getLectura);
        this.router.get('/preguntas/get',isLogged,ActividadController.getPreguntas);

        

    }
}

const ActividadRoutes = new actividadRoutes();

export default ActividadRoutes.router;