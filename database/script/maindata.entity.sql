-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
-- UTF-8 encoding
-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

\! echo === contents entity ===

CREATE TABLE dbt_maindata (
    id                  UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    ex_info             jsonb,
    tree_path            ltree,
    name                text
);
CREATE INDEX idx_maindata_path_gist  ON dbt_maindata USING GIST (tree_path);
CREATE INDEX idx_maindata_path_idx   ON dbt_maindata USING BTREE (tree_path);

