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
    users_id INTEGER NOT NULL,

    FOREIGN KEY (users_id) REFERENCES questions_follows(users_id)
);

-- -- JOINS TABLE 
DROP TABLE if exists questions_follows;
CREATE TABLE questions_follows(
    id INTEGER PRIMARY KEY,
    users_id INTEGER NOT NULL,
    questions_id INTEGER NOT NULL
);

INSERT INTO users(fname, lname) VALUES("JESSICA", "UPHOFF");
INSERT INTO questions(title, body, users_id) VALUES("TITLE", "BODY", (
    SELECT 
        id
    FROM 
        users
    WHERE 
        fname = 'JESSICA' AND lname = 'UPHOFF')
    
);
