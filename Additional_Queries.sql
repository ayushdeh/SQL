USE northwind ;

-- drop table ayush_sandbox.alter_table_test ;

create table ayush_sandbox.alter_table_test
select a.*, 
b.unitprice, b.quantity, 
c.productname, 
d.categoryname, d.description,  
year(orderdate) as yr, month(orderdate) as mth
from orders a
left join
`order details` b on a.orderid = b.orderid
left join products c on b.productid = c.productid
left join categories d on c.categoryid = d.categoryid ;

--------------------------------- ALTER TABLE Statement ---------------------------------

SELECT * FROM ayush_sandbox.alter_table_test ;

-------------------- Adding, Dropping or Repositioning a Column -----------------------
 
ALTER TABLE ayush_sandbox.alter_table_test 
ADD test_column INT ; 

ALTER TABLE ayush_sandbox.alter_table_test 
ADD first_column INT FIRST ; 

ALTER TABLE ayush_sandbox.alter_table_test 
ADD second_column INT AFTER first_column ;

ALTER TABLE ayush_sandbox.alter_table_test 
DROP test_column ;

ALTER TABLE ayush_sandbox.alter_table_test 
DROP first_column, DROP second_column ;

-------------------------- Altering (Changing) a Column Definition or a Name ---------------------------

SELECT * FROM ayush_sandbox.alter_table_test ;

ALTER TABLE ayush_sandbox.alter_table_test 
ADD test_column INT ; 

ALTER TABLE ayush_sandbox.alter_table_test 
MODIFY test_column FLOAT ;

ALTER TABLE ayush_sandbox.alter_table_test 
CHANGE test_column change_column BIGINT ;

-------------------------- Renaming (Altering) a Table ------------------------------------

-- drop table ayush_sandbox.alter_table_rename ;

ALTER TABLE ayush_sandbox.alter_table_test RENAME TO ayush_sandbox.alter_table_rename ;


