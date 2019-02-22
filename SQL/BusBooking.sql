
create table users(mail_id varchar2(20),password varchar2(20),name varchar2(20),gender varchar2(10),age number,phone_number number, constraint users_mail_id_pk primary key(mail_id));
desc users;

create table bus(id number,name varchar2(20),source varchar2(20),destination varchar2(20),duration varchar2(10),category varchar2(10),price number,constraint bus_id_pk primary key(id));

insert into bus values(1002,'SETC','chennai','madurai','10 hrs','Non-AC',460);
select * from bus;

create table seats(id number, s1 VARCHAR2(10)DEFAULT 'BOOK',s2 VARCHAR2(10) DEFAULT 'BOOK',s3 VARCHAR2(10) DEFAULT 'BOOK',s4 VARCHAR2(10)DEFAULT 'BOOK',s5 VARCHAR2(10)DEFAULT 'BOOK',s6 VARCHAR2(10)DEFAULT 'BOOK',s7 VARCHAR2(10)DEFAULT 'BOOK',s8 VARCHAR2(10)DEFAULT 'BOOK',s9 VARCHAR2(10)DEFAULT 'BOOK',s10 VARCHAR2(10)DEFAULT 'BOOK',
s11 VARCHAR2(10)DEFAULT 'BOOK',s12 VARCHAR2(10)DEFAULT 'BOOK',s13 VARCHAR2(10)DEFAULT 'BOOK',s14 VARCHAR2(10)DEFAULT 'BOOK',s15 VARCHAR2(10)DEFAULT 'BOOK',s16 VARCHAR2(10)DEFAULT 'BOOK',s17 VARCHAR2(10)DEFAULT 'BOOK',s18 VARCHAR2(10)DEFAULT 'BOOK',s19 VARCHAR2(10)DEFAULT 'BOOK',s20 VARCHAR2(10)DEFAULT 'BOOK', constraint seat_id_pk primary key(id), constraint seat_id_pk_fk foreign key(id) references bus(id));

insert into seats(id) values(1001);

create table TicketDetails(bus_id number,seat_no varchar2(10),name varchar2(20),gender varchar2(10),age number,phone number,email_id varchar2(20), constraint ticketdetails_busid_seatno_pk primary key(bus_id,seat_no), constraint ticketdetails_busid_seatno_fk foreign key(bus_id) references seats(id),constraint ticketdetails_emailid_fk foreign key(email_id) references users(mail_id));


Insert into bus(id,name,source,destination,duration,category,price)values(1000,'KPN','Chennai','Namakkal',8,'Ac sleeper',450);

Insert into bus(id,name,source,destination,duration,category,price)values(1001,'APPLE','Chennai','Coimbatore',9,'Ac seater',550);
Insert into bus(id,name,source,destination,duration,category,price)values(1002,'SRT','Chennai','Madurai',6,'Ac sleeper',600);
Insert into bus(id,name,source,destination,duration,category,price)values(1003,'MAYURA','Chennai','Erode',9,'NonAC',350);
Insert into bus(id,name,source,destination,duration,category,price)values(1004,'ORANGE','Chennai','Banglore',12,'Non Ac',550);
Insert into bus(id,name,source,destination,duration,category,price)values(1005,'YBM','Chennai','Goa',11,'Ac sleeper',650);

Insert into bus(id,name,source,destination,duration,category,price)values(1006,'KPN','Namakkal','Chennai',8,'Ac sleeper',450);
Insert into bus(id,name,source,destination,duration,category,price)values(1007,'MAYURA','Namakkal','Coimbatore',9,'Ac seater',550);
Insert into bus(id,name,source,destination,duration,category,price)values(1008,'APPLE','Namakkal','Madurai',6,'Ac sleeper',600);
Insert into bus(id,name,source,destination,duration,category,price)values(1009,'SRT','Namakkal','Erode',9,'NonAC',350);
Insert into bus(id,name,source,destination,duration,category,price)values(1010,'ORANGE','Namakkal','Banglore',12,'Non Ac',550);
Insert into bus(id,name,source,destination,duration,category,price)values(1011,'YBM','Namakkal','Goa',11,'Ac sleeper',650);

