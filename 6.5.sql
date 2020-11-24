/*
ORDER BY の使い方
SELECT 文の中で ORDER BYを使用することで、指定したカラムの値を並び替えたデータを取得することができます。
asc : 昇順　/  desc : 降順
*/
select id, name, height from training1.users order by height asc;

/*
ORDER BY は WHERE と組み合わせることで、特定のデータを並び替えた状態で取得できるようになります。
*/
select * from training1.users where age >= 20 order by gender asc, age desc;

/*
-------------------------------------------------------------------------------------------------
演習6.5
training1 DB の users テーブルから、height カラム値が160以上であるユーザーの全てのデータを、
weight カラム値の昇順に並び替えて取得してください。
-------------------------------------------------------------------------------------------------
*/
SELECT * from training1.users where height  >= 160 order by weight asc;