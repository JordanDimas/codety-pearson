import { Request, Response } from "express";
import pool from '../../database';

class usrController{

    public async get(req:Request,res: Response): Promise<void>{
            console.log(pool);
        try{
            res.json({ msg: 'se invoco el metodo get usr' });
        }catch(err){
            res.status(403).json({  msg: 'Error: se invoco el metodo get usr'  });
        }
    }

}

export const UsrController = new usrController();