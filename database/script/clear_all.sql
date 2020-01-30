-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
-- UTF-8 encoding
-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

\! echo === drop maindata ===
DROP TABLE IF EXISTS dbt_maindata               CASCADE;

\! echo === drop contents ===
DROP TABLE IF EXISTS dbt_contents               CASCADE;
