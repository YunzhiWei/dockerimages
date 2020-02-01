import { Injectable } from '@nestjs/common';
import { dbConnection } from './lib/db';

const TABLE_NAME = 'dbt_maindata';

@Injectable()
export class AppService {
  async getHello() {
    const records = await dbConnection(TABLE_NAME).select();
    return {
      size: records.length, 
      data: records
    };
  }
}