Insert into bus(id,name,source,destination,duration,category,price)values(1012,'SRT','Coimbatore','Namakkal',8,'Ac sleeper',450);
Insert into bus(id,name,source,destination,duration,category,price)values(1013,'MAYURA','Coimbatore','Chennai',9,'Ac seater',550);
Insert into bus(id,name,source,destination,duration,category,price)values(1014,'YBM','Coimbatore','Madurai',6,'Ac sleeper',600);
Insert into bus(id,name,source,destination,duration,category,price)values(1015,'APPLE','Coimbatore','Erode',9,'NonAC',350);
Insert into bus(id,name,source,destination,duration,category,price)values(1016,'ORANGE','Coimbatore','Banglore',12,'Non Ac',550);
Insert into bus(id,name,source,destination,duration,category,price)values(1017,'KPN','Coimbatore','Goa',11,'Ac sleeper',650);

Insert into bus(id,name,source,destination,duration,category,price)values(1018,'KPN','Madurai','Namakkal',8,'Ac sleeper',450);
Insert into bus(id,name,source,destination,duration,category,price)values(1019,'SRT','Madurai','Coimbatore',9,'Ac seater',550);
Insert into bus(id,name,source,destination,duration,category,price)values(1020,'APPLE','Madurai','Chennai',6,'Ac sleeper',600);
Insert into bus(id,name,source,destination,duration,category,price)values(1021,'ORANGE','Madurai','Erode',9,'NonAC',350);
Insert into bus(id,name,source,destination,duration,category,price)values(1022,'YBM','Madurai','Banglore',12,'Non Ac',550);
Insert into bus(id,name,source,destination,duration,category,price)values(1023,'MAYURA','Madurai','Goa',11,'Ac sleeper',650);

Insert into bus(id,name,source,destination,duration,category,price)values(1024,'MAYURA','Erode','Namakkal',8,'Ac sleeper',450);
Insert into bus(id,name,source,destination,duration,category,price)values(1025,'YBM','Erode','Coimbatore',9,'Ac seater',550);
Insert into bus(id,name,source,destination,duration,category,price)values(1026,'ORANGE','Erode','Madurai',6,'Ac sleeper',600);
Insert into bus(id,name,source,destination,duration,category,price)values(1027,'APPLE','Erode','Cheannai',9,'NonAC',350);
Insert into bus(id,name,source,destination,duration,category,price)values(1028,'KPN','Erode','Banglore',12,'Non Ac',550);
Insert into bus(id,name,source,destination,duration,category,price)values(1029,'SRT','Erode','Goa',11,'Ac sleeper',650);

Insert into bus(id,name,source,destination,duration,category,price)values(1030,'MAYURA','Banglore','Namakkal',8,'Ac sleeper',450);
Insert into bus(id,name,source,destination,duration,category,price)values(1031,'SRT','Banglore','Coimbatore',9,'Ac seater',550);
Insert into bus(id,name,source,destination,duration,category,price)values(1032,'APPLE','Banglore','Madurai',6,'Ac sleeper',600);
Insert into bus(id,name,source,destination,duration,category,price)values(1033,'YBM','Banglore','Erode',9,'NonAC',350);
Insert into bus(id,name,source,destination,duration,category,price)values(1034,'ORANGE','Banglore','Chennai',12,'Non Ac',550);
Insert into bus(id,name,source,destination,duration,category,price)values(1036,'KPN','Banglore','Goa',11,'Ac sleeper',650);

Insert into bus(id,name,source,destination,duration,category,price)values(1037,'APPLE','Goa','Namakkal',8,'Ac sleeper',450);
Insert into bus(id,name,source,destination,duration,category,price)values(1038,'ORANGE','Goa','Coimbatore',9,'Ac seater',550);
Insert into bus(id,name,source,destination,duration,category,price)values(1039,'YBM','Goa','Madurai',6,'Ac sleeper',600);
Insert into bus(id,name,source,destination,duration,category,price)values(1040,'MAYURA','Goa','Erode',9,'NonAC',350);
Insert into bus(id,name,source,destination,duration,category,price)values(1041,'KPN','Goa','Banglore',12,'Non Ac',550);
Insert into bus(id,name,source,destination,duration,category,price)values(1042,'SRT','Goa','Chennai',11,'Ac sleeper',650);

