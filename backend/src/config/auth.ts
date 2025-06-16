import { Secret, SignOptions } from 'jsonwebtoken';

export const authConfig: { secret: Secret, signOptions: SignOptions } = {
  secret: 'chave-secreta',
  signOptions: { expiresIn: '1d' }
};
