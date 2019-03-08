create table rider(user_id number(6),
mail_id varchar2(30) not null unique,
password varchar2(20) not null,
gender varchar2(6) not null , 
age number(2) not null check(age>=0 AND age <100),
phone_number number(10) not null,
check(gender in ('male','female','others')),
constraint users_user_id_pk primary key(user_id));


create table bus1(id number(5),
 name varchar2(30) not null,
source varchar2(30) not null,
 destination varchar2(30) not null,
 duration varchar2(10) not null,
 category varchar2(10) not null,
 price number(6,2) not null,
 date_of_journey date not null,
constraint pk_bus_id primary key(id));


create table seats(id number(5), 
s1 VARCHAR2(10)DEFAULT 'BOOK',
s2 VARCHAR2(10) DEFAULT 'BOOK',
s3 VARCHAR2(10) DEFAULT 'BOOK',
s4 VARCHAR2(10)DEFAULT 'BOOK',
s5 VARCHAR2(10)DEFAULT 'BOOK',
s6 VARCHAR2(10)DEFAULT 'BOOK',
s7 VARCHAR2(10)DEFAULT 'BOOK',
s8 VARCHAR2(10)DEFAULT 'BOOK',
s9 VARCHAR2(10)DEFAULT 'BOOK',
s10 VARCHAR2(10)DEFAULT 'BOOK',
s11 VARCHAR2(10)DEFAULT 'BOOK',
s12 VARCHAR2(10)DEFAULT 'BOOK',
s13 VARCHAR2(10)DEFAULT 'BOOK',
s14 VARCHAR2(10)DEFAULT 'BOOK',
s15 VARCHAR2(10)DEFAULT 'BOOK',
s16 VARCHAR2(10)DEFAULT 'BOOK',
s17 VARCHAR2(10)DEFAULT 'BOOK',
s18 VARCHAR2(10)DEFAULT 'BOOK',
s19 VARCHAR2(10)DEFAULT 'BOOK',
s20 VARCHAR2(10)DEFAULT 'BOOK', 


constraint seat_id_pk primary key(id), 
constraint seat_id_pk_fk foreign key(id) references bus(id));




create table TicketDetails(bus_id number(5),

seat_no varchar2(10),

email_id varchar2(30), 

constraint ticketdetails_busid_seatno_pk primary key(bus_id,seat_no),

constraint ticketdetails_busid_seatno_fk foreign key(bus_id) references seats(id),

constraint ticketdetails_emailid_fk foreign key(email_id) references rider(mail_id));


