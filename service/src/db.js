const libKnex = require('knex')({
  client: 'pg',
  connection: {
    host : '127.0.0.1',
    database : 'docker',
    user : 'docker',
    password : '123456',
  }
});
exports.libKnex = libKnex;
