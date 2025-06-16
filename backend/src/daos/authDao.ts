import { User } from "../entities/User";
import { dataConfig } from "../config/data";

export const authDao = {
	async login(email: string, senha: string ) {
		return await dataConfig.manager.findOne(User, { where: { email, senha }});
	},
}