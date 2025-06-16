import { Router } from "express";
import { userController } from "../controllers/userController";
import { authMiddleware } from "../middlewares/authMiddleware";

export const userRouter = Router();
userRouter.use(authMiddleware.validar);
userRouter.post("/", userController.salvar);
userRouter.get("/", userController.listar);
userRouter.get("/:id", userController.consultar);
userRouter.put("/:id", userController.atualizar);
userRouter.delete("/:id", userController.deletar);
