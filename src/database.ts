import mariadb from 'mariadb'; 
import keys from './keys';

const pool = mariadb.createPool(keys.database);

try{
    pool.getConnection();
    console.log(Date().toLocaleString()," :",'Connection DB : OK');
}catch (err) {
    console.log(Date().toLocaleString()," :",'Connection DB : ERR');
	throw err;
}


export default pool;