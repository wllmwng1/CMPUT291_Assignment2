.print Question 9 - wwong1

CREATE VIEW ride_info
AS SELECT rides.rno, COALESCE(SUM(bookings.seats),0) AS booked, rides.seats - COALESCE(SUM(bookings.seats),0) AS available, rides.rdate, rides.price, l1.city AS src, l2.city AS dst
FROM rides
INNER JOIN locations l1 ON l1.lcode = rides.src
INNER JOIN locations l2 ON l2.lcode = rides.dst
LEFT OUTER JOIN bookings ON rides.rno = bookings.rno
WHERE julianday(rides.rdate) > julianday('now')
GROUP BY rides.rno;
