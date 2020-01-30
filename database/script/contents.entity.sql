-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
-- UTF-8 encoding
-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

\! echo === contents entity ===

CREATE TABLE dbt_contents (
    name                text,
    title               text,
    subtitle            text,
    alias               text,
    label               text,
    tags                text,
    description         text,
    comments            text,
    status              text,
    type                text,
    path                ltree
);
