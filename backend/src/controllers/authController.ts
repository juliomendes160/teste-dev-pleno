import { Request, Response } from 'express';
import jwt from 'jsonwebtoken';
import { authDao } from '../daos/authDao';
import { authConfig } from '../config/auth';

export const authController = {

	async login(req: Request, res: Response) {

		const { email, senha } = req.body;

		if (!email || !senha) {
			res.status(400).json({ mensagem: 'Dados obrigatórios!' });
			return;
		}

		try {
			const user = await authDao.login(email, senha);

			if (user) {
				const payload = {
					id: user.id,
					email: user.email,
					timestamp: Date.now()
				}

				const token = jwt.sign(payload, authConfig.secret, authConfig.signOptions);

				res.status(200).json({ token });
			}
			else {
				res.status(401).json({ mensagem: 'Credenciais inválidas!' });
			}

		} catch (error: any) {
			res.status(500).json({ mensagem: 'Erro ao fazer login.', erro: error.message });
		}
	}
}
