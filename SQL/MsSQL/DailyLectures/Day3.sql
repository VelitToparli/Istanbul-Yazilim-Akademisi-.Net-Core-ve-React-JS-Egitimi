-- select * from TblProduct
-- Aggregate Functions
-- Count Sum Avg Min Max
-- Select Count(*) From TblProduct
-- Select Sum(ProductStock) From TblProduct
-- Select Min(SalePrice) From TblProduct


-- update TblProduct set SalePrice=1500 where SalePrice is null

-- select * from TblProduct order by SalePrice
-- select min(SalePrice) from TblProduct

-- ürün tablomdaki en düþük fiyatlý ürünü bulan sorgu
-- select * from TblProduct where SalePrice=(select min(SalePrice) from TblProduct)


-- Soru:1 En yüksek fiyarlý ürünün bilgilerini getiren sorgu
-- Soru:2 En düþük fiyatlý ürünün bilgil

-- select * from TblProduct where SalePrice=(select max(SalePrice) from TblProduct) 
-- update TblProduct set SalePrice=SalePrice+125 where SalePrice=(select min(SalePrice) from TblProduct)
-- select top(1) *  from TblProduct order by SalePrice


-- AVG Kullanýmý
-- Select Avg(ProductStock) from TblProduct

-- Soru 4: Beyaz Eþyalarýn ortalama satýþ fiyatýný hesaplayýn
-- Soru 5: En yüksek ürün fiyatý ile en düþük ürün fiyatý arasýndaki fark
-- Soru 6: Ortalama satýþ fiyarýnýn altýnda kalan ürünleri listelyen sorgu

-- Select Avg(SalePrice) from TblProduct where CategoryID=(select CategoryID from TblCategory where CategoryName='Beyaz Eþya')
-- select Max(SalePrice)-Min(SalePrice) as 'Fark' from TblProduct 
-- select * from TblProduct where SalePrice<(Select Avg(SalePrice) from TblProduct)



-- GRUPLANDIRMA
-- Group by
-- select CustomerCity,COUNT(*) from TblCustomer group by CustomerCity
--select CategoryID,COUNT(*) from TblProduct group by CategoryID


-- JOIN
-- inner join (ortak küme)
-- select a,b,c from table1 inner join table2 on table1.a=table2.b

-- select ProductID,CategoryName from TblProduct inner join TblCategory on TblProduct.CategoryID=TblCategory.CategoryID
	
-- Araþtýrma: Northwind'i indir kur araþtýr

-- use DbistanbulAkademi


--select CustomerName,CustomerSurname, ProductName, OrderPrice from TblOrder 
--inner join TblCustomer on TblOrder.CustomerID=TblCustomer.CustomerID
--inner join TblProduct on TblProduct.ProductID=TblOrder.ProductID

-- delete from TblProduct where ProductID=4 --tablolar iliþkili olduðu için hata verir, bunu çözümü isActive veya Status gibi bir sütun oluþturup ordan atif ve pasive çekebilrim


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



-- LEFT JOIN Kullanýmý
--select KulupAd,SponsorAd from TblKulup
--inner join TblGecis
--on TblKulup.KulupID=TblGecis.Kulup
--inner join TblSponsor
--on TblSponsor.SponsorID=TblGecis.Sponsor






