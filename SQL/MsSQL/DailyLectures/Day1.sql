--DML (Data Manipulation Language)
--SELECT
--INSERT
--UPDATE
--DELETE

--SELECT
-- * -> All


-- TblProduct tablo'daki b�t�n sut�nlar� getir
--SELECT * FROM TblProduct  


--select ProductName,ProductStock from TblProduct 

--�ARTLI L�STELEME (WHERE)
-- select * from TblProduct where ProductID=4
-- select * from TblProduct where ProductName='buzdolab�'
-- select * from TblProduct where ProductID>5
-- select * from TblProduct where ProductName='buzdolab�' or ProductName='su �s�t�c�'
-- select * from TblProduct where PurchasePrice>5000 and ProductStock<80
-- select * from TblProduct where ProductName like '%a%'
-- select * from TblProduct where ProductName like 'b%'
-- select * from TblProduct where ProductName like '%�'
-- select * from TblProduct where ProductStock>50 and ProductName like '%a%'

-- AGGREGATE Functions (Count - Avg - Sum)
--select Count(*) from TblProduct
--select Count(*) from TblProduct where ProductName='Buzdolab�'
--select Count(*) from TblProduct where ProductName like '%a%'

-- select Distinct(CustomerCity) from TblCustomer
-- distinct kulland���m�zda direk alfabetik olarak a'dan z'ye do�ru s�ralar