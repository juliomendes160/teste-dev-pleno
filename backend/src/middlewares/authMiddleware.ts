import { Request, Response, NextFunction } from 'express';
import jwt from 'jsonwebtoken';
import { authConfig } from '../config/auth';

export const authMiddleware = {
	validar(req: Request, res: Response, next: NextFunction) {
		const authHeader = req.headers.authorization;

		if (!authHeader) {
			res.status(401).json({ mensagem: 'Token obrigatório!' });
			return;
		}

		const [, token] = authHeader.split(' ');

		if (!token) {
			res.status(401).json({ mensagem: 'Token mal formatado!' });
			return;
		}

		try {
			const decoded = jwt.verify(token, authConfig.secret);
			next();
		} catch (error) {
			res.status(401).json({ mensagem: 'Token inválido!' });
		}
	}
};
