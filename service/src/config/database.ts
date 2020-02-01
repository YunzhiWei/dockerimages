export const KNEX_CONNECTION = {
    "client": "pg",
    "pool": { "min": 2, "max": 10 },
    "connection": {
        "host": "dbpg",
        "database": "docker",
        "user": "docker",
        "password": process.env.PASSWORD_DB_ACCESS || "123456"
    }
};
