--Created by William Wong, wwong1@ualberta.ca
--Original by Davood Rafiei, drafiei@ualberta.ca

--Members(email,name,phone)
insert into members values ('richboy@millions.com','Richie Boyd','780-111-3333');
insert into members values ('busdriver@ets.ca','Buster Dravey', '780-496-1600');
insert into members values ('gates@millions.com','Will Gates', '780-999-7638');
insert into members values ('goodguy@nice.ca','Gord Guis', '780-123-4567');
insert into members values ('uberdriver@taxi.ca','Ubek Drivler', '780-111-1111');
insert into members values ('lazy@boy.ca','Loyd Bummer', '780-999-9999');
insert into members values ('hitchhiker@travel.com','Travis Hitchner',null);
insert into members values ('oldandelderly@cantdrive.ca','Olson Eldritch','780-314-1934');
insert into members values ('almostgood@nice.ca', 'Arthur Gold', '780-101-0101');
insert into members values ('oldandgold@nice.ca', 'Deadpool', '780-888-8888');

--Cars(cno,make,model,year,seats,owner(email))
insert into cars values (1,'Lamborghini','Urus',2018,1,'richboy@millions.com');
insert into cars values (2,'Nissan','GRX',1997,3,'richboy@millions.com');
insert into cars values (3,'Ferrari','488 GTB',2018,3,'richboy@millions.com');
insert into cars values (4,'Yamaha','Tracer 900 GT',2019,1,'richboy@millions.com');
insert into cars values (5,'Dodge','Ram',2018,4,'richboy@millions.com');
insert into cars values (6,'Toyota','Camary',2016,4,'uberdriver@taxi.ca');
insert into cars values (7,'Toyota','Camary',2016,4,'uberdriver@taxi.ca');
insert into cars values (8,'Honda','CRV',2015,5,'lazy@boy.ca');
insert into cars values (9,'Dodge','Ram',1999,4,'goodguy@nice.ca');
insert into cars values (10,'Honda','Civic',2014,4,'gates@millions.com');
insert into cars values (11,'Skoda','22Tr',2000,25,'busdriver@ets.ca');
insert into cars values (12,'Ford','Camary',1964,4,'oldandelderly@cantdrive.ca');
insert into cars values (13,'Nissan','Cube',2014,5,'almostgood@nice.ca');
insert into cars values (14,'Honda','Pilot',2013,6,'oldandgold@nice.ca');
--Locations(lcode,city,prov,address)
insert into locations values ('ab1','Edmonton','Alberta','UofA LRT st');
insert into locations values ('ab2','Edmonton','Alberta','WEM LRT Station');
insert into locations values ('ab3','Edmonton','Alberta','Ross Sheppard High School');
insert into locations values ('ab4','Edmonton','Alberta','Southgate LRT Station');
insert into locations values ('ab5','Edmonton','Alberta','White Avenue');
insert into locations values ('ab6','Edmonton','Alberta','Hawlewak Park');
insert into locations values ('ab7','Edmonton','Alberta','City Hall');
insert into locations values ('ab8','Edmonton','Alberta','Rogers Place');
insert into locations values ('ab9','Edmonton','Alberta','MacEwan LRT Station');
insert into locations values ('ab10','Edmonton','Alberta','Nait LRT Station');
insert into locations values ('ab11','Calgary','Alberta','Airport');
insert into locations values ('ab12','Calgary','Alberta','111 Edmonton Tr.');
insert into locations values ('ab13','Red Deer','Alberta','City Hall');
insert into locations values ('ab14','Red Deer','Alberta','Airport');
insert into locations values ('ab15','Sherwood Park','Alberta',null);
insert into locations values ('bc1','Vancouver','British Columbia','Stanley Park');
insert into locations values ('bc2','Vancouver','British Columbia','Airport');
insert into locations values ('sk1','Regina','Saskatchewan','University of Regina');
insert into locations values ('sk2','Saskatoon','Saskatchewan','City Hall');
insert into locations values ('nu1','Iqaluit','Nunavut',null);
--Rides(rno,price,rdate,seats,lugDesc,src,dst,driver(email),cno)
insert into rides values (100, 15, '2018-11-12', 3, 'small bag', 'ab5', 'ab8', 'uberdriver@taxi.ca', 6);
insert into rides values (101, 15, '2018-11-13', 3, 'small bag', 'ab14', 'ab8', 'uberdriver@taxi.ca', 6);
insert into rides values (102, 15, '2018-11-14', 3, 'small bag', 'sk1', 'ab8', 'uberdriver@taxi.ca', 6);
insert into rides values (103, 15, '2018-11-15', 3, 'small bag', 'ab5', 'ab8', 'uberdriver@taxi.ca', 6);
insert into rides values (104, 15, '2018-11-16', 3, 'small bag', 'ab5', 'ab8', 'uberdriver@taxi.ca', 6);
insert into rides values (105, 15, '2018-11-17', 3, 'small bag', 'ab5', 'ab8', 'uberdriver@taxi.ca', 6);
insert into rides values (106, 20, '2018-11-12', 4, 'large luggage', 'ab7', 'ab1', 'goodguy@nice.ca', 9);
insert into rides values (107, 30, '2018-11-12', 3, 'small bag', 'ab12', 'ab7', 'gates@millions.com', 10);

