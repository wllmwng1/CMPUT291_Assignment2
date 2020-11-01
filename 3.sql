.print Question 3 - wwong1

SELECT DISTINCT members.email
FROM members, rides, bookings
INNER JOIN locations l1 ON l1.lcode = rides.src
INNER JOIN locations l2 ON l2.lcode = rides.dst
WHERE members.email = bookings.email
  and bookings.rno = rides.rno
  and strftime('%Y %m',rides.rdate) = '2018 11'
  and l1.city = 'Edmonton'
  and l2.city = 'Calgary';
