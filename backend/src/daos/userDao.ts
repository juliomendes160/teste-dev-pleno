import { dataConfig } from "../config/data";
import { User } from "../entities/User";

export const userDao = {
	async salvar(user: User) {
		return await dataConfig.manager.save(user);
	},

	async listar() {
		return await dataConfig.manager.find(User);
	},

	async consultar(id: number) {
		return await dataConfig.manager.findOneBy(User, { id });
	},

	async atualizar(user: User) {
		return await dataConfig.manager.save(user);
	},

	async deletar(id: number) {
		return await dataConfig.manager.delete(User, id);
	}
}