const libKnex = require('knex')({
  client: 'pg',
  connection: {
    host : '127.0.0.1',
    database : 'docker',
    user : 'docker',
    password : '123456',
  }
});

const TABLE_NAME = 'dbt_maindata';

async function main () {
    const records = await libKnex(TABLE_NAME).select();
    console.log(`length: ${records.length}`);
    console.log(`records: `, records);
    return records;
}

main();
