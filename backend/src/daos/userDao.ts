import { AppDataSource } from "../config/data-source";
import { User } from "../entities/User";

export const userDao = {
	async salvar(user: User) {
		return await AppDataSource.manager.save(user);
	},

	async listar() {
		return await AppDataSource.manager.find(User);
	},

	async consultar(id: number) {
		return await AppDataSource.manager.findOneBy(User, { id });
	},

	async atualizar(user: User) {
		return await AppDataSource.manager.save(user);
	},

	async deletar(id: number) {
		return await AppDataSource.manager.delete(User, id);
	}
}