insert into rides values (108, 25, '2018-10-10', 4, 'large luggage', 'ab7', 'ab11', 'goodguy@nice.ca', 9);
insert into rides values (109, 25, '2018-10-13', 4, 'large luggage', 'ab7', 'ab12', 'goodguy@nice.ca', 9);
insert into rides values (110, 26, '2018-11-01', 4, 'large luggage', 'ab7', 'ab12', 'goodguy@nice.ca', 9);

insert into rides values (111, 50, '2018-11-15', 24, 'backpack', 'ab12', 'bc1', 'busdriver@ets.ca', 11);
insert into rides values (112, 50, '2018-11-16', 24, 'backpack', 'bc1', 'ab5', 'busdriver@ets.ca', 11);
insert into rides values (113, 50, '2018-11-20', 24, 'backpack', 'bc1', 'ab1', 'busdriver@ets.ca', 11);
insert into rides values (114, 50, '2018-11-25', 24, 'backpack', 'ab3', 'sk2', 'busdriver@ets.ca', 11);
insert into rides values (115, 80, '2018-11-15', 4, 'small bag', 'ab12', 'bc1', 'goodguy@nice.ca', 9);
insert into rides values (116, 100, '2018-11-15', 3, 'small bag', 'ab12', 'bc1', 'uberdriver@taxi.ca', 7);
insert into rides values (117, 100, '2018-11-20', 3, 'small bag', 'bc1', 'ab5', 'uberdriver@taxi.ca', 7);
insert into rides values (118, 100, '2018-11-25', 3, 'small bag', 'ab3', 'sk2', 'uberdriver@taxi.ca', 7);

