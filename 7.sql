SELECT * from training1.transactions where item like '%ee%';

SELECT * from training1.transactions where item like '%ee%' GROUP by purchaseDate having sum(sales) BETWEEN 500 and 1500;