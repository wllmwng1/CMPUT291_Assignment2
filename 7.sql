.print Question 7 - wwong1

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
