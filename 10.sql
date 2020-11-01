.print Question 10 - wwong1

SELECT ride_info.rno, ride_info.booked, ride_info.available, ride_info.rdate, ride_info.price, ride_info.src, ride_info.dst, rides.driver, julianday('2019-01-01')-julianday(ride_info.rdate) AS days
FROM ride_info
INNER JOIN rides ON rides.rno = ride_info.rno
WHERE ride_info.src = 'Edmonton'
AND ride_info.dst = 'Calgary'
AND strftime('%Y %m',ride_info.rdate) = '2018 12'
AND ride_info.available > 0
ORDER BY rides.price ASC;
