import { Entity, PrimaryGeneratedColumn, Column } from 'typeorm';

@Entity()
export class User {
	@PrimaryGeneratedColumn()
	id!: number;

	@Column()
	nome!: string;

	@Column({ unique: true })
	email!: string;

	@Column()
	senha!: string;

	constructor(nome: string, email: string, senha: string) {
		this.nome = nome;
		this.email = email;
		this.senha = senha;
	}
}
