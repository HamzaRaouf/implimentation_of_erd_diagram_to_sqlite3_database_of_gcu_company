.system echo "Inside script <create_users.sql>"
.system echo "--------------------------------"

-- Your CODE HERE

DROP TABLE IF EXISTS Users;

CREATE TABLE Users (
    username TEXT PRIMARY KEY,
    firstname TEXT NOT NULL,
    lastname TEXT NOT NULL,
    address TEXT NOT NULL,
    password TEXT NOT NULL,
    datejoined TEXT NOT NULL
);

-- datejoined could be in Date Type 
















