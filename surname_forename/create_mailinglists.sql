.system echo "Inside script <create_mailinglists.sql>"
.system echo "--------------------------------"

-- Your CODE HERE

DROP TABLE IF EXISTS Mailinglists;

-- Create the table
CREATE TABLE Mailinglists (
  mailingID INTEGER PRIMARY KEY,
  title TEXT NOT NULL,
  description TEXT NOT NULL
);
















