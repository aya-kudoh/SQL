/* データベースの作成*/
create database testdb;

/*データベース一覧の取得*/
show databases;

/*データベースの削除*/
drop database testdb;

/*テーブルの作成*/
create table tastdb.users(id int,nama vachar(10));

/*テーブル一覧の取得*/
show tables from testdb;

/*テーブルの削除*/
drop table testdb.users;

/*データの追加*/
insert into testdb.users values (1,'Yamada');
/*値を指定してデータを追加*/
insert into testdb.users (id,name) values (2,'佐藤');

/*複数のレコードを追加する*/
insert into testdb.users values (3, 'スズキ'),(4, 'John'), (5, 'メアリー');

/*データの削除*/
delete from testdb.users where id=2;

/*
--------------------------------------------------------------------------------------
演習3.5 
1) DB名が「training1」のDBを作成してください。

2) 「training1」DBの中に、テーブル名が「users」のテーブルを作成してください。

3) 以下のユーザーデータを「users」テーブルに追加してください。
--------------------------------------------------------------------------------------
*/
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