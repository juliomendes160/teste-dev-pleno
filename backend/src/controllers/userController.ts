import { Request, Response } from "express";
import { User } from "../entities/User";
import { userDao } from "../daos/UserDao";

export const userController = {

	async salvar(req: Request, res: Response) {
		const { nome, email, senha } = req.body;

		if (!nome || !email || !senha) {
			res.status(400).json({ mensagem: "Dados obrigatórios!" });
			return;
		}

		const user = new User(nome, email, senha);

		try {
			await userDao.salvar(user);
			res.status(200).json({ mensagem: "Sucesso ao salvar!" });
		} catch (error: any) {
			res.status(500).json({ mensagem: "Erro ao salvar!", erro: error.message });
		}
	},

	async listar(req: Request, res: Response) {
		try {
			const users = await userDao.listar();
			res.status(200).json(users);
		} catch (error: any) {
			res.status(500).json({ mensagem: "Erro ao listar!", erro: error.message });
		}
	},

	async consultar(req: Request, res: Response) {
		const id = Number(req.params.id);

		if (isNaN(id)) {
			res.status(400).json({ mensagem: "ID inválido!" });
			return;
		}

		try {
			const user = await userDao.consultar(id);
			if (user) {
				res.status(200).json(user);
			} else {
				res.status(404).json({ mensagem: "Registro não encontrado!" });
			}
		} catch (error: any) {
			res.status(500).json({ mensagem: "Erro ao consultar!", erro: error.message });
		}
	},

	async atualizar(req: Request, res: Response) {
		const id = Number(req.params.id);

		const { nome, email, senha } = req.body;

		if (isNaN(id) || !nome || !email || !senha) {
			res.status(400).json({ mensagem: "Dados obrigatórios!" });
			return;
		}

		try {
			const user = await userDao.consultar(id);

			if (!user) {
				res.status(404).json({ mensagem: "Registro não encontrado!" });
				return;
			}

			user.nome = nome;
			user.email = email;
			user.senha = senha;

			await userDao.atualizar(user);
			res.status(200).json({ mensagem: "Sucesso ao atualizar!" });

		} catch (error: any) {
			res.status(500).json({ mensagem: "Erro ao atualizar!", erro: error.message });
		}
	},

	async deletar(req: Request, res: Response) {
		const id = Number(req.params.id);

		if (isNaN(id)) {
			res.status(400).json({ mensagem: "ID inválido!" });
			return;
		}

		try {
			const user = await userDao.consultar(id);
			
			if (!user) {
				res.status(404).json({ mensagem: "Registro não encontrado!" });
				return;
			}

			await userDao.deletar(id);
			res.status(200).json({ mensagem: "Sucesso ao deletar!" });

		} catch (error: any) {
			res.status(500).json({ mensagem: "Erro ao deletar!", erro: error.message });
		}
	}
}