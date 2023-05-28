.system echo "Inside script <drop_all.sql>"
.system echo "--------------------------------"

PRAGMA foreign_keys = OFF;

DROP TABLE bookings;     
DROP TABLE subscriptions; 
DROP TABLE mailinglists;   
DROP TABLE tours;
DROP TABLE packages;       
DROP TABLE users;         
