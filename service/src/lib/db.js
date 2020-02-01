const KNEX_CONNECTION = require('../config').KNEX_CONNECTION;
const libKnex = require('knex')(KNEX_CONNECTION);

exports.dbConnection = libKnex;
