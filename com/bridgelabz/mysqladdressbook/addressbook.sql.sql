#UC1 
show databases;
create database addressBook_service;
show databases;
use addressBook_service;

#UC2
use addressBook_service;
create table addressBook
(
	id int primary key auto_increment,
	firstname varchar(120) not null,
	lastname varchar(120) not null, 
	address varchar(1000), 
	state varchar(100), 
	city varchar(100),
	zip varchar(6), 
	phone varchar(10) not null, 
	email varchar(200)
);
desc addressBook;

#UC3
use addressBook_service;
insert into addressBook
(firstname,lastname,address,state,city,zip,phone,email)
values
(
	"Ameya","Bhasme","Mankapur","Maharashtra","Nagpur",
	"440030","9975401899","ameyabhasme@gmail.com"
);
select * from addressBook;

use addressBook_service;
insert into addressBook
(firstname,lastname,address,state,city,zip,phone,email)
values
("Ritvija","Suham","CBD Belapur","Maharashtra","Navi Mumbai","401505",
"9876543210","rtvj@gmail.com"),
("Sahil","Surme","Vashi","Maharashtra","navi Mumbai","452215",
"9828643843","ssurme@gmail.com"),
("Sushant","Dhole","Ganpati Nagar","Maharashtra","Nagpur","440030",
"9096726911","sdhole@gmail.com"),
("Hrithik","Roshan","Juhu","Maharashtra","Mumbai","408405",
"9876543210","hrx@gmail.com"),
("Rohit","Sharma","Colaba","Maharashtra","Mumbai","401756",
"9823565452","hitman@gmail.com"),
("Virat","Kohli","Karachi Bazaar","New Delhi","New Delhi","451756",
"9839465452","iviratkohli@gmail.com");
select * from addressBook;

#UC4
use addressBook_service;
update addressBook set address="Ganpati Nagar Mankapur"
where firstname="Ameya" and lastname="Bhasme";
select * from addressBook;

#UC5
use addressBook_service;
delete from addressBook 
where firstname="Ameya" and lastname="Bhasme";
select * from addressBook;

#UC6
use addressBook_service;
select * from addressBook where city="Navi Mumbai";
select * from addressBook where city="Nagpur";

select * from addressBook where state="Maharashtra";
select * from addressBook where state="New Delhi";

select * from addressBook where city="Mumbai" and state="Maharashtra";

#UC7
use addressBook_service;
select count(city),count(state) from addressBook;

#UC8
use addressBook_service;
select * from addressBook where city="Mumbai" order by firstname ASC;

#UC9
use addressBook_service;
alter table addressBook 
add addressbook_name varchar(120),
add addressbook_type varchar(120);

update addressBook 
set addressbook_name="",set addressbook_type=""
select * from addressBook;