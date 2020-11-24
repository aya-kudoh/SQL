/*
関数
　SUM : 指定したカラムの値の合計値を取得します
　COUNT : 指定したカラムの行数を取得します
　AVG : 指定したカラムの値の平均値を取得します
　MAX,MIN : 指定したカラムの値の最大値または最小値を取得します
*/
SELECT sum(sales) from training1.transactions;
SELECT sum(sales) from training1.transactions;
SELECT buyer,avg(sales) from training1.transactions group by buyer order by avg(sales) asc;
SELECT max(sales),min(sales) from training1.transactions;

/*
--------------------------------------------------------------------------------------------------------------
演習8.6
購入日ごとの購入金額の平均値が500円以上のデータを、購入日と購入金額平均値の2カラムに分けて、取得してください。
---------------------------------------------------------------------------------------------------------------
*/
SELECT purchaseDate,avg(sales) from training1.transactions group by purchaseDate having avg(sales) >= 500;