insert into rides values (119, 30, '2018-11-29', 4, 'large luggage', 'ab7', 'ab2', 'goodguy@nice.ca', 9);
insert into rides values (120, 30, '2018-11-30', 4, 'large luggage', 'ab7', 'ab3', 'goodguy@nice.ca', 9);
insert into rides values (121, 40, '2018-12-01', 4, 'large luggage', 'ab7', 'ab4', 'goodguy@nice.ca', 9);
insert into rides values (122, 40, '2018-12-02', 4, 'large luggage', 'ab7', 'ab5', 'goodguy@nice.ca', 9);
insert into rides values (123, 40, '2018-12-03', 4, 'large luggage', 'ab7', 'ab6', 'goodguy@nice.ca', 9);
insert into rides values (124, 40, '2018-12-04', 4, 'large luggage', 'ab1', 'ab7', 'goodguy@nice.ca', 9);
insert into rides values (125, 40, '2018-12-05', 4, 'large luggage', 'ab7', 'ab8', 'goodguy@nice.ca', 9);
insert into rides values (126, 40, '2018-12-06', 4, 'large luggage', 'ab7', 'ab9', 'goodguy@nice.ca', 9);
insert into rides values (127, 40, '1968-11-01', 3, 'large luggage', 'ab7', 'ab1', 'oldandelderly@cantdrive.ca', 12);
insert into rides values (128, 40, '1968-11-02', 3, 'large luggage', 'ab7', 'ab2', 'oldandelderly@cantdrive.ca', 12);
insert into rides values (129, 40, '1968-11-03', 3, 'large luggage', 'ab7', 'ab3', 'oldandelderly@cantdrive.ca', 12);
insert into rides values (130, 40, '1968-11-04', 3, 'large luggage', 'ab7', 'ab4', 'oldandelderly@cantdrive.ca', 12);
insert into rides values (131, 40, '1968-11-05', 3, 'large luggage', 'ab7', 'ab5', 'oldandelderly@cantdrive.ca', 12);
insert into rides values (132, 40, '1968-11-06', 3, 'large luggage', 'ab7', 'ab6', 'oldandelderly@cantdrive.ca', 12);
insert into rides values (133, 40, '1968-11-07', 3, 'large luggage', 'ab7', 'ab7', 'oldandelderly@cantdrive.ca', 12);
insert into rides values (134, 40, '1968-11-08', 3, 'large luggage', 'ab7', 'ab8', 'oldandelderly@cantdrive.ca', 12);
insert into rides values (135, 40, '1968-11-09', 3, 'large luggage', 'ab7', 'ab9', 'oldandelderly@cantdrive.ca', 12);
insert into rides values (136, 40, '1968-11-10', 3, 'large luggage', 'ab7', 'ab10', 'oldandelderly@cantdrive.ca', 12);
insert into rides values (137, 40, '2018-11-01', 3, 'large luggage', 'ab7', 'ab1', 'almostgood@nice.ca', 13);
insert into rides values (138, 40, '2018-11-02', 3, 'large luggage', 'ab7', 'ab2', 'almostgood@nice.ca', 13);
insert into rides values (139, 40, '2018-11-03', 3, 'large luggage', 'ab7', 'ab3', 'almostgood@nice.ca', 13);
insert into rides values (140, 40, '2018-11-04', 3, 'large luggage', 'ab7', 'ab4', 'almostgood@nice.ca', 13);
insert into rides values (141, 40, '2018-11-05', 3, 'large luggage', 'ab7', 'ab5', 'almostgood@nice.ca', 13);
insert into rides values (142, 40, '2018-11-06', 3, 'large luggage', 'ab7', 'ab6', 'almostgood@nice.ca', 13);
insert into rides values (143, 40, '2018-11-07', 3, 'large luggage', 'ab7', 'ab7', 'almostgood@nice.ca', 13);
insert into rides values (144, 40, '2018-11-01', 3, 'large luggage', 'ab7', 'ab1', 'oldandgold@nice.ca', 14);
insert into rides values (145, 40, '2018-11-02', 3, 'large luggage', 'ab7', 'ab2', 'oldandgold@nice.ca', 14);
insert into rides values (146, 40, '2018-11-03', 3, 'large luggage', 'ab7', 'ab3', 'oldandgold@nice.ca', 14);
insert into rides values (147, 40, '2018-11-04', 3, 'large luggage', 'ab7', 'ab4', 'oldandgold@nice.ca', 14);
insert into rides values (148, 40, '2018-11-05', 3, 'large luggage', 'ab7', 'ab5', 'oldandgold@nice.ca', 14);
insert into rides values (149, 40, '2018-11-06', 3, 'large luggage', 'ab7', 'ab6', 'oldandgold@nice.ca', 14);
insert into rides values (150, 40, '2018-11-07', 3, 'large luggage', 'ab7', 'ab7', 'oldandgold@nice.ca', 14);
insert into rides values (151, 40, '2018-11-08', 3, 'large luggage', 'ab7', 'ab8', 'oldandgold@nice.ca', 14);
insert into rides values (152, 40, '2018-11-09', 3, 'large luggage', 'ab7', 'ab9', 'oldandgold@nice.ca', 14);
insert into rides values (153, 40, '2018-11-10', 3, 'large luggage', 'ab7', 'ab10', 'oldandgold@nice.ca', 14);
insert into rides values (154, 40, '1978-01-27', 3, 'large luggage', 'ab7', 'ab11', 'oldandgold@nice.ca', 14);

