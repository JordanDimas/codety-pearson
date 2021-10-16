"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = __importDefault(require("express"));
const morgan_1 = __importDefault(require("morgan"));
const cors_1 = __importDefault(require("cors"));
//errorHandler7
const errorHandler = require('./src/helpers/errorhandler.helper');
//routes
const actividad_routes_1 = __importDefault(require("./src/routes/actividad.routes"));
const avatar_routes_1 = __importDefault(require("./src/routes/avatar.routes"));
const sentimientos_routes_1 = __importDefault(require("./src/routes/sentimientos.routes"));
const session_routes_1 = __importDefault(require("./src/routes/session.routes"));
const user_routes_1 = __importDefault(require("./src/routes/user.routes"));
class Server {
    constructor() {
        this.app = express_1.default();
        this.config();
        this.routes();
    }
    config() {
        this.app.set('port', process.env.PORT || 3000);
        this.app.use(morgan_1.default(' status: :status | metodo: :method | fecha: :date[iso] | path: :url | ejecucion: :total-time[3] ms '));
        this.app.use(cors_1.default());
        this.app.use(express_1.default.json());
        this.app.use(express_1.default.urlencoded({ extended: false }));
    }
    routes() {
        //usr
        this.app.use('/v1/actividad', actividad_routes_1.default);
        this.app.use('/v1/avatar', avatar_routes_1.default);
        this.app.use('/v1/sentimientos', sentimientos_routes_1.default);
        this.app.use('/v1/session', session_routes_1.default);
        this.app.use('/v1/user', user_routes_1.default);
        //Error handler
        this.app.use(errorHandler.internalServerError);
        this.app.use(errorHandler.notFound);
    }
    start() {
        this.app.listen(this.app.get('port'), () => {
            console.log(Date().toLocaleString(), " :", 'Server on port', this.app.get('port'));
        });
    }
}
const server = new Server();
server.start();
