.system echo "Inside script <create_tours.sql>"
.system echo "--------------------------------"

-- Your CODE HERE

DROP TABLE IF EXISTS Tours;

CREATE TABLE Tours (
  tourID INTEGER PRIMARY KEY,
  departuredate TEXT NOT NULL,
  offer TEXT NOT NULL,
  packageID INTEGER NOT NULL,
  FOREIGN KEY (packageID) REFERENCES Packages(packageID)
);















