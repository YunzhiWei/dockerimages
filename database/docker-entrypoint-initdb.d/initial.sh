#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER docker LOGIN PASSWORD '123456';
    CREATE DATABASE docker;
    GRANT ALL PRIVILEGES ON DATABASE docker TO docker;
EOSQL

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname docker <<-EOSQL
    create extension ltree;
    create extension pgcrypto;
    create extension tablefunc;
EOSQL

psql -v ON_ERROR_STOP=1 --username docker --dbname docker <<-EOSQL
    \i maindata.pg;
EOSQL
