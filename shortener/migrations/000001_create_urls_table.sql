CREATE EXTENSION IF NOT EXISTS "pgcrypto";

CREATE SCHEMA shortener;

CREATE TABLE shortener.urls
(
    id          UUID        NOT NULL
    DEFAULT gen_random_uuid()
    CONSTRAINT urls_pk
    PRIMARY KEY,
    user_id     UUID        NOT NULL,
    "generated"   BOOL      DEFAULT true    NOT NULL,
    short_link  VARCHAR(10) NOT NULL,
    url         TEXT NOT NULL,
    created_at  TIMESTAMP DEFAULT now() NOT NULL,
    expire_at   TIMESTAMP NOT NULL
    );