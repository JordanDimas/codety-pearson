import { Router } from "express";
import { UserController } from "../controllers/user.controller";

class usrRoutes{
    public router : Router = Router();

    constructor(){
        this.config();
    }

    config():void{
        this.router.put('/avatar/update',UserController.updateUserAvatar);
    }
}

const UsrRoutes = new usrRoutes();

export default UsrRoutes.router;