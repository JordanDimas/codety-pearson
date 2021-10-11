"use strict";

import { Request, Response } from "express";


const notFound = (req:Request, res:Response, next:any) =>{

    res.status(404).json({
        success: false,
        message: 'Requested Resource Not Found (404)'

    }).end();
}

  // Handle internal server errors
  const internalServerError = (err:any, req: Request, res:Response, next:any) => {
    console.log("internal server error: ",err);
    res.status(err.status || 500).json({
      message: err.message,
      errors: err
    }).end();
  };
  
  module.exports = {
    notFound,
    internalServerError
  }
  