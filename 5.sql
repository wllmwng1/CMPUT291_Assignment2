.print Question 5 - wwong1

SELECT locations.city, locations.prov
FROM rides
INNER JOIN locations ON locations.lcode = rides.dst
GROUP BY locations.city
ORDER BY COUNT(locations.city) DESC
LIMIT 3;
