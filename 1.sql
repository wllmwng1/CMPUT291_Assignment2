.print Question 1 - wwong1

SELECT DISTINCT name,email
FROM members, cars c1, cars c2, rides
WHERE members.email = c1.owner
  and members.email = c2.owner
  and c1.cno <> c2.cno
  and c1.cno = rides.cno;
