"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const mariadb_1 = __importDefault(require("mariadb"));
const keys_1 = __importDefault(require("./keys"));
const pool = mariadb_1.default.createPool(keys_1.default.database);
try {
    pool.getConnection();
    console.log(Date().toLocaleString(), " :", 'Connection DB : OK');
}
catch (err) {
    console.log(Date().toLocaleString(), " :", 'Connection DB : ERR');
    throw err;
}
exports.default = pool;
