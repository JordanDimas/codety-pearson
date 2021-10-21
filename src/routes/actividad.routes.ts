import { Router } from "express";
//
import { ActividadController } from '../controllers/actividad.controller';

class actividadRoutes{
    public router : Router = Router();

    constructor(){
        this.config();
    }

    config():void{
        this.router.get('/list',ActividadController.getActividadList);
        this.router.get('/lectura/get',ActividadController.getLectura);
        this.router.get('/preguntas/get',ActividadController.getPreguntas);

        

    }
}

const ActividadRoutes = new actividadRoutes();

export default ActividadRoutes.router;