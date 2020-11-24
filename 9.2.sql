/*
-------------------------------------------------------------------------------------------------------------------------------
演習問題9.2
1) training2 の名前をもつ DB の新規作成、および下記条件を満たす orders テーブルを作成してください。
2) 注文番号、注文者、注文金額の一覧を取得するSQL文を記述してください。

3) 商品カテゴリが、衣類またはサプリメントのデータ一覧を価格の降順で取得するSQL文を記述してください。

4) 2020年3月の注文金額が5,000円以上、かつ、ポイント割引が適応されている売上データ一覧を取得するSQL文を記述してください。

5) Visa、JCB、Amex のいずれかのクレジットカードで決済した注文データを、
　 注文日の降順に並べて直近15件を取得するSQL文を記述してください。

6) 注文者別の注文回数が10回以上のデータに関して、「注文者」と「注文回数」の2カラムに分けて、
 　注文回数の昇順で取得するSQL文を記述してください。

7) 「ビタミン」という文字列を名前に含む商品の注文データを取得するSQL文を記述してください。

8) 2020年4月の、「商品カテゴリ」と「商品カテゴリ別の注文金額の総合計」の2カラムに分けて、
 　注文金額の総合計の降順で取得するSQL文を記述してください。

9) 「商品カテゴリ別の注文金額の最大値」が「商品カテゴリ別の注文金額の最小値」の2倍より大きい注文データを、
　 「商品カテゴリ」と「商品カテゴリ別の注文金額の最大値」と、「商品カテゴリ別の注文金額の最小値」の3つのカラムに分けて
　  取得するSQL文を記述してください。
-------------------------------------------------------------------------------------------------------------------------------
*/
CREATE database training2;

CREATE table training2.orders(id int,user varchar(20),item varchar(30),category varchar(20),price int,discount int,total int,cardType varchar(10),orderDate date);

SELECT id,user, total from training2.orders;

SELECT * from training2.orders where category = '衣類' or category = 'サプリメント' order by price desc;

SELECT * from training2.orders where total >= 5000 and orderDate BETWEEN '2020-03-01' and '2020-03-01'is not null;

SELECT * from training2.orders where cardType in ('Visa','JCB','Amex') order by orderDate desc limit 15;

SELECT user, count(user) from training2.orders group by user HAVING count(user) >= 10 order by count(user) ASC ;

SELECT * from training2.orders where item like '%ビタミン%';

SELECT category,sum(total) from training2.orders where orderDate BETWEEN '2020-04-01' and '2020-04-30' group by category order by sum(total) desc;

SELECT category, MAX(total),MIN(total) from training2.orders group by category HAVING max(total) / MIN(total) > 2;