insert into rides values (155, 40, '2018-12-16', 24, 'backpack', 'ab1', 'ab12', 'busdriver@ets.ca', 11);
insert into rides values (156, 40, '2018-12-17', 24, 'backpack', 'ab1', 'ab12', 'busdriver@ets.ca', 11);
insert into rides values (157, 40, '2018-12-18', 24, 'backpack', 'ab1', 'ab12', 'busdriver@ets.ca', 11);
insert into rides values (158, 40, '2018-12-19', 24, 'backpack', 'ab1', 'ab12', 'busdriver@ets.ca', 11);
insert into rides values (159, 50, '2018-12-15', 24, 'backpack', 'ab1', 'ab12', 'busdriver@ets.ca', 11);
insert into rides values (160, 20, '2018-12-20', 24, 'backpack', 'ab1', 'ab12', 'busdriver@ets.ca', 11);

--Bookings(bno,email,rno,cost,seats,pickup,dropoff)
insert into bookings values (12, 'richboy@millions.com', 100, null, 3, null, null);
insert into bookings values (14, 'lazy@boy.ca', 101, null, 1, 'ab2', 'ab3');
insert into bookings values (16, 'gates@millions.com', 107, null, 1, null, null);
insert into bookings values (18, 'richboy@millions.com', 108, null, 3, null, null);
insert into bookings values (20, 'hitchhiker@travel.com', 109, 25, 1, null, null);
insert into bookings values (22, 'lazy@boy.ca', 110, null, 1, null, null);
insert into bookings values (24, 'richboy@millions.com', 120, null, 4, null, null);
insert into bookings values (26, 'richboy@millions.com', 157, null, 24, null, null);
insert into bookings values (28, 'hitchhiker@travel.com', 155, 1 , 1, null, null);
insert into bookings values (30, 'gates@millions.com', 156, null, 4, null, null);
insert into bookings values (32, 'oldandelderly@cantdrive.ca', 156, null, 2, null, null);
insert into bookings values (34, 'goodguy@nice.ca', 156, 20, 22, null, null);

--Enroute(rno,lcode)
insert into enroute values (155, 'ab2');
insert into enroute values (155, 'ab3');
insert into enroute values (155, 'ab4');
insert into enroute values (155, 'ab5');
insert into enroute values (155, 'ab6');
insert into enroute values (155, 'ab7');
insert into enroute values (155, 'ab8');
insert into enroute values (155, 'ab9');
insert into enroute values (155, 'ab10');
insert into enroute values (155, 'ab13');
insert into enroute values (155, 'ab14');
insert into enroute values (155, 'ab15');
insert into enroute values (111, 'bc2');
insert into enroute values (115, 'bc1');
insert into enroute values (116, 'bc1');


--Requests(rid,email,rdate,pickup,dropoff,amount)
insert into requests values (1, 'hitchhiker@travel.com', '2018-11-15', 'ab12', 'bc1', 80);
insert into requests values (2, 'hitchhiker@travel.com', '2018-11-20', 'bc1', 'ab5', 80);
insert into requests values (3, 'hitchhiker@travel.com', '2018-11-25', 'ab1', 'sk2', 80);
insert into requests values (4, 'hitchhiker@travel.com', '2018-11-30', 'sk2', 'nu1', 250);
insert into requests values (5, 'hitchhiker@travel.com', '2018-11-30', 'ab1', 'sk2', 0);
