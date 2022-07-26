--select
--dml
--Insert
-- Insert into TblCategory(CategoryName) values ('Kitap')
-- select * from TblCategory
-- Insert into TblCategory values ('Kýrtasiye') -- TblCategory(CategoryName) yazmamamýza raðmen
-- Insert into TblProduct(ProductName,ProductStock,CategoryID) values ('Hoparlör',85,2)
-- select * from TblProduct
-- Insert into TblProduct(ProductName) values ('Çalýþma Masasý')
-- select * from TblProduct
-- Insert into TblProduct(ProductName,CategoryID) values ('Çalýþma Masasý',5)
-- select * from TblProduct

-- Ara Bilgi
-- Unit Of Work Design Pattern --> bankalarýn para gnderme iþlemleri
-- Burak 500 TL
-- Caner 800 TL
-- Burak Caner'e 200 TL gönderiliyor
-- Burak: 500-200 -> 300 (Geçici olarak tutuluyor)
-- Bu esnada sistem giderse
-- Caner 800+200 --> 1000 (Geçici olarak tutuluyor)
-- savechanges()

-- silme ve güncelleme iþlemi id deðerine göre yapýlýr
-- delete from TblProduct where ProductID = 13
-- select * from TblProduct


-- delete from TblCategory where CaregoryID=5
-- aktif pasif
-- db first yaklaþýmýnda iliþkili tablo silmeye çalýþýrsanýz hata verir
-- code first yaklaþýmýnda iliþkili tablo silmeye çalýþýrsanýz 5 no lu kategoriye ait ürünleri siler


-- MAUI C# ile hem mobil cross platform hem masaüstüne çýktý verebilen bir teknoloji

--update
--status deðeri 1 olanlarý getir


-- Ara Bilgi
-- ddl tablo oluþturma
-- create alter drop

--use DbistanbulAkademi

--create table TblCategory
--(
--CategoryID int primary key identity(1,1),
--CategoryName Varchar(50)
--)

--create table TblProduct
--(
--ProductID int identity(1,1) primary key,
--ProductName nvarchar(50),
--ProductStock smallint,
--PurchasePrice decimal(18,2),
--SalePrice decimal(18,2),
--CategoryID int,
--Status Bit
--)




-- Update Ýþlemleri
--update TblProduct set ProductName='Çamaþýr Mak', ProductStock=97 where ProductID=2
--select * from TblProduct

--update TblProduct set PurchasePrice=2500 where CategoryID=1 and Status=0
--select * from TblProduct


-- Sub Query Kullanýmý
-- select * from TblProduct where CategoryID=(Select CategoryID from TblCategory where CategoryName='Beyaz Eþya')

-- select * from TblProduct where CategoryID in(Select CategoryID from TblCategory where CategoryName='Beyaz Eþya' or CategoryName='Mobilya') --Eðer sub query'de birden fazla deðer dönüyorsa = yerine in kullanmamýz gerekiyor

-- select * from TblProduct where CategoryID=(Select CategoryID from TblCategory where CategoryName='Beyaz Eþya') and SalePrice>3800

-- select COUNT(*) from TblProduct

--1 (Select)beyaz eþyalarýn toplam kaç farklý ürün olduðunu (count)

--2 (Update )ürün listesindeki beyaz eþyalarýn stok sayýsýna 10 ekleme yapan sorgu

--3 ürün listesindeki küçük ev aletlerinin satýþ fiyatýyla alýþ fiyatý arasýndaki fark

--4 Ürün tablosundaki beyaz eþyalarýn her birinin tamamý satýlýrsa ne kadar para kazanýlýr?

--Çözümler
--select COUNT(*) as 'Toplam Beyaz Eþya Sayýsý' from TblProduct where CategoryID=(Select CategoryID from TblCategory where CategoryName='Beyaz Eþya')

--update TblProduct set ProductStock= ProductStock + 10 where CategoryID=(Select CategoryID from TblCategory where CategoryName='Beyaz Eþya')

--select ProductName, SalePrice-PurchasePrice as 'Fiyat Farký'from TblProduct where CategoryID=(Select CategoryID from TblCategory where CategoryName='Küçük Ev Aletleri')

--select ProductName, ProductStock*(SalePrice-PurchasePrice) as 'Kar'  from TblProduct where CategoryID=(Select CategoryID from TblCategory where CategoryName='Beyaz Eþya')




-- Update TblProduct Set PurchasePrice=2580 where PurchasePrice is null

-- Bir Case Üzerine örnek
-- Eðer null olan bir value'nin üzerinde ekleme çýkar çarpma  yapacaksam sonuç null olur


