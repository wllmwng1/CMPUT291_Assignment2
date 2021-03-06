.echo on
--Question 1
SELECT DISTINCT name,email
FROM members, cars c1, cars c2, rides
WHERE members.email = c1.owner
  and members.email = c2.owner
  and c1.cno <> c2.cno
  and c1.cno = rides.cno;

--Question 2
SELECT name,members.email
FROM members, cars, bookings
WHERE members.email = cars.owner
  and members.email = bookings.email
EXCEPT
SELECT name,email
FROM members, rides
WHERE members.email = rides.driver;

--Question 3
SELECT DISTINCT members.email
FROM members, rides, bookings
INNER JOIN locations l1 ON l1.lcode = rides.src
INNER JOIN locations l2 ON l2.lcode = rides.dst
WHERE members.email = bookings.email
  and bookings.rno = rides.rno
  and strftime('%Y %m',rides.rdate) = '2018 11'
  and l1.city = 'Edmonton'
  and l2.city = 'Calgary';

--Question 4
SELECT requests.rid, requests.email, requests.pickup, requests.dropoff, rides.rno
FROM rides
INNER JOIN locations l1 ON l1.lcode = rides.src
INNER JOIN locations l2 ON l2.lcode = rides.dst,
requests
INNER JOIN locations l3 ON l3.lcode = requests.pickup
INNER JOIN locations l4 ON l4.lcode = requests.dropoff
WHERE l1.city = l3.city
  and l2.city = l4.city
  and rides.price <= requests.amount
  and rides.rdate = requests.rdate;

--Question 5
SELECT locations.city, locations.prov
FROM rides
INNER JOIN locations ON locations.lcode = rides.dst
GROUP BY locations.city
ORDER BY COUNT(locations.city) DESC
LIMIT 3;

--Question 6
SELECT locations.city, locations.prov, COUNT(DISTINCT r1.rno), COUNT(DISTINCT r2.rno), COUNT(DISTINCT e.rno||e.lcode)
FROM locations
LEFT JOIN rides r1 ON r1.src = locations.lcode
LEFT JOIN rides r2 ON r2.dst = locations.lcode
LEFT JOIN enroute e ON e.lcode = locations.lcode
GROUP BY locations.city
HAVING COUNT(DISTINCT r1.rno) + COUNT(DISTINCT r2.rno) + COUNT(DISTINCT e.rno||e.lcode) > 0;

--Question 7
SELECT rides.rno
FROM rides
INNER JOIN locations l1 ON l1.lcode = rides.src
INNER JOIN locations l2 ON l2.lcode = rides.dst
WHERE l1.city = 'Edmonton'
AND l2.city = 'Calgary'
AND rides.seats > (
  SELECT COALESCE(SUM(bookings.seats),0)
  FROM bookings
  WHERE rides.rno = bookings.rno)
AND rides.price <= (
  SELECT MIN(rides.price)
  FROM rides
  INNER JOIN locations l1 ON l1.lcode = rides.src
  INNER JOIN locations l2 ON l2.lcode = rides.dst
  WHERE l1.city = 'Edmonton'
    AND l2.city = 'Calgary'
    AND rides.seats > (
      SELECT COALESCE(SUM(bookings.seats),0)
      FROM bookings
      WHERE rides.rno = bookings.rno)
    AND strftime('%Y %m',rides.rdate) = '2018 10')
AND strftime('%Y %m',rides.rdate) = '2018 10';

--Question 8
SELECT members.email
FROM members
WHERE NOT EXISTS (
    SELECT rides.rno
    FROM rides
    WHERE rides.driver = members.email
      AND julianday(rides.rdate) < julianday('2015-12-31')
  )
AND (
SELECT COUNT(DISTINCT locations.lcode)/2
FROM locations
WHERE locations.prov = 'Alberta') -
(SELECT COUNT(DISTINCT locations.lcode)
FROM locations
INNER JOIN rides ON rides.dst = locations.lcode
WHERE locations.prov = 'Alberta'
AND rides.driver = members.email) < 0;

--Question 9
CREATE VIEW ride_info
AS SELECT rides.rno, COALESCE(SUM(bookings.seats),0) AS booked, rides.seats - COALESCE(SUM(bookings.seats),0) AS available, rides.rdate, rides.price, l1.city AS src, l2.city AS dst
FROM rides
INNER JOIN locations l1 ON l1.lcode = rides.src
INNER JOIN locations l2 ON l2.lcode = rides.dst
LEFT OUTER JOIN bookings ON rides.rno = bookings.rno
WHERE julianday(rides.rdate) > julianday('now')
GROUP BY rides.rno;

--Question 10
SELECT ride_info.rno, ride_info.booked, ride_info.available, ride_info.rdate, ride_info.price, ride_info.src, ride_info.dst, rides.driver, julianday('2019-01-01')-julianday(ride_info.rdate) AS days
FROM ride_info
INNER JOIN rides ON rides.rno = ride_info.rno
WHERE ride_info.src = 'Edmonton'
AND ride_info.dst = 'Calgary'
AND strftime('%Y %m',ride_info.rdate) = '2018 12'
AND ride_info.available > 0
ORDER BY rides.price ASC;
