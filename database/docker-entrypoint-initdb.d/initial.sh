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

CREATE TABLE dbt_maindata (
    id                  UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    ex_info             jsonb,
    tree_path	        ltree,
    name                text
);
CREATE INDEX idx_maindata_path_gist  ON dbt_maindata USING GIST (tree_path);
CREATE INDEX idx_maindata_path_idx   ON dbt_maindata USING BTREE (tree_path);


INSERT INTO dbt_maindata (tree_path, name) VALUES
    ('A',   '首页看板'),
    ('A.B', '内容管理')
;

EOSQL
