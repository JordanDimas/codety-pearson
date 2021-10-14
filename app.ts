import express,{application, Application} from 'express';
import morgan from 'morgan';
import cors from 'cors';

//errorHandler7
const errorHandler = require('./src/helpers/errorhandler.helper');

//routes
import UserRoutes from './src/routes/user.routes';
import SesionRoutes from './src/routes/session.routes';
import AvatarRoutes from './src/routes/avatar.routes';

class Server{

    public app:Application;

    constructor(){
        this.app=express();
        this.config();
        this.routes();
    }

    config(): void{
        this.app.set('port',process.env.PORT || 3000);
        this.app.use(morgan(' status: :status | metodo: :method | fecha: :date[iso] | path: :url | ejecucion: :total-time[3] ms '));
        this.app.use(cors());
        this.app.use(express.json());
        this.app.use(express.urlencoded({ extended: false }));
    }

    routes(): void{
        //usr
        this.app.use('/v1/session',SesionRoutes);
        this.app.use('/v1/avatar',AvatarRoutes);
        this.app.use('/v1/user',UserRoutes);

        //Error handler
        this.app.use(errorHandler.internalServerError);
        this.app.use(errorHandler.notFound);
    }

    start(): void{
        this.app.listen(this.app.get('port'),() => {
            console.log(Date().toLocaleString()," :",'Server on port',this.app.get('port') );
        });
    }
}

const server = new Server();

server.start();