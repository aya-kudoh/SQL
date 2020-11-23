CREATE database training1;
show databases;
CREATE table training1.users(
 id int,
 name varchar(10),
 age int,
 gender char(1),
 email varchar(30),
 tel varchar(30),
 height int,
 weight int
 );
insert into training1.users(id,name,age,gender,email,tel,height,weight)values
  (1002,'鈴木花子',24,'女','hanako.suzuki@bbb.com','090-1234-5678',155,45);
 select * from training1.users;
insert into training1.users(id,name,age,gender,email,tel,height,weight)values
  (1003,'田中次郎',32,'男','jiro.tanaka@ccc.com','05-2222-2222',182,89),
  (1004,'佐藤三郎',47,'男','saburo.sato@ddd.com','080-9876-5432',193,76),
  (1005,'侍桃子',50,'女','momoko.samurai@eee.com','08-3333-3333',167,58);
 SELECT * from training1.users;