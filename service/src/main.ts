import { NestFactory } from '@nestjs/core';
import * as CONFIG from './config';
import { AppModule } from './app.module';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  app.enableCors(CONFIG.CORS);
  await app.listen(3000);
}
bootstrap();