Insert into bus(id,name,source,destination,duration,category,price)values(1043,'APPLE','Chennai','Namakkal',8,'Ac sleeper',450);
Insert into bus(id,name,source,destination,duration,category,price)values(1044,'ORANGE','Chennai','Namakkal',9,'Ac seater',550);
Insert into bus(id,name,source,destination,duration,category,price)values(1045,'YBM','Chennai','Namakkal',6,'Ac sleeper',600);
Insert into bus(id,name,source,destination,duration,category,price)values(1046,'MAYURA','Chennai','Namakkal',9,'NonAC',350);
Insert into bus(id,name,source,destination,duration,category,price)values(1047,'SRT','Chennai','Namakkal',11,'Ac sleeper',650);
commit;
Insert into bus(id,name,source,destination,duration,category,price)values(1048,'KPN','Chennai','Coimbatore',8,'Ac sleeper',450);
Insert into bus(id,name,source,destination,duration,category,price)values(1050,'SRT','Chennai','Coimbatore',6,'Ac sleeper',600);
Insert into bus(id,name,source,destination,duration,category,price)values(1051,'MAYURA','Chennai','Coimbatore',9,'NonAC',350);
Insert into bus(id,name,source,destination,duration,category,price)values(1052,'ORANGE','Chennai','Coimbatore',12,'Non Ac',550);
Insert into bus(id,name,source,destination,duration,category,price)values(1053,'YBM','Chennai','Coimbatore',11,'Ac sleeper',650);

Insert into bus(id,name,source,destination,duration,category,price)values(1054,'KPN','Chennai','Madurai',8,'Ac sleeper',450);
Insert into bus(id,name,source,destination,duration,category,price)values(1055,'APPLE','Chennai','Madurai',9,'Ac seater',550);
Insert into bus(id,name,source,destination,duration,category,price)values(1056,'MAYURA','Chennai','Madurai',9,'NonAC',350);
Insert into bus(id,name,source,destination,duration,category,price)values(1057,'ORANGE','Chennai','Madurai',12,'Non Ac',550);
Insert into bus(id,name,source,destination,duration,category,price)values(1058,'YBM','Chennai','Madurai',11,'Ac sleeper',650);

Insert into bus(id,name,source,destination,duration,category,price)values(1059,'KPN','Chennai','Erode',8,'Ac sleeper',450);
Insert into bus(id,name,source,destination,duration,category,price)values(1060,'APPLE','Chennai','Erode',9,'Ac seater',550);
Insert into bus(id,name,source,destination,duration,category,price)values(1061,'SRT','Chennai','Erode',6,'Ac sleeper',600);
Insert into bus(id,name,source,destination,duration,category,price)values(1062,'ORANGE','Chennai','Erode',12,'Non Ac',550);
Insert into bus(id,name,source,destination,duration,category,price)values(1063,'YBM','Chennai','Erode',11,'Ac sleeper',650);


Insert into bus(id,name,source,destination,duration,category,price)values(1064,'KPN','Chennai','Banglore',8,'Ac sleeper',450);
Insert into bus(id,name,source,destination,duration,category,price)values(1065,'APPLE','Chennai','Banglore',9,'Ac seater',550);
Insert into bus(id,name,source,destination,duration,category,price)values(1066,'SRT','Chennai','Banglore',6,'Ac sleeper',600);
Insert into bus(id,name,source,destination,duration,category,price)values(1067,'MAYURA','Chennai','Banglore',9,'NonAC',350);
Insert into bus(id,name,source,destination,duration,category,price)values(1068,'YBM','Chennai','Banglore',11,'Ac sleeper',650);

Insert into bus(id,name,source,destination,duration,category,price)values(1069,'KPN','Chennai','Goa',8,'Ac sleeper',450);
Insert into bus(id,name,source,destination,duration,category,price)values(1070,'APPLE','Chennai','Goa',9,'Ac seater',550);
Insert into bus(id,name,source,destination,duration,category,price)values(1071,'SRT','Chennai','Goa',6,'Ac sleeper',600);
Insert into bus(id,name,source,destination,duration,category,price)values(1072,'MAYURA','Chennai','Goa',9,'NonAC',350);
Insert into bus(id,name,source,destination,duration,category,price)values(1073,'ORANGE','Chennai','Goa',12,'Non Ac',550)
;
Insert into bus(id,name,source,destination,duration,category,price)values(1075,'ORANGE','Chennai','Goa',12,'Non Ac',550)
;
Insert into bus(id,name,source,destination,duration,category,price)values(1074,'SETC','Chennai','Madurai',11,'Non Ac',450)
;
Insert into bus(id,name,source,destination,duration,category,price)values(1035,'SETC','Chennai','Madurai',11,'Non Ac',450)
;

kindly insert the id of seats from 1000 to 1075;
insert into seats (id) values(1055);
