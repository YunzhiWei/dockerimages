psql -v ON_ERROR_STOP=1 --username docker --dbname docker <<-EOSQL
    \i initial.sql;
EOSQL
