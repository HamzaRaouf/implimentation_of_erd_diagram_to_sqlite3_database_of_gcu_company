.system echo "Inside script <create_packages.sql>"
.system echo "--------------------------------"

-- Your CODE HERE

DROP TABLE IF EXISTS Packages;

CREATE TABLE Packages (
  packageID INTEGER PRIMARY KEY,
  location TEXT NOT NULL,
  packagename TEXT NOT NULL,
  description TEXT NOT NULL,
  adultprice REAL NOT NULL,
  childprice REAL NOT NULL,
  departure TEXT NOT NULL,
  sales INTEGER NOT NULL
);
















