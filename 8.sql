.print Question 8 - wwong1

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
