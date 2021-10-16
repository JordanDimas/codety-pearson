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

    }
}

const ActividadRoutes = new actividadRoutes();

export default ActividadRoutes.router;