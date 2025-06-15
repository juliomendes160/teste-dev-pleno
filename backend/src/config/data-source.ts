import 'reflect-metadata';
import { DataSource } from 'typeorm';
import { User } from '../entities/User';

export const AppDataSource = new DataSource({
	type: 'mysql',
	host: 'localhost',
	port: 3306,
	username: 'root',
	password: 'mysql',
	database: 'cloudged',
	synchronize: true,
	entities: [User],
});

// export const pesso = class Pessoa {

// }