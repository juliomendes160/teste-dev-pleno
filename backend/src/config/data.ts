import 'reflect-metadata';
import { DataSource } from 'typeorm';
import { User } from '../entities/User';

export const dataConfig = new DataSource({
	type: 'mysql',
	host: 'localhost',
	port: 3306,
	username: 'root',
	password: 'mysql',
	database: 'cloudged',
	synchronize: true,
	entities: [User],
});