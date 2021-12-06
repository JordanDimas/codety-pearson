import { Router } from "express";
import { UserController } from "../controllers/user.controller";
const {isLogged} = require("../middleware/auth.middleware");

class usrRoutes{
    public router : Router = Router();

    constructor(){
        this.config();
    }

    config():void{
        this.router.put('/avatar/update',isLogged,UserController.updateAvatar);
        this.router.get('/avatar/get',isLogged,UserController.getAvatar);

        this.router.get('/actividad/list',isLogged,UserController.getActividadList);
        this.router.post('/actividad/sentimiento/insert',isLogged,UserController.insertSentimientoActividad);


        
        
    }
}

const UsrRoutes = new usrRoutes();

export default UsrRoutes.router;