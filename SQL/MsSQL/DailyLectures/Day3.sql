-- select * from TblProduct
-- Aggregate Functions
-- Count Sum Avg Min Max
-- Select Count(*) From TblProduct
-- Select Sum(ProductStock) From TblProduct
-- Select Min(SalePrice) From TblProduct


-- update TblProduct set SalePrice=1500 where SalePrice is null

-- select * from TblProduct order by SalePrice
-- select min(SalePrice) from TblProduct

-- �r�n tablomdaki en d���k fiyatl� �r�n� bulan sorgu
-- select * from TblProduct where SalePrice=(select min(SalePrice) from TblProduct)


-- Soru:1 En y�ksek fiyarl� �r�n�n bilgilerini getiren sorgu
-- Soru:2 En d���k fiyatl� �r�n�n bilgil

-- select * from TblProduct where SalePrice=(select max(SalePrice) from TblProduct) 
-- update TblProduct set SalePrice=SalePrice+125 where SalePrice=(select min(SalePrice) from TblProduct)
-- select top(1) *  from TblProduct order by SalePrice


-- AVG Kullan�m�
-- Select Avg(ProductStock) from TblProduct

-- Soru 4: Beyaz E�yalar�n ortalama sat�� fiyat�n� hesaplay�n
-- Soru 5: En y�ksek �r�n fiyat� ile en d���k �r�n fiyat� aras�ndaki fark
-- Soru 6: Ortalama sat�� fiyar�n�n alt�nda kalan �r�nleri listelyen sorgu

-- Select Avg(SalePrice) from TblProduct where CategoryID=(select CategoryID from TblCategory where CategoryName='Beyaz E�ya')
-- select Max(SalePrice)-Min(SalePrice) as 'Fark' from TblProduct 
-- select * from TblProduct where SalePrice<(Select Avg(SalePrice) from TblProduct)



-- GRUPLANDIRMA
-- Group by
-- select CustomerCity,COUNT(*) from TblCustomer group by CustomerCity
--select CategoryID,COUNT(*) from TblProduct group by CategoryID


-- JOIN
-- inner join (ortak k�me)
-- select a,b,c from table1 inner join table2 on table1.a=table2.b

-- select ProductID,CategoryName from TblProduct inner join TblCategory on TblProduct.CategoryID=TblCategory.CategoryID
	
-- Ara�t�rma: Northwind'i indir kur ara�t�r

-- use DbistanbulAkademi


--select CustomerName,CustomerSurname, ProductName, OrderPrice from TblOrder 
--inner join TblCustomer on TblOrder.CustomerID=TblCustomer.CustomerID
--inner join TblProduct on TblProduct.ProductID=TblOrder.ProductID

-- delete from TblProduct where ProductID=4 --tablolar ili�kili oldu�u i�in hata verir, bunu ��z�m� isActive veya Status gibi bir s�tun olu�turup ordan atif ve pasive �ekebilrim


--Select CategoryName,COUNT(*) as 'Adet' from TblProduct
--inner join TblCategory
--on TblProduct.CategoryID=TblCategory.CategoryID
--group by CategoryName
--order by Adet

--select CategoryName, COUNT(*) as 'Adet' from TblProduct
--inner join TblCategory
--on TblProduct.CategoryID=TblCategory.CategoryID
--group by CategoryName
--having COUNT(*) >=3


--Soru 7: details tablosunu joinleyerek listeleyin
--select ProductName, Details from TblProduct 
--inner join TblProductDetails
--on TblProduct.ProductID=TblProductDetails.ProductDetailID



-- LEFT JOIN Kullan�m�
--select KulupAd,SponsorAd from TblKulup
--inner join TblGecis
--on TblKulup.KulupID=TblGecis.Kulup
--inner join TblSponsor
--on TblSponsor.SponsorID=TblGecis.Sponsor






