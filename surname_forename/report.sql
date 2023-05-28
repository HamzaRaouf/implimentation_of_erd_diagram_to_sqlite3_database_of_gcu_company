.system echo "Inside script <report.sql>"
.system echo "-----------------------------"

.system echo "____________________________________________"
.system echo "Limiting the output to 10 rows, output the lastname, firstname and address of Users"
.system echo "sorted in ascending order of lastname then firstname [2 marks]"; 
.system echo "--------------------------------------------"

-- Your CODE HERE

SELECT lastname, firstname, address 
FROM Users 
ORDER BY lastname ASC, firstname ASC 
LIMIT 10;


.system echo "____________________________________________"
.system echo "Output the number of packages available in each location [2 marks]"
.system echo "--------------------------------------------"

-- Your CODE HERE

SELECT location, COUNT(packageID) AS package_count 
FROM Packages 
GROUP BY location;

.system echo "____________________________________________"
.system echo "Output the names of packages located in Asia with adultprice less than £1500  [4 marks]";
.system echo "--------------------------------------------"

-- Your CODE HERE

SELECT packagename 
FROM Packages 
WHERE location='Asia' AND adultprice < 1500;

.system echo "____________________________________________"
.system echo "Find the average number of sales for each location and show the results in order of popularity, most popular first [4 marks]";
.system echo "--------------------------------------------"

-- Your CODE HERE
SELECT location, AVG(sales) AS avg_sales 
FROM Packages 
GROUP BY location 
ORDER BY avg_sales DESC;

.system echo "____________________________________________"
.system echo "Print the titles of mailinglists which have subscriptions, along with the number of subscriptions for each [6 marks]";
.system echo "--------------------------------------------"

-- Your CODE HERE

SELECT Mailinglists.title, COUNT(Subscriptions.mailinglistID) as num_subscriptions
FROM Mailinglists
INNER JOIN Subscriptions
ON Mailinglists.mailingID = Subscriptions.mailinglistID
GROUP BY Mailinglists.title;
-- SELECT DISTINCT Mailinglists.title
-- FROM Mailinglists
-- JOIN Subscriptions ON Mailinglists.mailingID = Subscriptions.mailinglistID;

-- SELECT Mailinglists.title, COUNT(Subscriptions.mailinglistID) AS num_subscriptions
-- FROM Mailinglists
-- INNER JOIN Subscriptions ON Mailinglists.mailingID = Subscriptions.mailinglistID
-- GROUP BY Mailinglists.title;
-- SELECT Mailinglists.title, COUNT(*) AS num_subscriptions
-- FROM Mailinglists
-- JOIN Subscriptions ON Mailinglists.mailingID = Subscriptions.mailinglistID
-- GROUP BY Mailinglists.mailingID
-- HAVING COUNT(*) > 0;



.system echo "____________________________________________"
.system echo "For each booking, output the username, the number of adults and children booked, and the packagename [6 marks]";
.system echo "--------------------------------------------"

-- Your CODE HERE

SELECT b.username, b.adults, b.children, p.packagename 
FROM Bookings b
JOIN Tours t ON b.tourID = t.tourID
JOIN Packages p ON t.packageID = p.packageID;

-- SELECT u.username, b.adults, b.children, p.packagename
-- FROM Bookings b
-- JOIN Users u ON b.username = u.username
-- JOIN Tours t ON b.tourID = t.tourID
-- JOIN Packages p ON t.packageID = p.packageID;

-- SELECT Users.username, Bookings.adults, Bookings.children, Packages.packagename 
-- FROM Users 
-- INNER JOIN Bookings ON Users.user_id = Bookings.user_id 
-- INNER JOIN Packages ON Bookings.package_id = Packages.package_id;


.system echo "--------------------------------------------"






