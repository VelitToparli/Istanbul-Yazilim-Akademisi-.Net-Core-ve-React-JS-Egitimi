--DML (Data Manipulation Language)
--SELECT
--INSERT
--UPDATE
--DELETE

--SELECT
-- * -> All


-- TblProduct tablo'daki bütün sutünlarý getir
--SELECT * FROM TblProduct  


--select ProductName,ProductStock from TblProduct 

--ÞARTLI LÝSTELEME (WHERE)
-- select * from TblProduct where ProductID=4
-- select * from TblProduct where ProductName='buzdolabý'
-- select * from TblProduct where ProductID>5
-- select * from TblProduct where ProductName='buzdolabý' or ProductName='su ýsýtýcý'
-- select * from TblProduct where PurchasePrice>5000 and ProductStock<80
-- select * from TblProduct where ProductName like '%a%'
-- select * from TblProduct where ProductName like 'b%'
-- select * from TblProduct where ProductName like '%ý'
-- select * from TblProduct where ProductStock>50 and ProductName like '%a%'

-- AGGREGATE Functions (Count - Avg - Sum)
--select Count(*) from TblProduct
--select Count(*) from TblProduct where ProductName='Buzdolabý'
--select Count(*) from TblProduct where ProductName like '%a%'

-- select Distinct(CustomerCity) from TblCustomer
-- distinct kullandýðýmýzda direk alfabetik olarak a'dan z'ye doðru sýralar