.system echo "Inside script <create_subscriptions.sql>"
.system echo "--------------------------------"

-- Your CODE HERE
-- Drop the table if it exists
DROP TABLE IF EXISTS Subscriptions;

-- Create the table
CREATE TABLE Subscriptions (
  username TEXT NOT NULL,
  mailinglistID INTEGER NOT NULL,
  subscriptiondate TEXT NOT NULL,
  FOREIGN KEY (username) REFERENCES Users (username),
  FOREIGN KEY (mailinglistID) REFERENCES Mailinglist (mailinglistID)
);
















