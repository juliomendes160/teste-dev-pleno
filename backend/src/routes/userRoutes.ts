import { Router } from "express";
import { userController } from "../controllers/UserController";

export const userRouter = Router();
userRouter.post("/", (req, res) => userController.salvar(req, res));
userRouter.get("/", (req, res) => userController.listar(req, res));
userRouter.get("/:id", (req, res) => userController.consultar(req, res));
userRouter.put("/:id", (req, res) => userController.atualizar(req, res));
userRouter.delete("/:id", (req, res) => userController.deletar(req, res));
