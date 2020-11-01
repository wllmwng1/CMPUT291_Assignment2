.print Question 2 - wwong1

SELECT name,members.email
FROM members, cars, bookings
WHERE members.email = cars.owner
  and members.email = bookings.email
EXCEPT
SELECT name,email
FROM members, rides
WHERE members.email = rides.driver;
