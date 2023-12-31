USE [Library]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 13.10.2023 18:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[id_book] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Kolvo] [int] NULL,
	[Year] [int] NULL,
	[id_publishing] [int] NULL,
	[id_Reader] [int] NULL,
	[id_Genre] [int] NULL,
	[id_Categories] [int] NULL,
	[id_Format] [int] NULL,
	[DatePublishing] [date] NULL,
	[Photo] [nvarchar](50) NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[id_book] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 13.10.2023 18:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[id_Categories] [int] IDENTITY(1,1) NOT NULL,
	[NameCat] [nvarchar](50) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[id_Categories] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Citys]    Script Date: 13.10.2023 18:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Citys](
	[id_citys] [int] IDENTITY(1,1) NOT NULL,
	[NameCity] [nvarchar](50) NULL,
 CONSTRAINT [PK_Citys] PRIMARY KEY CLUSTERED 
(
	[id_citys] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Format]    Script Date: 13.10.2023 18:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Format](
	[id_Format] [int] IDENTITY(1,1) NOT NULL,
	[NameFor] [nvarchar](50) NULL,
 CONSTRAINT [PK_Format] PRIMARY KEY CLUSTERED 
(
	[id_Format] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genre]    Script Date: 13.10.2023 18:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genre](
	[id_Genre] [int] IDENTITY(1,1) NOT NULL,
	[NameGe] [nvarchar](50) NULL,
 CONSTRAINT [PK_Genre] PRIMARY KEY CLUSTERED 
(
	[id_Genre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Publishing]    Script Date: 13.10.2023 18:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publishing](
	[id_publishing] [int] IDENTITY(1,1) NOT NULL,
	[NamePub] [nvarchar](50) NULL,
	[id_citys] [int] NULL,
 CONSTRAINT [PK_Publishing] PRIMARY KEY CLUSTERED 
(
	[id_publishing] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reader]    Script Date: 13.10.2023 18:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reader](
	[id_Reader] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[date of delivery] [date] NULL,
	[date of issue] [date] NULL,
	[address] [varchar](50) NULL,
	[phone number] [varchar](50) NULL,
	[reader's ticket number] [int] NULL,
 CONSTRAINT [PK_Author] PRIMARY KEY CLUSTERED 
(
	[id_Reader] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Books] ON 

INSERT [dbo].[Books] ([id_book], [Name], [Kolvo], [Year], [id_publishing], [id_Reader], [id_Genre], [id_Categories], [id_Format], [DatePublishing], [Photo]) VALUES (1, N'Попутный ветер', 45, 2004, 1, 1, 1, 1, 2, CAST(N'2003-03-18' AS Date), N'\Resources\1.jpg')
INSERT [dbo].[Books] ([id_book], [Name], [Kolvo], [Year], [id_publishing], [id_Reader], [id_Genre], [id_Categories], [id_Format], [DatePublishing], [Photo]) VALUES (2, N'Выход есть всегда', 234, 2000, 2, 2, 2, 2, 2, CAST(N'2001-03-18' AS Date), N'\Resources\2.jpg')
INSERT [dbo].[Books] ([id_book], [Name], [Kolvo], [Year], [id_publishing], [id_Reader], [id_Genre], [id_Categories], [id_Format], [DatePublishing], [Photo]) VALUES (3, N'Зачарованные мысли', 12, 2000, 3, 3, 3, 3, 3, CAST(N'2010-03-18' AS Date), N'\Resources\3.jpg')
INSERT [dbo].[Books] ([id_book], [Name], [Kolvo], [Year], [id_publishing], [id_Reader], [id_Genre], [id_Categories], [id_Format], [DatePublishing], [Photo]) VALUES (4, N'Фрагменты прошлого в настоящем', 56, 2010, 4, 4, 4, 4, 4, CAST(N'2011-03-18' AS Date), N'\Resources\4.jpg')
INSERT [dbo].[Books] ([id_book], [Name], [Kolvo], [Year], [id_publishing], [id_Reader], [id_Genre], [id_Categories], [id_Format], [DatePublishing], [Photo]) VALUES (5, N'Золотая пуля', 67, 2020, 5, 5, 5, 5, 5, CAST(N'2014-03-12' AS Date), N'\Resources\1.jpg')
INSERT [dbo].[Books] ([id_book], [Name], [Kolvo], [Year], [id_publishing], [id_Reader], [id_Genre], [id_Categories], [id_Format], [DatePublishing], [Photo]) VALUES (6, N'Забери меня', 34, 2017, 6, 6, 6, 1, 1, CAST(N'2015-03-18' AS Date), NULL)
INSERT [dbo].[Books] ([id_book], [Name], [Kolvo], [Year], [id_publishing], [id_Reader], [id_Genre], [id_Categories], [id_Format], [DatePublishing], [Photo]) VALUES (7, N'Космический сон', 234, 2016, 7, 7, 7, 2, 2, CAST(N'2017-03-18' AS Date), NULL)
INSERT [dbo].[Books] ([id_book], [Name], [Kolvo], [Year], [id_publishing], [id_Reader], [id_Genre], [id_Categories], [id_Format], [DatePublishing], [Photo]) VALUES (8, N'Сладкий поцелуй', 65, 2015, 8, 8, 8, 3, 3, CAST(N'2005-03-18' AS Date), NULL)
INSERT [dbo].[Books] ([id_book], [Name], [Kolvo], [Year], [id_publishing], [id_Reader], [id_Genre], [id_Categories], [id_Format], [DatePublishing], [Photo]) VALUES (9, N'Сон зимы', 657, 2014, 9, 9, 9, 4, 4, CAST(N'2005-03-18' AS Date), NULL)
INSERT [dbo].[Books] ([id_book], [Name], [Kolvo], [Year], [id_publishing], [id_Reader], [id_Genre], [id_Categories], [id_Format], [DatePublishing], [Photo]) VALUES (10, N'Сломанная комната', 234, 2013, 10, 10, 10, 5, 5, CAST(N'2005-03-11' AS Date), NULL)
INSERT [dbo].[Books] ([id_book], [Name], [Kolvo], [Year], [id_publishing], [id_Reader], [id_Genre], [id_Categories], [id_Format], [DatePublishing], [Photo]) VALUES (11, N'Звездный шаг', 123, 2012, 11, 11, 11, 1, 1, CAST(N'2005-03-18' AS Date), NULL)
INSERT [dbo].[Books] ([id_book], [Name], [Kolvo], [Year], [id_publishing], [id_Reader], [id_Genre], [id_Categories], [id_Format], [DatePublishing], [Photo]) VALUES (12, N'Дотянуться до тебя', 45, 2011, 1, 12, 12, 2, 2, CAST(N'2005-03-18' AS Date), NULL)
INSERT [dbo].[Books] ([id_book], [Name], [Kolvo], [Year], [id_publishing], [id_Reader], [id_Genre], [id_Categories], [id_Format], [DatePublishing], [Photo]) VALUES (13, N'Зависимые', 234, 2010, 2, 13, 13, 3, 3, CAST(N'2005-03-18' AS Date), NULL)
INSERT [dbo].[Books] ([id_book], [Name], [Kolvo], [Year], [id_publishing], [id_Reader], [id_Genre], [id_Categories], [id_Format], [DatePublishing], [Photo]) VALUES (14, N'Свержение королевы морей', 1234, 2009, 3, 14, 14, 4, 4, CAST(N'2005-03-18' AS Date), NULL)
INSERT [dbo].[Books] ([id_book], [Name], [Kolvo], [Year], [id_publishing], [id_Reader], [id_Genre], [id_Categories], [id_Format], [DatePublishing], [Photo]) VALUES (15, N'Тёмные грёзы', 123, 2008, 4, 15, 15, 5, 5, CAST(N'2005-03-19' AS Date), NULL)
INSERT [dbo].[Books] ([id_book], [Name], [Kolvo], [Year], [id_publishing], [id_Reader], [id_Genre], [id_Categories], [id_Format], [DatePublishing], [Photo]) VALUES (16, N'Пароль от твоего сердца', 435, 2007, 5, 16, 16, 1, 1, CAST(N'2005-03-18' AS Date), NULL)
INSERT [dbo].[Books] ([id_book], [Name], [Kolvo], [Year], [id_publishing], [id_Reader], [id_Genre], [id_Categories], [id_Format], [DatePublishing], [Photo]) VALUES (17, N'Мертвый защитник', 657, 2006, 6, 17, 17, 2, 2, CAST(N'2005-03-18' AS Date), NULL)
INSERT [dbo].[Books] ([id_book], [Name], [Kolvo], [Year], [id_publishing], [id_Reader], [id_Genre], [id_Categories], [id_Format], [DatePublishing], [Photo]) VALUES (18, N'Один лишь миг', 534, 2005, 7, 18, 1, 3, 3, CAST(N'2005-03-30' AS Date), NULL)
INSERT [dbo].[Books] ([id_book], [Name], [Kolvo], [Year], [id_publishing], [id_Reader], [id_Genre], [id_Categories], [id_Format], [DatePublishing], [Photo]) VALUES (19, N'Прстальные взгляды', 346, 2004, 8, 19, 2, 4, 4, CAST(N'2005-03-18' AS Date), NULL)
INSERT [dbo].[Books] ([id_book], [Name], [Kolvo], [Year], [id_publishing], [id_Reader], [id_Genre], [id_Categories], [id_Format], [DatePublishing], [Photo]) VALUES (20, N'На краю обрыва', 135, 2003, 9, 20, 3, 5, 5, CAST(N'2005-03-18' AS Date), NULL)
INSERT [dbo].[Books] ([id_book], [Name], [Kolvo], [Year], [id_publishing], [id_Reader], [id_Genre], [id_Categories], [id_Format], [DatePublishing], [Photo]) VALUES (21, N'Дорога из лунного камня', 425, 2002, 10, 1, 4, 1, 1, CAST(N'2005-03-13' AS Date), NULL)
INSERT [dbo].[Books] ([id_book], [Name], [Kolvo], [Year], [id_publishing], [id_Reader], [id_Genre], [id_Categories], [id_Format], [DatePublishing], [Photo]) VALUES (22, N'Тайная дверь', 14, 2001, 11, 2, 5, 2, 2, CAST(N'2005-03-18' AS Date), NULL)
INSERT [dbo].[Books] ([id_book], [Name], [Kolvo], [Year], [id_publishing], [id_Reader], [id_Genre], [id_Categories], [id_Format], [DatePublishing], [Photo]) VALUES (23, N'Шёпот цветов', 563, 2000, 1, 3, 6, 3, 3, CAST(N'2005-03-18' AS Date), NULL)
INSERT [dbo].[Books] ([id_book], [Name], [Kolvo], [Year], [id_publishing], [id_Reader], [id_Genre], [id_Categories], [id_Format], [DatePublishing], [Photo]) VALUES (24, N'Любопытство бога мудрости', 656, 2010, 2, 4, 7, 4, 4, CAST(N'2005-01-11' AS Date), NULL)
INSERT [dbo].[Books] ([id_book], [Name], [Kolvo], [Year], [id_publishing], [id_Reader], [id_Genre], [id_Categories], [id_Format], [DatePublishing], [Photo]) VALUES (25, N'Смех из под земли', 256, 2011, 3, 5, 8, 5, 5, CAST(N'2023-10-18' AS Date), NULL)
INSERT [dbo].[Books] ([id_book], [Name], [Kolvo], [Year], [id_publishing], [id_Reader], [id_Genre], [id_Categories], [id_Format], [DatePublishing], [Photo]) VALUES (26, N'Холодный кофе', 267, 2012, 4, 6, 9, 1, 1, CAST(N'2020-03-18' AS Date), NULL)
INSERT [dbo].[Books] ([id_book], [Name], [Kolvo], [Year], [id_publishing], [id_Reader], [id_Genre], [id_Categories], [id_Format], [DatePublishing], [Photo]) VALUES (27, N'Сладкая вишня', 136, 2013, 5, 7, 10, 2, 2, CAST(N'2004-12-18' AS Date), NULL)
INSERT [dbo].[Books] ([id_book], [Name], [Kolvo], [Year], [id_publishing], [id_Reader], [id_Genre], [id_Categories], [id_Format], [DatePublishing], [Photo]) VALUES (28, N'Уйти красиво', 547, 2014, 6, 8, 11, 3, 3, CAST(N'2005-03-18' AS Date), NULL)
INSERT [dbo].[Books] ([id_book], [Name], [Kolvo], [Year], [id_publishing], [id_Reader], [id_Genre], [id_Categories], [id_Format], [DatePublishing], [Photo]) VALUES (29, N'Глаза как твои', 35, 2015, 7, 9, 12, 4, 4, CAST(N'2005-03-18' AS Date), NULL)
INSERT [dbo].[Books] ([id_book], [Name], [Kolvo], [Year], [id_publishing], [id_Reader], [id_Genre], [id_Categories], [id_Format], [DatePublishing], [Photo]) VALUES (30, N'Завтра начнётся Апокалипсис', 68, 2016, 8, 10, 13, 5, 5, CAST(N'2005-03-18' AS Date), NULL)
INSERT [dbo].[Books] ([id_book], [Name], [Kolvo], [Year], [id_publishing], [id_Reader], [id_Genre], [id_Categories], [id_Format], [DatePublishing], [Photo]) VALUES (1032, N'fyrty', 5, 555, 4, 3, 3, 4, 4, CAST(N'2005-03-18' AS Date), NULL)
INSERT [dbo].[Books] ([id_book], [Name], [Kolvo], [Year], [id_publishing], [id_Reader], [id_Genre], [id_Categories], [id_Format], [DatePublishing], [Photo]) VALUES (1033, N'tyrty', 56, 555, 2, 3, 4, 4, 3, CAST(N'2005-03-18' AS Date), NULL)
INSERT [dbo].[Books] ([id_book], [Name], [Kolvo], [Year], [id_publishing], [id_Reader], [id_Genre], [id_Categories], [id_Format], [DatePublishing], [Photo]) VALUES (1034, N'fghfg', 7, 7888, 3, 3, 3, 3, 3, CAST(N'2005-03-18' AS Date), NULL)
INSERT [dbo].[Books] ([id_book], [Name], [Kolvo], [Year], [id_publishing], [id_Reader], [id_Genre], [id_Categories], [id_Format], [DatePublishing], [Photo]) VALUES (1035, N'u89789', 5, 6666, 7, 7, 6, 4, 5, CAST(N'2005-03-18' AS Date), NULL)
INSERT [dbo].[Books] ([id_book], [Name], [Kolvo], [Year], [id_publishing], [id_Reader], [id_Genre], [id_Categories], [id_Format], [DatePublishing], [Photo]) VALUES (1036, N'123', 123, 123, 2, 4, 4, 4, 1, CAST(N'2022-04-18' AS Date), NULL)
INSERT [dbo].[Books] ([id_book], [Name], [Kolvo], [Year], [id_publishing], [id_Reader], [id_Genre], [id_Categories], [id_Format], [DatePublishing], [Photo]) VALUES (1037, N'333', 2, 2004, 4, 2, 3, 4, 3, CAST(N'2023-03-18' AS Date), NULL)
SET IDENTITY_INSERT [dbo].[Books] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([id_Categories], [NameCat]) VALUES (1, N'0+')
INSERT [dbo].[Categories] ([id_Categories], [NameCat]) VALUES (2, N'6+')
INSERT [dbo].[Categories] ([id_Categories], [NameCat]) VALUES (3, N'12+')
INSERT [dbo].[Categories] ([id_Categories], [NameCat]) VALUES (4, N'16+')
INSERT [dbo].[Categories] ([id_Categories], [NameCat]) VALUES (5, N'18+')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Citys] ON 

INSERT [dbo].[Citys] ([id_citys], [NameCity]) VALUES (1, N'Орел')
INSERT [dbo].[Citys] ([id_citys], [NameCity]) VALUES (2, N'Москва')
INSERT [dbo].[Citys] ([id_citys], [NameCity]) VALUES (3, N'Суффолк')
INSERT [dbo].[Citys] ([id_citys], [NameCity]) VALUES (4, N'Агатово')
INSERT [dbo].[Citys] ([id_citys], [NameCity]) VALUES (5, N'Арбузовск')
INSERT [dbo].[Citys] ([id_citys], [NameCity]) VALUES (6, N'Файсалабад')
INSERT [dbo].[Citys] ([id_citys], [NameCity]) VALUES (7, N'Алмазовск')
INSERT [dbo].[Citys] ([id_citys], [NameCity]) VALUES (8, N'Дубаи')
INSERT [dbo].[Citys] ([id_citys], [NameCity]) VALUES (9, N'Джамканди')
INSERT [dbo].[Citys] ([id_citys], [NameCity]) VALUES (10, N'Ярославль')
INSERT [dbo].[Citys] ([id_citys], [NameCity]) VALUES (11, N'Симада')
SET IDENTITY_INSERT [dbo].[Citys] OFF
GO
SET IDENTITY_INSERT [dbo].[Format] ON 

INSERT [dbo].[Format] ([id_Format], [NameFor]) VALUES (1, N'Сверхкрупные')
INSERT [dbo].[Format] ([id_Format], [NameFor]) VALUES (2, N'Крупные')
INSERT [dbo].[Format] ([id_Format], [NameFor]) VALUES (3, N'Средние')
INSERT [dbo].[Format] ([id_Format], [NameFor]) VALUES (4, N'Малые')
INSERT [dbo].[Format] ([id_Format], [NameFor]) VALUES (5, N'Сверхмалые')
SET IDENTITY_INSERT [dbo].[Format] OFF
GO
SET IDENTITY_INSERT [dbo].[Genre] ON 

INSERT [dbo].[Genre] ([id_Genre], [NameGe]) VALUES (1, N'Биография')
INSERT [dbo].[Genre] ([id_Genre], [NameGe]) VALUES (2, N'Боевик')
INSERT [dbo].[Genre] ([id_Genre], [NameGe]) VALUES (3, N'Детектив')
INSERT [dbo].[Genre] ([id_Genre], [NameGe]) VALUES (4, N'Древневосточная')
INSERT [dbo].[Genre] ([id_Genre], [NameGe]) VALUES (5, N'Эпиграмма')
INSERT [dbo].[Genre] ([id_Genre], [NameGe]) VALUES (6, N'Реализм')
INSERT [dbo].[Genre] ([id_Genre], [NameGe]) VALUES (7, N'Мифы')
INSERT [dbo].[Genre] ([id_Genre], [NameGe]) VALUES (8, N'Повесть')
INSERT [dbo].[Genre] ([id_Genre], [NameGe]) VALUES (9, N'Поэзия')
INSERT [dbo].[Genre] ([id_Genre], [NameGe]) VALUES (10, N'Поэма')
INSERT [dbo].[Genre] ([id_Genre], [NameGe]) VALUES (11, N'Приключения')
INSERT [dbo].[Genre] ([id_Genre], [NameGe]) VALUES (12, N'Рассказ')
INSERT [dbo].[Genre] ([id_Genre], [NameGe]) VALUES (13, N'Роман')
INSERT [dbo].[Genre] ([id_Genre], [NameGe]) VALUES (14, N'Комедия')
INSERT [dbo].[Genre] ([id_Genre], [NameGe]) VALUES (15, N'Трагедия')
INSERT [dbo].[Genre] ([id_Genre], [NameGe]) VALUES (16, N'Триллер')
INSERT [dbo].[Genre] ([id_Genre], [NameGe]) VALUES (17, N'Ужасы')
SET IDENTITY_INSERT [dbo].[Genre] OFF
GO
SET IDENTITY_INSERT [dbo].[Publishing] ON 

INSERT [dbo].[Publishing] ([id_publishing], [NamePub], [id_citys]) VALUES (1, N'Владос', 3)
INSERT [dbo].[Publishing] ([id_publishing], [NamePub], [id_citys]) VALUES (2, N'АСТ', 2)
INSERT [dbo].[Publishing] ([id_publishing], [NamePub], [id_citys]) VALUES (3, N'URSS', 3)
INSERT [dbo].[Publishing] ([id_publishing], [NamePub], [id_citys]) VALUES (4, N'ГРАНД', 4)
INSERT [dbo].[Publishing] ([id_publishing], [NamePub], [id_citys]) VALUES (5, N'Интеллект', 5)
INSERT [dbo].[Publishing] ([id_publishing], [NamePub], [id_citys]) VALUES (6, N'ИНФРА', 6)
INSERT [dbo].[Publishing] ([id_publishing], [NamePub], [id_citys]) VALUES (7, N'ОНИКС', 7)
INSERT [dbo].[Publishing] ([id_publishing], [NamePub], [id_citys]) VALUES (8, N'Питер', 8)
INSERT [dbo].[Publishing] ([id_publishing], [NamePub], [id_citys]) VALUES (9, N'КноРус', 9)
INSERT [dbo].[Publishing] ([id_publishing], [NamePub], [id_citys]) VALUES (10, N'Академия', 10)
INSERT [dbo].[Publishing] ([id_publishing], [NamePub], [id_citys]) VALUES (11, N'Айрис', 11)
INSERT [dbo].[Publishing] ([id_publishing], [NamePub], [id_citys]) VALUES (12, N'Мир', 1)
INSERT [dbo].[Publishing] ([id_publishing], [NamePub], [id_citys]) VALUES (13, N'Вече', 2)
INSERT [dbo].[Publishing] ([id_publishing], [NamePub], [id_citys]) VALUES (14, N'Дрофа', 3)
INSERT [dbo].[Publishing] ([id_publishing], [NamePub], [id_citys]) VALUES (15, N'Лань', 4)
INSERT [dbo].[Publishing] ([id_publishing], [NamePub], [id_citys]) VALUES (17, N'Омега', 5)
INSERT [dbo].[Publishing] ([id_publishing], [NamePub], [id_citys]) VALUES (18, N'Просвещение', 6)
INSERT [dbo].[Publishing] ([id_publishing], [NamePub], [id_citys]) VALUES (20, N'Герой', 1)
SET IDENTITY_INSERT [dbo].[Publishing] OFF
GO
SET IDENTITY_INSERT [dbo].[Reader] ON 

INSERT [dbo].[Reader] ([id_Reader], [Name], [date of delivery], [date of issue], [address], [phone number], [reader's ticket number]) VALUES (1, N'Петухов', CAST(N'2033-09-12' AS Date), CAST(N'2033-12-12' AS Date), N'2033-12-12', N'123-343-123', 1)
INSERT [dbo].[Reader] ([id_Reader], [Name], [date of delivery], [date of issue], [address], [phone number], [reader's ticket number]) VALUES (2, N'Морозов', CAST(N'2033-12-12' AS Date), CAST(N'2033-12-12' AS Date), N'2033-12-12', N'123-132-123', 2)
INSERT [dbo].[Reader] ([id_Reader], [Name], [date of delivery], [date of issue], [address], [phone number], [reader's ticket number]) VALUES (3, N'Шапедько', CAST(N'2033-12-12' AS Date), CAST(N'2033-12-12' AS Date), N'2033-12-12', N'123-125-143', 3)
INSERT [dbo].[Reader] ([id_Reader], [Name], [date of delivery], [date of issue], [address], [phone number], [reader's ticket number]) VALUES (4, N'Суханов', CAST(N'2033-12-12' AS Date), CAST(N'2033-12-12' AS Date), N'2033-12-12', N'123-345-432', 4)
INSERT [dbo].[Reader] ([id_Reader], [Name], [date of delivery], [date of issue], [address], [phone number], [reader's ticket number]) VALUES (5, N'Ирбицов', CAST(N'2033-12-12' AS Date), CAST(N'2033-12-12' AS Date), N'2033-12-12', N'123-432-564', 5)
INSERT [dbo].[Reader] ([id_Reader], [Name], [date of delivery], [date of issue], [address], [phone number], [reader's ticket number]) VALUES (6, N'Шевцов', CAST(N'2033-12-12' AS Date), CAST(N'2033-12-12' AS Date), N'2033-12-12', N'123-543-332', 6)
INSERT [dbo].[Reader] ([id_Reader], [Name], [date of delivery], [date of issue], [address], [phone number], [reader's ticket number]) VALUES (7, N'Карпов', CAST(N'2033-12-12' AS Date), CAST(N'2033-12-12' AS Date), N'2033-12-12', N'123-311-532', 7)
INSERT [dbo].[Reader] ([id_Reader], [Name], [date of delivery], [date of issue], [address], [phone number], [reader's ticket number]) VALUES (8, N'Родермель', CAST(N'2033-12-12' AS Date), CAST(N'2033-12-12' AS Date), N'2033-12-12', N'123-532-234', 8)
INSERT [dbo].[Reader] ([id_Reader], [Name], [date of delivery], [date of issue], [address], [phone number], [reader's ticket number]) VALUES (9, N'Миндоеев', CAST(N'2033-12-12' AS Date), CAST(N'2033-12-12' AS Date), N'2033-12-12', N'123-354-223', 9)
INSERT [dbo].[Reader] ([id_Reader], [Name], [date of delivery], [date of issue], [address], [phone number], [reader's ticket number]) VALUES (10, N'Абдеев', CAST(N'2033-12-12' AS Date), CAST(N'2033-12-12' AS Date), N'2033-12-12', N'123-442-123', 10)
INSERT [dbo].[Reader] ([id_Reader], [Name], [date of delivery], [date of issue], [address], [phone number], [reader's ticket number]) VALUES (11, N'Нурмагомедов', CAST(N'2033-12-12' AS Date), CAST(N'2033-12-12' AS Date), N'2033-12-12', N'123-533-223', 11)
INSERT [dbo].[Reader] ([id_Reader], [Name], [date of delivery], [date of issue], [address], [phone number], [reader's ticket number]) VALUES (12, N'Улийн', CAST(N'2033-12-12' AS Date), CAST(N'2033-12-12' AS Date), N'2033-12-12', N'123-464-324', 12)
INSERT [dbo].[Reader] ([id_Reader], [Name], [date of delivery], [date of issue], [address], [phone number], [reader's ticket number]) VALUES (13, N'Древесинин', CAST(N'2033-12-12' AS Date), CAST(N'2033-12-12' AS Date), N'2033-12-12', N'123-423-343', 12)
INSERT [dbo].[Reader] ([id_Reader], [Name], [date of delivery], [date of issue], [address], [phone number], [reader's ticket number]) VALUES (14, N'Голиков', CAST(N'2033-12-12' AS Date), CAST(N'2033-12-12' AS Date), N'2033-12-12', N'123-422-456', 13)
INSERT [dbo].[Reader] ([id_Reader], [Name], [date of delivery], [date of issue], [address], [phone number], [reader's ticket number]) VALUES (15, N'Горшкова', CAST(N'2033-12-12' AS Date), CAST(N'2033-12-12' AS Date), N'2033-12-12', N'123-533-113', 14)
INSERT [dbo].[Reader] ([id_Reader], [Name], [date of delivery], [date of issue], [address], [phone number], [reader's ticket number]) VALUES (16, N'Салатов', CAST(N'2033-12-12' AS Date), CAST(N'2033-12-12' AS Date), N'2033-12-12', N'123-543-313', 15)
INSERT [dbo].[Reader] ([id_Reader], [Name], [date of delivery], [date of issue], [address], [phone number], [reader's ticket number]) VALUES (17, N'Ерова', CAST(N'2033-12-12' AS Date), CAST(N'2033-12-12' AS Date), N'2033-12-12', N'123-324-322', 16)
INSERT [dbo].[Reader] ([id_Reader], [Name], [date of delivery], [date of issue], [address], [phone number], [reader's ticket number]) VALUES (18, N'Горшков', CAST(N'2033-12-12' AS Date), CAST(N'2033-12-12' AS Date), N'2033-12-12', N'123-322-344', 17)
INSERT [dbo].[Reader] ([id_Reader], [Name], [date of delivery], [date of issue], [address], [phone number], [reader's ticket number]) VALUES (19, N'Рябочкин', CAST(N'2033-12-12' AS Date), CAST(N'2033-12-12' AS Date), N'2033-12-12', N'123-234-321', 18)
INSERT [dbo].[Reader] ([id_Reader], [Name], [date of delivery], [date of issue], [address], [phone number], [reader's ticket number]) VALUES (20, N'Малинин', CAST(N'2033-12-12' AS Date), CAST(N'2033-12-12' AS Date), N'2033-12-12', N'123-334-322', 19)
INSERT [dbo].[Reader] ([id_Reader], [Name], [date of delivery], [date of issue], [address], [phone number], [reader's ticket number]) VALUES (21, N'Алмазов', CAST(N'2033-12-12' AS Date), CAST(N'2033-12-12' AS Date), N'2033-12-12', N'123-223-533', 20)
SET IDENTITY_INSERT [dbo].[Reader] OFF
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Author] FOREIGN KEY([id_Reader])
REFERENCES [dbo].[Reader] ([id_Reader])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Author]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Categories] FOREIGN KEY([id_Categories])
REFERENCES [dbo].[Categories] ([id_Categories])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Categories]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Format] FOREIGN KEY([id_Format])
REFERENCES [dbo].[Format] ([id_Format])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Format]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Genre] FOREIGN KEY([id_Genre])
REFERENCES [dbo].[Genre] ([id_Genre])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Genre]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Publishing] FOREIGN KEY([id_publishing])
REFERENCES [dbo].[Publishing] ([id_publishing])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Publishing]
GO
ALTER TABLE [dbo].[Publishing]  WITH CHECK ADD  CONSTRAINT [FK_Publishing_Citys] FOREIGN KEY([id_citys])
REFERENCES [dbo].[Citys] ([id_citys])
GO
ALTER TABLE [dbo].[Publishing] CHECK CONSTRAINT [FK_Publishing_Citys]
GO
