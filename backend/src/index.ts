import express from 'express';
import { AppDataSource } from "./config/data-source";
import { userRouter } from './routes/UserRoutes';

const app = express();
app.use(express.json());

AppDataSource.initialize()
	.then(() => {
		console.log("Sucesso ao conectar banco de dados!");

		app.use("/user", userRouter);

		app.get('/', (req, res) => {
			res.send('Sucesso ao acessar rota!');
		});

		app.listen(3000, () => {
			console.log("Sucesso ao conectar servidor!");
		});
	})
	.catch((error) => {
		console.error("Erro ao conectar no banco de dados!", error);
	});