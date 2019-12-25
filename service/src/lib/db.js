const libKnex = require('knex')({
  client: 'pg',
  connection: {
    host : 'dbpg',
    database : 'docker',
    user : 'docker',
    password : '123456',
  }
});
exports.libKnex = libKnex;
