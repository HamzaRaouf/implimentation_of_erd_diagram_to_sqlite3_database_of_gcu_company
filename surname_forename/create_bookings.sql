.system echo "Inside script <create_bookings.sql>"
.system echo "--------------------------------"

-- Your CODE HERE
DROP TABLE IF EXISTS Bookings;

CREATE TABLE Bookings (
  bookingID INTEGER PRIMARY KEY,
  tourID INTEGER NOT NULL,
  username TEXT NOT NULL,
  adults INTEGER NOT NULL,
  children INTEGER NOT NULL,
  status TEXT NOT NULL,
  FOREIGN KEY (tourID) REFERENCES Tours (tourID)
);







