import express from 'express';
import { dataConfig } from "./config/data";
import { authRouter } from './routes/authRoutes';
import { userRouter } from './routes/userRoutes';


const app = express();
app.use(express.json());

dataConfig.initialize()
	.then(() => {
		console.log("Sucesso ao conectar banco de dados!");
	
		app.use("/auth", authRouter);
		app.use("/user", userRouter);

		app.listen(3000, () => {
			console.log("Sucesso ao conectar servidor!");
		});
	})
	.catch((error) => {
		console.error("Erro ao conectar no banco de dados!", error);
	});