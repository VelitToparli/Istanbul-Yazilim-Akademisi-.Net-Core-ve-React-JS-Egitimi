--select
--dml
--Insert
-- Insert into TblCategory(CategoryName) values ('Kitap')
-- select * from TblCategory
-- Insert into TblCategory values ('K�rtasiye') -- TblCategory(CategoryName) yazmamam�za ra�men
-- Insert into TblProduct(ProductName,ProductStock,CategoryID) values ('Hoparl�r',85,2)
-- select * from TblProduct
-- Insert into TblProduct(ProductName) values ('�al��ma Masas�')
-- select * from TblProduct
-- Insert into TblProduct(ProductName,CategoryID) values ('�al��ma Masas�',5)
-- select * from TblProduct

-- Ara Bilgi
-- Unit Of Work Design Pattern --> bankalar�n para gnderme i�lemleri
-- Burak 500 TL
-- Caner 800 TL
-- Burak Caner'e 200 TL g�nderiliyor
-- Burak: 500-200 -> 300 (Ge�ici olarak tutuluyor)
-- Bu esnada sistem giderse
-- Caner 800+200 --> 1000 (Ge�ici olarak tutuluyor)
-- savechanges()

-- silme ve g�ncelleme i�lemi id de�erine g�re yap�l�r
-- delete from TblProduct where ProductID = 13
-- select * from TblProduct


-- delete from TblCategory where CaregoryID=5
-- aktif pasif
-- db first yakla��m�nda ili�kili tablo silmeye �al���rsan�z hata verir
-- code first yakla��m�nda ili�kili tablo silmeye �al���rsan�z 5 no lu kategoriye ait �r�nleri siler


-- MAUI C# ile hem mobil cross platform hem masa�st�ne ��kt� verebilen bir teknoloji

--update
--status de�eri 1 olanlar� getir


-- Ara Bilgi
-- ddl tablo olu�turma
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




-- Update ��lemleri
--update TblProduct set ProductName='�ama��r Mak', ProductStock=97 where ProductID=2
--select * from TblProduct

--update TblProduct set PurchasePrice=2500 where CategoryID=1 and Status=0
--select * from TblProduct


-- Sub Query Kullan�m�
-- select * from TblProduct where CategoryID=(Select CategoryID from TblCategory where CategoryName='Beyaz E�ya')

-- select * from TblProduct where CategoryID in(Select CategoryID from TblCategory where CategoryName='Beyaz E�ya' or CategoryName='Mobilya') --E�er sub query'de birden fazla de�er d�n�yorsa = yerine in kullanmam�z gerekiyor

-- select * from TblProduct where CategoryID=(Select CategoryID from TblCategory where CategoryName='Beyaz E�ya') and SalePrice>3800

-- select COUNT(*) from TblProduct

--1 (Select)beyaz e�yalar�n toplam ka� farkl� �r�n oldu�unu (count)

--2 (Update )�r�n listesindeki beyaz e�yalar�n stok say�s�na 10 ekleme yapan sorgu

--3 �r�n listesindeki k���k ev aletlerinin sat�� fiyat�yla al�� fiyat� aras�ndaki fark

--4 �r�n tablosundaki beyaz e�yalar�n her birinin tamam� sat�l�rsa ne kadar para kazan�l�r?

--��z�mler
--select COUNT(*) as 'Toplam Beyaz E�ya Say�s�' from TblProduct where CategoryID=(Select CategoryID from TblCategory where CategoryName='Beyaz E�ya')

--update TblProduct set ProductStock= ProductStock + 10 where CategoryID=(Select CategoryID from TblCategory where CategoryName='Beyaz E�ya')

--select ProductName, SalePrice-PurchasePrice as 'Fiyat Fark�'from TblProduct where CategoryID=(Select CategoryID from TblCategory where CategoryName='K���k Ev Aletleri')

--select ProductName, ProductStock*(SalePrice-PurchasePrice) as 'Kar'  from TblProduct where CategoryID=(Select CategoryID from TblCategory where CategoryName='Beyaz E�ya')




-- Update TblProduct Set PurchasePrice=2580 where PurchasePrice is null

-- Bir Case �zerine �rnek
-- E�er null olan bir value'nin �zerinde ekleme ��kar �arpma  yapacaksam sonu� null olur


