.print Question 6 - wwong1

SELECT locations.city, locations.prov, COUNT(DISTINCT r1.rno), COUNT(DISTINCT r2.rno), COUNT(DISTINCT e.rno||e.lcode)
FROM locations
LEFT JOIN rides r1 ON r1.src = locations.lcode
LEFT JOIN rides r2 ON r2.dst = locations.lcode
LEFT JOIN enroute e ON e.lcode = locations.lcode
GROUP BY locations.city
HAVING COUNT(DISTINCT r1.rno) + COUNT(DISTINCT r2.rno) + COUNT(DISTINCT e.rno||e.lcode) > 0;
