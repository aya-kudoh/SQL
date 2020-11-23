/*1つのカラムのデータを取得*/
select email from training1.users;

/*複数カラムのデータの取得*/
select name, age, id from training1.users;

/*すべてのカラムのデータを取得*/
select * from training1.users

/*
--------------------------------------------------------------------------------
演習4.5
training1 DB の usersテーブルから、左から順に id, name, tel, email の
カラムを並べてデータを取得するSELECT文を記述してください。
---------------------------------------------------------------------------------
*/
SELECT name, email, tel from training1.users where email='jiro.tanaka@ccc.com';