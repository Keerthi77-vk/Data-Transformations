create table roles ( 
rollId int primary key,
rolename nvarchar(50) not null);
 
 insert into roles values(1, 'ram'),(2,'charan');
 select * from roles

 create table statuses (
 statusID int primary key,
 statusdescription nvarchar(100) not null);
 insert into statuses values (1,'active'),(2,'inactive');
 select * from statuses
 
 create table users_table(
 userID int primary key,
 username nvarchar(50) not null,
 email nvarchar(50) not null,
 roleID int,
 foreign key (roleid) references roles(rollID));
 
 insert into users_table values(1,'kee','kee@123',1),(2, 'roy','roy@124',2);
 select * from users_table


 create table useracconts_table
 (accountid int primary key,
 userid int,
 statusid int,
 accountcreateddate date not null,
 foreign key(userid) references users_table(userId),
 foreign key (statusid) references statuses(statusid));

 insert into useracconts_table values (1,1,1,'2020-01-10'),(2,2,2,'2021-12-16');
 select * from useracconts_table

