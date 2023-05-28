.system cls
.system echo "Inside script <top-level.sql>"
.system echo "-----------------------------"
--
.system echo "Switching the foreign keys ON/OFF"

-- If you have problems with legacy data in your database,
-- as a result of not cascading deletes in child tables,
-- then you can turn foreign_keys to OFF and call this script 
-- a few times to ensure that your code drops tables appropiately.
-- Make sure to turn it ON again though, to ensure your keys are 
-- doing what they are there for.

PRAGMA foreign_keys = ON;
--
.system echo "1"
.read create_users.sql
.system echo "2"
.read create_packages.sql
.system echo "3"
.read create_tours.sql
.system echo "4"
.read create_bookings.sql 
.system echo "5"
.read create_mailinglists.sql 
.system echo "6"
.read create_subscriptions.sql

.system echo "Loading..."
.read load_users.sql
.read load_packages.sql
.read load_tours.sql 
.read load_bookings.sql
.read load_mailinglists.sql
.read load_subscriptions.sql

--
--.system echo "17"
.read report.sql

.read drop_all.sql


