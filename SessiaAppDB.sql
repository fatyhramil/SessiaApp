USE [SessiaDB]
GO
/****** Object:  Table [dbo].[Material]    Script Date: 18.04.2022 18:39:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](40) NULL,
	[MaterialTypeID] [int] NULL,
	[PackageAmount] [int] NULL,
	[UnitTypeID] [int] NULL,
	[WarehouseAmount] [nchar](10) NULL,
	[MinimalAmount] [nchar](10) NULL,
	[Price] [nchar](10) NULL,
 CONSTRAINT [PK_Material] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialType]    Script Date: 18.04.2022 18:39:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialType](
	[ID] [int] NOT NULL,
	[TypeName] [nvarchar](15) NULL,
 CONSTRAINT [PK_MaterialType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 18.04.2022 18:39:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(101,1) NOT NULL,
	[ProductName] [nvarchar](40) NULL,
	[Code] [int] NULL,
	[MinimalPrice] [money] NULL,
	[Image] [nvarchar](25) NULL,
	[ProductTypeID] [int] NULL,
	[EmployeeCount] [int] NULL,
	[WorkshopNumber] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductMaterial]    Script Date: 18.04.2022 18:39:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductMaterial](
	[ID] [int] NOT NULL,
	[ProductID] [int] NULL,
	[MaterialID] [int] NULL,
	[MaterialAmount] [int] NULL,
 CONSTRAINT [PK_ProductMaterial] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 18.04.2022 18:39:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[ID] [int] NOT NULL,
	[TypeName] [nvarchar](30) NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UnitType]    Script Date: 18.04.2022 18:39:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnitType](
	[ID] [int] NOT NULL,
	[TypeName] [nvarchar](5) NULL,
 CONSTRAINT [PK_UnitType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (1, N'Спрессованный материал серый 0x2', 1, 5, 1, N'140       ', N'49        ', N'33128.00 ₽')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (2, N'Рулон бумаги зеленый 1x1', 2, 3, 1, N'634       ', N'36        ', N'26841.00 ₽')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (3, N'Спрессованный материал розовый 2x1', 1, 8, 1, N'636       ', N'21        ', N'52606.00 ₽')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (4, N'Гранулы для бумаги розовый 2x2', 3, 10, 2, N'661       ', N'16        ', N'10608.00 ₽')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (5, N'Спрессованный материал белый 1x1', 1, 7, 3, N'843       ', N'16        ', N'43440.00 ₽')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (6, N'Рулон бумаги белый 1x0', 2, 1, 1, N'501       ', N'49        ', N'15833.00 ₽')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (7, N'Переработка бумаги синий 0x3', 4, 9, 1, N'958       ', N'32        ', N'14180.00 ₽')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (8, N'Рулон бумаги цветной 2x0', 2, 3, 1, N'386       ', N'46        ', N'35544.00 ₽')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (9, N'Рулон бумаги зеленый 2x2', 2, 8, 3, N'593       ', N'20        ', N'55016.00 ₽')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (10, N'Рулон бумаги белый 3x2', 2, 4, 3, N'16        ', N'31        ', N'53759.00 ₽')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (11, N'Переработка бумаги серый 3x3', 4, 10, 1, N'89        ', N'20        ', N'49391.00 ₽')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (12, N'Гранулы для бумаги синий 1x2', 3, 6, 2, N'112       ', N'34        ', N'25624.00 ₽')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (13, N'Рулон бумаги серый 3x3', 2, 3, 1, N'596       ', N'8         ', N'50247.00 ₽')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (14, N'Спрессованный материал цветной 1x3', 1, 3, 1, N'772       ', N'40        ', N'51672.00 ₽')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (15, N'Рулон бумаги синий 2x2', 2, 6, 3, N'363       ', N'47        ', N'38450.00 ₽')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (16, N'Гранулы для бумаги розовый 0x3', 3, 4, 2, N'379       ', N'41        ', N'3868.00 ₽ ')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (17, N'Переработка бумаги цветной 1x3', 4, 6, 3, N'32        ', N'34        ', N'37930.00 ₽')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (18, N'Гранулы для бумаги цветной 0x1', 3, 5, 2, N'759       ', N'28        ', N'9216.00 ₽ ')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (19, N'Рулон бумаги цветной 1x2', 2, 10, 1, N'246       ', N'37        ', N'5016.00 ₽ ')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (20, N'Переработка бумаги серый 1x2', 4, 8, 1, N'516       ', N'49        ', N'35981.00 ₽')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (21, N'Спрессованный материал синий 0x2', 1, 3, 3, N'514       ', N'40        ', N'6555.00 ₽ ')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (22, N'Переработка бумаги синий 1x2', 4, 4, 1, N'81        ', N'32        ', N'47873.00 ₽')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (23, N'Спрессованный материал цветной 1x2', 1, 1, 1, N'429       ', N'47        ', N'15802.00 ₽')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (24, N'Рулон бумаги розовый 2x1', 2, 1, 1, N'349       ', N'9         ', N'36163.00 ₽')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (25, N'Рулон бумаги белый 3x3', 2, 2, 3, N'201       ', N'46        ', N'51261.00 ₽')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (26, N'Рулон бумаги цветной 2x2', 2, 10, 3, N'534       ', N'46        ', N'50776.00 ₽')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (27, N'Спрессованный материал розовый 2x3', 1, 3, 1, N'552       ', N'7         ', N'4657.00 ₽ ')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (28, N'Рулон бумаги розовый 3x2', 2, 9, 1, N'144       ', N'41        ', N'51776.00 ₽')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (29, N'Переработка бумаги синий 0x1', 4, 7, 1, N'97        ', N'30        ', N'47937.00 ₽')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (30, N'Спрессованный материал розовый 1x2', 1, 7, 1, N'509       ', N'26        ', N'10604.00 ₽')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (31, N'Рулон бумаги цветной 1x3', 2, 10, 3, N'149       ', N'13        ', N'22724.00 ₽')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (32, N'Рулон бумаги синий 3x2', 2, 9, 1, N'508       ', N'16        ', N'25561.00 ₽')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (33, N'Рулон бумаги зеленый 2x3', 2, 2, 1, N'181       ', N'35        ', N'45388.00 ₽')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (34, N'Гранулы для бумаги розовый 0x2', 3, 7, 3, N'37        ', N'50        ', N'17227.00 ₽')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (35, N'Переработка бумаги цветной 0x0', 4, 9, 1, N'508       ', N'19        ', N'51147.00 ₽')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (36, N'Переработка бумаги серый 0x2', 4, 3, 1, N'167       ', N'17        ', N'10248.00 ₽')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (37, N'Гранулы для бумаги цветной 0x3', 3, 10, 3, N'962       ', N'33        ', N'35922.00 ₽')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (38, N'Рулон бумаги зеленый 3x3', 2, 3, 1, N'861       ', N'45        ', N'37283.00 ₽')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (39, N'Рулон бумаги белый 0x3', 2, 2, 1, N'933       ', N'50        ', N'7253.00 ₽ ')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (40, N'Рулон бумаги синий 3x1', 2, 3, 1, N'720       ', N'11        ', N'44675.00 ₽')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (41, N'Спрессованный материал белый 3x3', 1, 8, 1, N'942       ', N'12        ', N'17600.00 ₽')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (42, N'Рулон бумаги белый 1x3', 2, 2, 3, N'382       ', N'10        ', N'32770.00 ₽')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (43, N'Переработка бумаги белый 3x0', 4, 10, 1, N'247       ', N'11        ', N'39500.00 ₽')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (44, N'Гранулы для бумаги синий 1x3', 3, 10, 2, N'841       ', N'18        ', N'38700.00 ₽')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (45, N'Спрессованный материал синий 3x1', 1, 10, 1, N'270       ', N'50        ', N'38809.00 ₽')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (46, N'Спрессованный материал цветной 0x0', 1, 6, 1, N'754       ', N'24        ', N'4611.00 ₽ ')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (47, N'Переработка бумаги цветной 0x1', 4, 8, 1, N'833       ', N'34        ', N'53875.00 ₽')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (48, N'Спрессованный материал цветной 1x0', 1, 8, 1, N'856       ', N'26        ', N'12817.00 ₽')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (49, N'Переработка бумаги синий 0x2', 4, 9, 3, N'709       ', N'47        ', N'23157.00 ₽')
INSERT [dbo].[Material] ([ID], [Name], [MaterialTypeID], [PackageAmount], [UnitTypeID], [WarehouseAmount], [MinimalAmount], [Price]) VALUES (50, N'Переработка бумаги белый 2x0', 4, 5, 1, N'794       ', N'17        ', N'21637.00 ₽')
GO
INSERT [dbo].[MaterialType] ([ID], [TypeName]) VALUES (1, N'Пресс')
INSERT [dbo].[MaterialType] ([ID], [TypeName]) VALUES (2, N'Рулон')
INSERT [dbo].[MaterialType] ([ID], [TypeName]) VALUES (3, N'Гранулы')
INSERT [dbo].[MaterialType] ([ID], [TypeName]) VALUES (4, N'Нарезка')
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (1, N'Полотенце 28М Клубника', 334385, 9208.0000, N'\products\paper_20.jpeg', 2, 2, 6)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (2, N'Набор 24М Дыня', 337632, 11471.0000, N'нет', 1, 5, 5)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (3, N'Набор 9М Бриз', 259548, 2317.0000, N'нет', 2, 4, 5)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (4, N'Набор 50М Клубника', 278721, 14220.0000, N'нет', 3, 3, 1)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (5, N'Полотенце 24М Дыня', 264493, 10479.0000, N'нет', 2, 5, 10)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (6, N'Бумага 21М Дыня', 366160, 11064.0000, N'\products\paper_2.jpeg', 4, 1, 2)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (7, N'Полотенце 37М Клубника', 292358, 3961.0000, N'нет', 5, 4, 2)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (8, N'Набор 6М Бриз', 289779, 14154.0000, N'нет', 5, 1, 6)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (9, N'Бумага 37М Клубника', 442634, 12664.0000, N'\products\paper_14.jpeg', 3, 5, 4)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (10, N'Набор 41М Дыня', 385037, 3295.0000, N'\products\paper_21.jpeg', 5, 5, 9)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (11, N'Бумага 26М Ваниль', 444337, 3007.0000, N'нет', 4, 4, 4)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (12, N'Бумага 50М Ваниль', 454479, 3163.0000, N'нет', 3, 3, 9)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (13, N'Набор 25М Бриз', 434113, 13047.0000, N'нет', 5, 4, 4)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (14, N'Бумага 32М Бриз', 379800, 6832.0000, N'нет', 3, 1, 7)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (15, N'Полотенце 41М Дыня', 239349, 6238.0000, N'нет', 3, 2, 9)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (16, N'Бумага 9М Ваниль', 446348, 13568.0000, N'нет', 3, 3, 1)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (17, N'Бумага 3М Бриз', 260492, 8278.0000, N'нет', 2, 1, 9)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (18, N'Бумага 5М Дыня', 256862, 3712.0000, N'\products\paper_5.jpeg', 5, 5, 5)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (19, N'Полотенце 16М Ваниль', 259488, 10095.0000, N'нет', 4, 3, 6)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (20, N'Бумага 44М Бриз', 422185, 6441.0000, N'нет', 5, 2, 5)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (21, N'Набор 19М Дыня', 382063, 2373.0000, N'нет', 4, 1, 7)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (22, N'Бумага 29М Клубника', 334943, 5997.0000, N'нет', 5, 1, 10)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (23, N'Полотенце 27М Дыня', 238686, 7864.0000, N'нет', 2, 2, 2)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (24, N'Набор 11М Дыня', 450659, 5956.0000, N'\products\paper_16.jpeg', 2, 3, 7)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (25, N'Полотенце 48М Клубника', 292206, 9801.0000, N'нет', 4, 3, 3)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (26, N'Полотенце 16М Бриз', 418298, 7342.0000, N'нет', 1, 2, 1)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (27, N'Полотенце 14М Клубника', 309862, 10682.0000, N'\products\paper_17.jpeg', 2, 4, 8)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (28, N'Полотенце 43М Клубника', 425641, 14151.0000, N'нет', 4, 2, 6)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (29, N'Набор 19М Бриз', 277950, 9962.0000, N'нет', 3, 5, 9)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (30, N'Набор 32М Клубника', 351062, 4450.0000, N'нет', 4, 3, 8)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (31, N'Набор 26М Дыня', 279801, 4628.0000, N'нет', 2, 2, 1)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (32, N'Бумага 15М Клубника', 449359, 10009.0000, N'нет', 2, 3, 7)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (33, N'Полотенце 45М Бриз', 303994, 13081.0000, N'\products\paper_6.jpeg', 3, 2, 1)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (34, N'Набор 50М Бриз', 414595, 10750.0000, N'\products\paper_8.jpeg', 2, 4, 6)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (35, N'Набор 16М Дыня', 376834, 11927.0000, N'нет', 5, 4, 6)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (36, N'Бумага 45М Бриз', 374276, 13605.0000, N'нет', 3, 3, 9)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (37, N'Бумага 45М Клубника', 400484, 3475.0000, N'нет', 4, 3, 4)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (38, N'Бумага 16М Дыня', 262257, 9107.0000, N'нет', 4, 5, 2)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (39, N'Набор 40М Дыня', 346154, 3427.0000, N'нет', 3, 4, 8)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (40, N'Бумага 33М Бриз', 347239, 13767.0000, N'нет', 2, 5, 9)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (41, N'Полотенце 45М Клубника', 352034, 11939.0000, N'нет', 1, 2, 5)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (42, N'Набор 43М Клубника', 443538, 13786.0000, N'нет', 5, 1, 10)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (43, N'Набор 34М Ваниль', 316033, 13533.0000, N'нет', 4, 1, 4)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (44, N'Бумага 32М Дыня', 268393, 7424.0000, N'нет', 5, 4, 3)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (45, N'Бумага 12М Бриз', 426804, 10703.0000, N'нет', 5, 1, 4)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (46, N'Полотенце 6М Ваниль', 324941, 5594.0000, N'нет', 2, 1, 2)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (47, N'Полотенце 47М Клубника', 378723, 3871.0000, N'нет', 5, 4, 2)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (48, N'Полотенце 15М Бриз', 365615, 13013.0000, N'нет', 5, 1, 6)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (49, N'Набор 9М Дыня', 440942, 2580.0000, N'нет', 5, 3, 4)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (50, N'Набор 17М Клубника', 441239, 14863.0000, N'нет', 4, 2, 10)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (51, N'Набор 5М Бриз', 278382, 7325.0000, N'нет', 2, 3, 9)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (52, N'Набор 29М Ваниль', 344868, 7618.0000, N'\products\paper_4.jpeg', 1, 1, 9)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (53, N'Набор 31М Дыня', 449401, 5236.0000, N'нет', 5, 5, 10)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (54, N'Набор 45М Бриз', 349802, 12040.0000, N'нет', 2, 1, 8)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (55, N'Бумага 13М Дыня', 348651, 3477.0000, N'нет', 1, 3, 8)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (56, N'Набор 24М Клубника', 296007, 14162.0000, N'нет', 3, 2, 3)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (57, N'Набор 10М Дыня', 431234, 3816.0000, N'\products\paper_22.jpeg', 5, 4, 9)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (58, N'Бумага 12М Клубника', 456129, 6467.0000, N'\products\paper_1.jpeg', 5, 3, 4)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (59, N'Полотенце 11М Дыня', 400418, 11660.0000, N'\products\paper_25.jpeg', 4, 2, 7)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (60, N'Набор 42М Дыня', 390914, 14344.0000, N'\products\paper_13.jpeg', 3, 5, 10)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (61, N'Бумага 5М Бриз', 345239, 9243.0000, N'нет', 5, 1, 8)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (62, N'Набор 14М Дыня', 373939, 3382.0000, N'нет', 1, 2, 3)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (63, N'Бумага 33М Клубника', 252485, 4240.0000, N'\products\paper_0.jpeg', 1, 3, 6)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (64, N'Набор 34М Клубника', 381110, 2372.0000, N'нет', 2, 3, 1)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (65, N'Полотенце 14М Дыня', 331688, 10330.0000, N'нет', 2, 2, 8)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (66, N'Бумага 40М Бриз', 326200, 12927.0000, N'\products\paper_19.jpeg', 2, 5, 1)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (67, N'Бумага 20М Клубника', 253218, 11684.0000, N'нет', 5, 2, 6)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (68, N'Бумага 50М Бриз', 340583, 6788.0000, N'\products\paper_15.jpeg', 3, 4, 7)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (69, N'Полотенце 23М Ваниль', 437519, 3317.0000, N'нет', 1, 1, 10)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (70, N'Набор 8М Дыня', 240580, 7465.0000, N'нет', 5, 5, 2)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (71, N'Бумага 10М Клубника', 275591, 13600.0000, N'\products\paper_7.jpeg', 2, 4, 8)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (72, N'Набор 41М Клубника', 281425, 9908.0000, N'\products\paper_23.jpeg', 4, 4, 6)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (73, N'Набор 10М Ваниль', 261465, 13028.0000, N'\products\paper_12.jpeg', 4, 5, 3)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (74, N'Полотенце 17М Бриз', 309067, 13825.0000, N'\products\paper_24.jpeg', 2, 1, 6)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (75, N'Полотенце 27М Ваниль', 278463, 3978.0000, N'\products\paper_10.jpeg', 2, 3, 5)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (76, N'Полотенце 50М Ваниль', 310212, 13204.0000, N'\products\paper_11.jpeg', 1, 1, 10)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (77, N'Набор 20М Бриз', 377042, 9227.0000, N'\products\paper_9.jpeg', 5, 5, 9)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (78, N'Полотенце 47М Дыня', 294441, 11460.0000, N'нет', 4, 4, 5)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (79, N'Бумага 29М Дыня', 332522, 5439.0000, N'\products\paper_18.jpeg', 1, 3, 6)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (80, N'Полотенце 44М Ваниль', 357053, 3396.0000, N'нет', 5, 5, 1)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (81, N'Полотенце 7М Ваниль', 397143, 2868.0000, N'нет', 3, 2, 9)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (82, N'Бумага 49М Бриз', 414339, 10786.0000, N'нет', 1, 1, 6)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (83, N'Полотенце 7М Бриз', 350515, 4986.0000, N'нет', 2, 2, 2)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (84, N'Полотенце 25М Бриз', 258695, 3631.0000, N'нет', 1, 1, 8)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (85, N'Полотенце 17М Ваниль', 403054, 5048.0000, N'нет', 4, 2, 9)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (86, N'Бумага 14М Бриз', 310507, 7846.0000, N'нет', 3, 1, 3)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (87, N'Набор 40М Бриз', 353930, 12767.0000, N'нет', 2, 2, 8)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (88, N'Набор 22М Клубника', 360424, 13524.0000, N'нет', 1, 4, 3)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (89, N'Бумага 13М Бриз', 349861, 3842.0000, N'нет', 2, 4, 6)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (90, N'Бумага 7М Ваниль', 290729, 6934.0000, N'нет', 4, 4, 4)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (91, N'Набор 24М Ваниль', 374263, 3907.0000, N'нет', 5, 5, 9)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (92, N'Набор 43М Дыня', 330360, 5867.0000, N'нет', 1, 5, 4)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (93, N'Полотенце 33М Бриз', 297840, 4611.0000, N'нет', 4, 4, 1)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (94, N'Набор 12М Бриз', 349614, 2551.0000, N'\products\paper_3.jpeg', 3, 1, 7)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (95, N'Бумага 38М Ваниль', 416066, 12175.0000, N'нет', 1, 2, 2)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (96, N'Бумага 20М Бриз', 285792, 14370.0000, N'нет', 3, 3, 7)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (97, N'Бумага 28М Дыня', 298632, 14671.0000, N'нет', 3, 4, 4)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (98, N'Бумага 10М Дыня', 446103, 13975.0000, N'нет', 5, 1, 3)
INSERT [dbo].[Product] ([ID], [ProductName], [Code], [MinimalPrice], [Image], [ProductTypeID], [EmployeeCount], [WorkshopNumber]) VALUES (99, N'Набор 22М Бриз', 443382, 4501.0000, N'нет', 3, 3, 5)
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (0, 3, 4, 12)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (1, 63, 24, 20)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (2, 71, 6, 1)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (3, 37, 6, 4)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (4, 58, 24, 18)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (5, 94, 6, 3)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (6, 1, 24, 9)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (7, 2, 23, 15)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (8, 63, 25, 3)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (9, 11, 39, 12)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (10, 19, 25, 20)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (11, 94, 42, 4)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (12, 47, 33, 4)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (13, 52, 39, 12)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (14, 28, 25, 8)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (15, 1, 25, 4)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (16, 59, 42, 3)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (17, 57, 42, 4)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (18, 67, 42, 6)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (19, 70, 2, 1)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (20, 70, 8, 1)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (21, 79, 38, 15)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (22, 44, 13, 3)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (23, 52, 27, 6)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (24, 11, 40, 15)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (25, 66, 13, 1)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (26, 18, 13, 6)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (27, 10, 2, 16)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (28, 92, 38, 19)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (29, 33, 21, 5)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (30, 67, 27, 6)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (31, 96, 27, 14)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (32, 16, 40, 8)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (33, 99, 2, 3)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (34, 34, 40, 6)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (35, 99, 36, 2)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (36, 55, 14, 9)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (37, 76, 13, 10)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (38, 90, 40, 15)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (39, 47, 40, 14)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (40, 41, 13, 3)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (41, 68, 8, 2)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (42, 19, 21, 4)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (43, 24, 14, 11)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (44, 33, 10, 4)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (45, 16, 22, 15)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (46, 64, 16, 1)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (47, 70, 16, 16)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (48, 92, 16, 11)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (49, 78, 16, 1)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (50, 94, 18, 20)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (51, 10, 18, 18)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (52, 40, 18, 18)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (53, 72, 18, 6)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (54, 47, 18, 3)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (55, 11, 46, 11)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (56, 58, 15, 19)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (57, 66, 12, 18)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (58, 77, 46, 19)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (59, 41, 17, 3)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (60, 76, 46, 19)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (61, 24, 12, 6)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (62, 27, 46, 7)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (63, 47, 12, 14)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (64, 64, 34, 14)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (65, 18, 34, 5)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (66, 32, 29, 15)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (67, 92, 5, 13)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (68, 67, 5, 10)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (69, 27, 5, 5)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (70, 72, 30, 20)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (71, 79, 41, 8)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (72, 11, 48, 19)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (73, 1, 3, 13)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (74, 66, 48, 18)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (75, 95, 47, 8)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (76, 40, 32, 20)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (77, 41, 32, 4)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (78, 41, 49, 14)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (79, 19, 7, 8)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (80, 77, 35, 10)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (81, 47, 28, 5)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (82, 63, 35, 1)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (83, 33, 28, 10)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (84, 18, 7, 19)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (85, 66, 32, 16)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (86, 52, 28, 17)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (88, 60, 37, 17)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (89, 76, 37, 10)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (90, 52, 44, 11)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (91, 49, 43, 4)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (92, 34, 26, 16)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (93, 71, 26, 11)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (94, 71, 11, 4)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (95, 66, 44, 12)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (96, 92, 44, 16)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (97, 95, 11, 3)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (98, 32, 43, 4)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (99, 63, 37, 10)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [MaterialAmount]) VALUES (100, 72, 44, 6)
GO
INSERT [dbo].[ProductType] ([ID], [TypeName]) VALUES (1, N'Три слоя')
INSERT [dbo].[ProductType] ([ID], [TypeName]) VALUES (2, N'Два слоя')
INSERT [dbo].[ProductType] ([ID], [TypeName]) VALUES (3, N'Детская')
INSERT [dbo].[ProductType] ([ID], [TypeName]) VALUES (4, N'Супер мягкая')
INSERT [dbo].[ProductType] ([ID], [TypeName]) VALUES (5, N'Один слой')
GO
INSERT [dbo].[UnitType] ([ID], [TypeName]) VALUES (1, N'м')
INSERT [dbo].[UnitType] ([ID], [TypeName]) VALUES (2, N'л')
INSERT [dbo].[UnitType] ([ID], [TypeName]) VALUES (3, N'кг')
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK_Material_MaterialType] FOREIGN KEY([MaterialTypeID])
REFERENCES [dbo].[MaterialType] ([ID])
GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK_Material_MaterialType]
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK_Material_UnitType] FOREIGN KEY([UnitTypeID])
REFERENCES [dbo].[UnitType] ([ID])
GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK_Material_UnitType]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductType] FOREIGN KEY([ProductTypeID])
REFERENCES [dbo].[ProductType] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductType]
GO
ALTER TABLE [dbo].[ProductMaterial]  WITH CHECK ADD  CONSTRAINT [FK_ProductMaterial_Material] FOREIGN KEY([MaterialID])
REFERENCES [dbo].[Material] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductMaterial] CHECK CONSTRAINT [FK_ProductMaterial_Material]
GO
ALTER TABLE [dbo].[ProductMaterial]  WITH CHECK ADD  CONSTRAINT [FK_ProductMaterial_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductMaterial] CHECK CONSTRAINT [FK_ProductMaterial_Product]
GO
