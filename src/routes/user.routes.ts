import { Router } from "express";
import { UserController } from "../controllers/user.controller";

class usrRoutes{
    public router : Router = Router();

    constructor(){
        this.config();
    }

    config():void{
        this.router.put('/avatar/update',UserController.updateAvatar);
        this.router.get('/actividad/list',UserController.getActividadList);
        this.router.post('/actividad/sentimiento/insert',UserController.insertSentimientoActividad);
        
    }
}

const UsrRoutes = new usrRoutes();

export default UsrRoutes.router;