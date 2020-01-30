psql -v ON_ERROR_STOP=1 --username postgres --dbname docker <<-EOSQL
    create extension ltree;
    create extension pgcrypto;
    create extension tablefunc;
EOSQL
