import { Injectable } from '@nestjs/common';
import { libKnex } from './lib/db';

const TABLE_NAME = 'dbt_maindata';

@Injectable()
export class AppService {
  async getHello() {
    const records = await libKnex(TABLE_NAME).select();
    return `size: ${records.length}, name[0]: ${records[0].name}`;
  }
}
