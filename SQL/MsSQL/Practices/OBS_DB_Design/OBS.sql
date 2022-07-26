USE [OBS]
GO
/****** Object:  Table [dbo].[TblAkademisyen]    Script Date: 31.07.2022 07:24:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblAkademisyen](
	[AkademisyenID] [int] IDENTITY(1000,1) NOT NULL,
	[AkademisyenAdi] [nvarchar](50) NULL,
	[AkademisyenSoyadi] [nvarchar](50) NULL,
	[AkademisyenGSM] [nchar](10) NULL,
	[AkademisyenTC] [nchar](11) NULL,
	[AkademisyenMail] [nvarchar](50) NULL,
	[BolumID] [int] NULL,
 CONSTRAINT [PK_TblAkademisyen] PRIMARY KEY CLUSTERED 
(
	[AkademisyenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblAkademisyenDersGecis]    Script Date: 31.07.2022 07:24:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblAkademisyenDersGecis](
	[Akademisyen_Ders_GecisID] [int] IDENTITY(1,1) NOT NULL,
	[Akademisyen] [int] NULL,
	[Ders] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblAkademisyenSinavGecis]    Script Date: 31.07.2022 07:24:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblAkademisyenSinavGecis](
	[Akademisyen_Sinav_GecisID] [int] IDENTITY(1,1) NOT NULL,
	[Akademisyen] [int] NULL,
	[Sinav] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblBolum]    Script Date: 31.07.2022 07:24:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblBolum](
	[BolumID] [int] IDENTITY(1,1) NOT NULL,
	[BolumAdi] [nvarchar](50) NULL,
	[BolumAciklama] [nvarchar](500) NULL,
	[FakulteID] [int] NULL,
 CONSTRAINT [PK_TblBolum] PRIMARY KEY CLUSTERED 
(
	[BolumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblDers]    Script Date: 31.07.2022 07:24:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblDers](
	[DersID] [int] IDENTITY(1,1) NOT NULL,
	[DersAdi] [nvarchar](50) NULL,
	[DersAciklama] [nvarchar](500) NULL,
	[BolumID] [int] NULL,
 CONSTRAINT [PK_TblDers] PRIMARY KEY CLUSTERED 
(
	[DersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblFakulte]    Script Date: 31.07.2022 07:24:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblFakulte](
	[FakulteID] [int] IDENTITY(1,1) NOT NULL,
	[FakulteAdi] [nvarchar](50) NULL,
	[FakulteAdresi] [nvarchar](500) NULL,
 CONSTRAINT [PK_TblFakulte] PRIMARY KEY CLUSTERED 
(
	[FakulteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblOgrenci]    Script Date: 31.07.2022 07:24:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblOgrenci](
	[OgrenciID] [int] IDENTITY(1000,1) NOT NULL,
	[OgrenciAdi] [nvarchar](50) NULL,
	[OgrenciSoyadi] [nvarchar](50) NULL,
	[OgrenciTC] [nchar](11) NULL,
	[OgrenciKayitTarihi] [smalldatetime] NULL,
	[OgrenciGSM] [nchar](10) NULL,
	[OgrenciAdres] [nvarchar](100) NULL,
	[BolumID] [int] NULL,
 CONSTRAINT [PK_TblOgrenci] PRIMARY KEY CLUSTERED 
(
	[OgrenciID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblOgrenciDersGecis]    Script Date: 31.07.2022 07:24:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblOgrenciDersGecis](
	[Ogrenci_Ders_GecisID] [int] IDENTITY(1,1) NOT NULL,
	[Ders] [int] NULL,
	[Ogrenci] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblOgrenciSinavGecis]    Script Date: 31.07.2022 07:24:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblOgrenciSinavGecis](
	[Ogrenci_Sinav_GecisID] [int] IDENTITY(1,1) NOT NULL,
	[Ogrenci] [int] NULL,
	[Sinav] [int] NULL,
	[SinavSonucu] [decimal](5, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblSinav]    Script Date: 31.07.2022 07:24:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblSinav](
	[SinavID] [int] IDENTITY(1,1) NOT NULL,
	[Sinav] [nvarchar](50) NULL,
	[SinavTürü] [nvarchar](50) NULL,
	[SinavTarihi] [smalldatetime] NULL,
	[BolumID] [int] NULL,
	[AkademisyenID] [int] NULL,
	[OgrenciID] [int] NULL,
	[DersID] [int] NULL,
 CONSTRAINT [PK_TblSinav] PRIMARY KEY CLUSTERED 
(
	[SinavID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TblAkademisyen] ON 

INSERT [dbo].[TblAkademisyen] ([AkademisyenID], [AkademisyenAdi], [AkademisyenSoyadi], [AkademisyenGSM], [AkademisyenTC], [AkademisyenMail], [BolumID]) VALUES (1000, N'Ufuk', N'Bal', N'5551231212', N'12345678912', N'ufukbal@obs.com', 2)
INSERT [dbo].[TblAkademisyen] ([AkademisyenID], [AkademisyenAdi], [AkademisyenSoyadi], [AkademisyenGSM], [AkademisyenTC], [AkademisyenMail], [BolumID]) VALUES (1001, N'Pınar', N'Doğan', N'5551231313', N'12312345678', N'pinardogan@obs.com', 1)
INSERT [dbo].[TblAkademisyen] ([AkademisyenID], [AkademisyenAdi], [AkademisyenSoyadi], [AkademisyenGSM], [AkademisyenTC], [AkademisyenMail], [BolumID]) VALUES (1002, N'Murat', N'Yücedağ', N'5551231414', N'12345645698', N'muratyucedag@obs.com', 3)
SET IDENTITY_INSERT [dbo].[TblAkademisyen] OFF
GO
SET IDENTITY_INSERT [dbo].[TblAkademisyenDersGecis] ON 

INSERT [dbo].[TblAkademisyenDersGecis] ([Akademisyen_Ders_GecisID], [Akademisyen], [Ders]) VALUES (1, 1000, 5)
INSERT [dbo].[TblAkademisyenDersGecis] ([Akademisyen_Ders_GecisID], [Akademisyen], [Ders]) VALUES (2, 1000, 6)
INSERT [dbo].[TblAkademisyenDersGecis] ([Akademisyen_Ders_GecisID], [Akademisyen], [Ders]) VALUES (3, 1000, 7)
INSERT [dbo].[TblAkademisyenDersGecis] ([Akademisyen_Ders_GecisID], [Akademisyen], [Ders]) VALUES (4, 1001, 3)
INSERT [dbo].[TblAkademisyenDersGecis] ([Akademisyen_Ders_GecisID], [Akademisyen], [Ders]) VALUES (5, 1001, 4)
INSERT [dbo].[TblAkademisyenDersGecis] ([Akademisyen_Ders_GecisID], [Akademisyen], [Ders]) VALUES (6, 1002, 1)
INSERT [dbo].[TblAkademisyenDersGecis] ([Akademisyen_Ders_GecisID], [Akademisyen], [Ders]) VALUES (7, 1002, 2)
SET IDENTITY_INSERT [dbo].[TblAkademisyenDersGecis] OFF
GO
SET IDENTITY_INSERT [dbo].[TblAkademisyenSinavGecis] ON 

INSERT [dbo].[TblAkademisyenSinavGecis] ([Akademisyen_Sinav_GecisID], [Akademisyen], [Sinav]) VALUES (1, 1001, 1)
INSERT [dbo].[TblAkademisyenSinavGecis] ([Akademisyen_Sinav_GecisID], [Akademisyen], [Sinav]) VALUES (2, 1001, 2)
INSERT [dbo].[TblAkademisyenSinavGecis] ([Akademisyen_Sinav_GecisID], [Akademisyen], [Sinav]) VALUES (3, 1002, 3)
SET IDENTITY_INSERT [dbo].[TblAkademisyenSinavGecis] OFF
GO
SET IDENTITY_INSERT [dbo].[TblBolum] ON 

INSERT [dbo].[TblBolum] ([BolumID], [BolumAdi], [BolumAciklama], [FakulteID]) VALUES (1, N'Elektrik', N'lorem aciklama', 1)
INSERT [dbo].[TblBolum] ([BolumID], [BolumAdi], [BolumAciklama], [FakulteID]) VALUES (2, N'Elektronik', N'lorem', 1)
INSERT [dbo].[TblBolum] ([BolumID], [BolumAdi], [BolumAciklama], [FakulteID]) VALUES (3, N'Bilgisayar', N'aciklama lorem', 1)
SET IDENTITY_INSERT [dbo].[TblBolum] OFF
GO
SET IDENTITY_INSERT [dbo].[TblDers] ON 

INSERT [dbo].[TblDers] ([DersID], [DersAdi], [DersAciklama], [BolumID]) VALUES (1, N'C# 101', N'aciklama1', 3)
INSERT [dbo].[TblDers] ([DersID], [DersAdi], [DersAciklama], [BolumID]) VALUES (2, N'SQL', N'aciklama2', 3)
INSERT [dbo].[TblDers] ([DersID], [DersAdi], [DersAciklama], [BolumID]) VALUES (3, N'Yüksek Gerilim Hatları', N'aciklama3', 1)
INSERT [dbo].[TblDers] ([DersID], [DersAdi], [DersAciklama], [BolumID]) VALUES (4, N'Elektrik İletim Hatları', NULL, 1)
INSERT [dbo].[TblDers] ([DersID], [DersAdi], [DersAciklama], [BolumID]) VALUES (5, N'Görüntü İşleme', NULL, 2)
INSERT [dbo].[TblDers] ([DersID], [DersAdi], [DersAciklama], [BolumID]) VALUES (6, N'Elektronik 1', NULL, 2)
INSERT [dbo].[TblDers] ([DersID], [DersAdi], [DersAciklama], [BolumID]) VALUES (7, N'Elektronik 2', NULL, 2)
SET IDENTITY_INSERT [dbo].[TblDers] OFF
GO
SET IDENTITY_INSERT [dbo].[TblFakulte] ON 

INSERT [dbo].[TblFakulte] ([FakulteID], [FakulteAdi], [FakulteAdresi]) VALUES (1, N'Mühendislik Fakültesi', N'Kötekli')
INSERT [dbo].[TblFakulte] ([FakulteID], [FakulteAdi], [FakulteAdresi]) VALUES (2, N'Teknoloji Fakultesi', N'Marmaris')
INSERT [dbo].[TblFakulte] ([FakulteID], [FakulteAdi], [FakulteAdresi]) VALUES (3, N'Sağlık Bilimleri', N'Fethiye')
SET IDENTITY_INSERT [dbo].[TblFakulte] OFF
GO
SET IDENTITY_INSERT [dbo].[TblOgrenci] ON 

INSERT [dbo].[TblOgrenci] ([OgrenciID], [OgrenciAdi], [OgrenciSoyadi], [OgrenciTC], [OgrenciKayitTarihi], [OgrenciGSM], [OgrenciAdres], [BolumID]) VALUES (1000, N'Velit', N'Toparlı', N'12345678910', CAST(N'2016-09-11T00:00:00' AS SmallDateTime), N'5534641272', N'Mardin', 2)
INSERT [dbo].[TblOgrenci] ([OgrenciID], [OgrenciAdi], [OgrenciSoyadi], [OgrenciTC], [OgrenciKayitTarihi], [OgrenciGSM], [OgrenciAdres], [BolumID]) VALUES (1001, N'Mervenur', N'Kuyumcu', N'12345678911', CAST(N'2016-09-11T00:00:00' AS SmallDateTime), N'5554443322', N'Ankara', 3)
INSERT [dbo].[TblOgrenci] ([OgrenciID], [OgrenciAdi], [OgrenciSoyadi], [OgrenciTC], [OgrenciKayitTarihi], [OgrenciGSM], [OgrenciAdres], [BolumID]) VALUES (1002, N'Serdar', N'Ekmez', N'12345678912', CAST(N'2017-09-13T00:00:00' AS SmallDateTime), N'5553332211', N'Bilecik', 1)
SET IDENTITY_INSERT [dbo].[TblOgrenci] OFF
GO
SET IDENTITY_INSERT [dbo].[TblOgrenciDersGecis] ON 

INSERT [dbo].[TblOgrenciDersGecis] ([Ogrenci_Ders_GecisID], [Ders], [Ogrenci]) VALUES (3, 5, 1000)
INSERT [dbo].[TblOgrenciDersGecis] ([Ogrenci_Ders_GecisID], [Ders], [Ogrenci]) VALUES (4, 6, 1000)
INSERT [dbo].[TblOgrenciDersGecis] ([Ogrenci_Ders_GecisID], [Ders], [Ogrenci]) VALUES (5, 7, 1000)
INSERT [dbo].[TblOgrenciDersGecis] ([Ogrenci_Ders_GecisID], [Ders], [Ogrenci]) VALUES (7, 1, 1001)
INSERT [dbo].[TblOgrenciDersGecis] ([Ogrenci_Ders_GecisID], [Ders], [Ogrenci]) VALUES (8, 2, 1001)
INSERT [dbo].[TblOgrenciDersGecis] ([Ogrenci_Ders_GecisID], [Ders], [Ogrenci]) VALUES (9, 4, 1002)
INSERT [dbo].[TblOgrenciDersGecis] ([Ogrenci_Ders_GecisID], [Ders], [Ogrenci]) VALUES (10, 3, 1002)
INSERT [dbo].[TblOgrenciDersGecis] ([Ogrenci_Ders_GecisID], [Ders], [Ogrenci]) VALUES (11, 1, 1000)
INSERT [dbo].[TblOgrenciDersGecis] ([Ogrenci_Ders_GecisID], [Ders], [Ogrenci]) VALUES (12, 2, 1000)
INSERT [dbo].[TblOgrenciDersGecis] ([Ogrenci_Ders_GecisID], [Ders], [Ogrenci]) VALUES (13, 5, 1002)
SET IDENTITY_INSERT [dbo].[TblOgrenciDersGecis] OFF
GO
SET IDENTITY_INSERT [dbo].[TblOgrenciSinavGecis] ON 

INSERT [dbo].[TblOgrenciSinavGecis] ([Ogrenci_Sinav_GecisID], [Ogrenci], [Sinav], [SinavSonucu]) VALUES (1, 1002, 1, CAST(85.00 AS Decimal(5, 2)))
INSERT [dbo].[TblOgrenciSinavGecis] ([Ogrenci_Sinav_GecisID], [Ogrenci], [Sinav], [SinavSonucu]) VALUES (2, 1002, 2, CAST(75.50 AS Decimal(5, 2)))
INSERT [dbo].[TblOgrenciSinavGecis] ([Ogrenci_Sinav_GecisID], [Ogrenci], [Sinav], [SinavSonucu]) VALUES (3, 1001, 3, CAST(90.00 AS Decimal(5, 2)))
SET IDENTITY_INSERT [dbo].[TblOgrenciSinavGecis] OFF
GO
SET IDENTITY_INSERT [dbo].[TblSinav] ON 

INSERT [dbo].[TblSinav] ([SinavID], [Sinav], [SinavTürü], [SinavTarihi], [BolumID], [AkademisyenID], [OgrenciID], [DersID]) VALUES (1, N'Vize', N'Çoktan Seçmeli', CAST(N'2017-11-29T00:00:00' AS SmallDateTime), 1, 1001, 1002, 3)
INSERT [dbo].[TblSinav] ([SinavID], [Sinav], [SinavTürü], [SinavTarihi], [BolumID], [AkademisyenID], [OgrenciID], [DersID]) VALUES (2, N'Vize', N'Klasik', CAST(N'2017-11-25T00:00:00' AS SmallDateTime), 1, 1001, 1002, 4)
INSERT [dbo].[TblSinav] ([SinavID], [Sinav], [SinavTürü], [SinavTarihi], [BolumID], [AkademisyenID], [OgrenciID], [DersID]) VALUES (3, N'Final', N'Çoktan Seçmeli', CAST(N'2016-11-30T00:00:00' AS SmallDateTime), 3, 1002, 1001, 2)
SET IDENTITY_INSERT [dbo].[TblSinav] OFF
GO
ALTER TABLE [dbo].[TblAkademisyen]  WITH CHECK ADD  CONSTRAINT [FK_TblAkademisyen_TblBolum] FOREIGN KEY([BolumID])
REFERENCES [dbo].[TblBolum] ([BolumID])
GO
ALTER TABLE [dbo].[TblAkademisyen] CHECK CONSTRAINT [FK_TblAkademisyen_TblBolum]
GO
ALTER TABLE [dbo].[TblAkademisyenDersGecis]  WITH CHECK ADD  CONSTRAINT [FK_TblAkademisyenOgrenciGecis_TblAkademisyen] FOREIGN KEY([Akademisyen])
REFERENCES [dbo].[TblAkademisyen] ([AkademisyenID])
GO
ALTER TABLE [dbo].[TblAkademisyenDersGecis] CHECK CONSTRAINT [FK_TblAkademisyenOgrenciGecis_TblAkademisyen]
GO
ALTER TABLE [dbo].[TblAkademisyenDersGecis]  WITH CHECK ADD  CONSTRAINT [FK_TblAkademisyenOgrenciGecis_TblDers] FOREIGN KEY([Ders])
REFERENCES [dbo].[TblDers] ([DersID])
GO
ALTER TABLE [dbo].[TblAkademisyenDersGecis] CHECK CONSTRAINT [FK_TblAkademisyenOgrenciGecis_TblDers]
GO
ALTER TABLE [dbo].[TblAkademisyenSinavGecis]  WITH CHECK ADD  CONSTRAINT [FK_TblAkademisyenSinavGecis_TblAkademisyen] FOREIGN KEY([Akademisyen])
REFERENCES [dbo].[TblAkademisyen] ([AkademisyenID])
GO
ALTER TABLE [dbo].[TblAkademisyenSinavGecis] CHECK CONSTRAINT [FK_TblAkademisyenSinavGecis_TblAkademisyen]
GO
ALTER TABLE [dbo].[TblAkademisyenSinavGecis]  WITH CHECK ADD  CONSTRAINT [FK_TblAkademisyenSinavGecis_TblSinav] FOREIGN KEY([Sinav])
REFERENCES [dbo].[TblSinav] ([SinavID])
GO
ALTER TABLE [dbo].[TblAkademisyenSinavGecis] CHECK CONSTRAINT [FK_TblAkademisyenSinavGecis_TblSinav]
GO
ALTER TABLE [dbo].[TblBolum]  WITH CHECK ADD  CONSTRAINT [FK_TblBolum_TblFakulte] FOREIGN KEY([FakulteID])
REFERENCES [dbo].[TblFakulte] ([FakulteID])
GO
ALTER TABLE [dbo].[TblBolum] CHECK CONSTRAINT [FK_TblBolum_TblFakulte]
GO
ALTER TABLE [dbo].[TblDers]  WITH CHECK ADD  CONSTRAINT [FK_TblDers_TblBolum] FOREIGN KEY([BolumID])
REFERENCES [dbo].[TblBolum] ([BolumID])
GO
ALTER TABLE [dbo].[TblDers] CHECK CONSTRAINT [FK_TblDers_TblBolum]
GO
ALTER TABLE [dbo].[TblOgrenci]  WITH CHECK ADD  CONSTRAINT [FK_TblOgrenci_TblBolum] FOREIGN KEY([BolumID])
REFERENCES [dbo].[TblBolum] ([BolumID])
GO
ALTER TABLE [dbo].[TblOgrenci] CHECK CONSTRAINT [FK_TblOgrenci_TblBolum]
GO
ALTER TABLE [dbo].[TblOgrenciDersGecis]  WITH CHECK ADD  CONSTRAINT [FK_TblOgrenciDersGecis_TblDers] FOREIGN KEY([Ders])
REFERENCES [dbo].[TblDers] ([DersID])
GO
ALTER TABLE [dbo].[TblOgrenciDersGecis] CHECK CONSTRAINT [FK_TblOgrenciDersGecis_TblDers]
GO
ALTER TABLE [dbo].[TblOgrenciDersGecis]  WITH CHECK ADD  CONSTRAINT [FK_TblOgrenciDersGecis_TblOgrenci] FOREIGN KEY([Ogrenci])
REFERENCES [dbo].[TblOgrenci] ([OgrenciID])
GO
ALTER TABLE [dbo].[TblOgrenciDersGecis] CHECK CONSTRAINT [FK_TblOgrenciDersGecis_TblOgrenci]
GO
ALTER TABLE [dbo].[TblOgrenciSinavGecis]  WITH CHECK ADD  CONSTRAINT [FK_TblOgrenciSinavGecis_TblOgrenci] FOREIGN KEY([Ogrenci])
REFERENCES [dbo].[TblOgrenci] ([OgrenciID])
GO
ALTER TABLE [dbo].[TblOgrenciSinavGecis] CHECK CONSTRAINT [FK_TblOgrenciSinavGecis_TblOgrenci]
GO
ALTER TABLE [dbo].[TblOgrenciSinavGecis]  WITH CHECK ADD  CONSTRAINT [FK_TblOgrenciSinavGecis_TblSinav] FOREIGN KEY([Sinav])
REFERENCES [dbo].[TblSinav] ([SinavID])
GO
ALTER TABLE [dbo].[TblOgrenciSinavGecis] CHECK CONSTRAINT [FK_TblOgrenciSinavGecis_TblSinav]
GO
ALTER TABLE [dbo].[TblSinav]  WITH CHECK ADD  CONSTRAINT [FK_TblSinav_TblDers] FOREIGN KEY([DersID])
REFERENCES [dbo].[TblDers] ([DersID])
GO
ALTER TABLE [dbo].[TblSinav] CHECK CONSTRAINT [FK_TblSinav_TblDers]
GO
