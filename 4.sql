.print Question 4 - wwong1

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
