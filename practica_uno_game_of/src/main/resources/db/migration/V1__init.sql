-- noinspection SqlNoDataSourceInspection
CREATE TABLE IF NOT EXISTS levels (
    id SERIAL PRIMARY KEY,
    Lvl_name VARCHAR(20),
    Lvl_difficulty VARCHAR(20),
    Lvl_number INT
    );

CREATE TABLE IF NOT EXISTS players (
    id SERIAL PRIMARY KEY,
    Pl_name VARCHAR(10),
    Pl_lifes INT,
    Lvl_name VARCHAR(20),
    levels_id INT REFERENCES levels(id)
    );