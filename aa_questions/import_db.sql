DROP TABLE if exists users;
CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    fname TEXT NOT NULL,
    lname TEXT NOT NULL
);

DROP TABLE if exists questions;
CREATE TABLE questions(
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    body TEXT NOT NULL,
    FOREIGN KEY(author_key_id) REFERENCES questions_follows(id)
);

-- -- JOINS TABLE 
-- DROP TABLE if exists questions_follows;
-- CREATE TABLE questions_follows(
--     id INTEGER PRIMARY KEY,
--     users INTEGER NOT NULL,
--     questions INTEGER NOT NULL,
-- );

INSERT INTO users(fname, lname) VALUES("JESSICA", "UPHOFF");
-- INSERT INTO questions(title, body) VALUES("TITLE", "BODY", (SELECT id FROM questions WHERE fname = "JESSICA" AND lname = "UPHOFF") );