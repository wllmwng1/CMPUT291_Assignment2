-- Data prepapred by Davood Rafiei, drafiei@ualberta.ca
-- Published on Sept 27, 2018

-- Let's insert some tuples to our tables (definitly need more data for testing)
--Members(email,name,phone)
insert into members values ('davood@abc.com','Davood Rafiei','780-111-3333');
insert into members values ('joe@gmail.com','Joe Anderson','780-111-2222');
insert into members values ('mary@abc.com','Mary Smith','780-222-3333');
insert into members values ('paul@a.com','John Paul','780-333-4444');
insert into members values ('wwong1@ualberta.ca','William Wong','780-123-4567');
insert into members values ('toorichforyou@money.cash', 'Rich Boy','999-999-9999');

--Cars(cno,make,model,year,seats,owner(email))
insert into cars values (1,'Aston Martin','DB5',1964,1,'davood@abc.com');
insert into cars values (2,'Honda','Civic',2017,4,'joe@gmail.com');
insert into cars values (3,'Nissan','Rogue',2018,4,'mary@abc.com');
insert into cars values (4,'Honda','CRV',2017,4,'joe@gmail.com');
insert into cars values (5,'Honda','CRV',2015,4,'wwong1@ualberta.ca');
insert into cars values (6,'Toyota','RAV4',1994,3,'wwong1@ualberta.ca');
insert into cars values (7,'Lamborghini','Urus',2018,1,'toorichforyou@money.cash');

--Locations(lcode,city,prov,address)
insert into locations values ('ab1','Edmonton','Alberta','UofA LRT st');
insert into locations values ('ab2','Edmonton','Alberta','Century LRT st');
insert into locations values ('ab3','Edmonton','Alberta',null);
insert into locations values ('ab4','Calgary','Alberta','111 Edmonton Tr');
insert into locations values ('ab5','Calgary','Alberta','Airport');
insert into locations values ('ab6','Red Deer','Alberta','City Hall');
insert into locations values ('ab7','Red Deer','Alberta','Airport');
insert into locations values ('bc1','Vancouver','British Columbia','Stanley Park');
insert into locations values ('bc2','Vancouver','British Columbia','Airport');

--Rides(rno,price,rdate,seats,lugDesc,src,dst,driver(email),cno)
insert into rides values (100, 41, '2018-12-12', 4, 'small bag', 'ab1', 'ab4', 'joe@gmail.com', 2);
insert into rides values (101, 40, '2018-11-13', 3, 'small bag', 'ab1', 'ab4', 'joe@gmail.com', null);
insert into rides values (102, 75, '2018-12-22', 3, 'large bag', 'ab3', 'bc1', 'joe@gmail.com', 4);
insert into rides values (103, 40, '2018-11-14', 3, 'small bag', 'ab1', 'ab3', 'joe@gmail.com', 2);
insert into rides values (104, 30, '2018-11-15', 3, 'small bag', 'ab6', 'ab4', 'joe@gmail.com', 2);
insert into rides values (105, 30, '2018-11-16', 3, 'small bag', 'ab1', 'ab2', 'joe@gmail.com', 2);
insert into rides values (106, 30, '2018-11-17', 3, 'small bag', 'ab1', 'ab2', 'joe@gmail.com', 2);
insert into rides values (107, 30, '2018-11-18', 3, 'small bag', 'ab1', 'ab6', 'joe@gmail.com', 2);
insert into rides values (108, 30, '2018-12-24', 3, 'small bag', 'ab1', 'ab7', 'joe@gmail.com', 2);
insert into rides values (109, 50, '2018-12-24', 3, 'small bag', 'ab1', 'ab7', 'mary@abc.com', 2);
insert into rides values (110, 40, '2018-12-13', 3, 'small bag', 'ab1', 'ab4', 'mary@abc.com', null);
insert into rides values (111, 30, '2018-12-13', 3, 'large bag', 'ab1', 'ab4', 'wwong1@ualberta.ca',5);
--Bookings(bno,email,rno,cost,seats,pickup,dropoff)
insert into bookings values (10, 'davood@abc.com', 100, null, 1, 'ab2', null);
insert into bookings values (12, 'davood@abc.com', 101, 28, 1, 'ab2', 'ab5');
insert into bookings values (14, 'paul@a.com', 100, null, 2, null, null);
insert into bookings values (16, 'toorichforyou@money.cash',102, null, 3, null, null);
insert into bookings values (18, 'toorichforyou@money.cash',103, null, 3, null, null);
insert into bookings values (20, 'toorichforyou@money.cash',104, null, 3, null, null);
--Enroute(rno,lcode)
insert into enroute values (100, 'ab6');
insert into enroute values (101, 'ab7');

--Requests(rid,email,rdate,pickup,dropoff,amount)
insert into requests values (1, 'paul@a.com', '2018-12-22', 'ab3', 'bc1', 80);
insert into requests values (2, 'davood@abc.com', '2018-12-24', 'ab1', 'ab7', 30);
insert into requests values (3, 'toorichforyou@money.cash', '2018-12-24','ab1','ab7',100);
