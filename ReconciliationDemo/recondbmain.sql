USE [master]
GO
/****** Object:  Database [ReconDB]    Script Date: 26-Aug-21 4:14:16 PM ******/
CREATE DATABASE [ReconDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ReconDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ReconDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ReconDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ReconDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ReconDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ReconDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ReconDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ReconDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ReconDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ReconDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ReconDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ReconDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ReconDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ReconDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ReconDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ReconDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ReconDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ReconDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ReconDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ReconDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ReconDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ReconDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ReconDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ReconDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ReconDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ReconDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ReconDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ReconDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ReconDB] SET RECOVERY FULL 
GO
ALTER DATABASE [ReconDB] SET  MULTI_USER 
GO
ALTER DATABASE [ReconDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ReconDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ReconDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ReconDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ReconDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ReconDB', N'ON'
GO
ALTER DATABASE [ReconDB] SET QUERY_STORE = OFF
GO
USE [ReconDB]
GO
/****** Object:  Table [dbo].[Bookkeeping]    Script Date: 26-Aug-21 4:14:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bookkeeping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[YearMonth] [datetime] NULL,
	[IncomeOrExpenseTypeId] [int] NULL,
	[Amount] [decimal](20, 2) NULL,
 CONSTRAINT [PK_Bookkeeping] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IncomeOrExpense]    Script Date: 26-Aug-21 4:14:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IncomeOrExpense](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IncomeOrExpenseTypeId] [int] NULL,
	[YearMonth] [datetime] NULL,
	[Amount] [decimal](20, 2) NULL,
 CONSTRAINT [PK_IncomeOrExpense] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IncomeOrExpenseType]    Script Date: 26-Aug-21 4:14:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IncomeOrExpenseType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Type] [int] NULL,
 CONSTRAINT [PK_IncomeOrExpenseType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Bookkeeping] ON 

INSERT [dbo].[Bookkeeping] ([Id], [YearMonth], [IncomeOrExpenseTypeId], [Amount]) VALUES (1, CAST(N'2021-01-01T00:00:00.000' AS DateTime), 1, CAST(1200.00 AS Decimal(20, 2)))
INSERT [dbo].[Bookkeeping] ([Id], [YearMonth], [IncomeOrExpenseTypeId], [Amount]) VALUES (2, CAST(N'2021-02-01T00:00:00.000' AS DateTime), 2, CAST(200.00 AS Decimal(20, 2)))
INSERT [dbo].[Bookkeeping] ([Id], [YearMonth], [IncomeOrExpenseTypeId], [Amount]) VALUES (3, CAST(N'2021-03-01T00:00:00.000' AS DateTime), 3, CAST(200.00 AS Decimal(20, 2)))
INSERT [dbo].[Bookkeeping] ([Id], [YearMonth], [IncomeOrExpenseTypeId], [Amount]) VALUES (4, CAST(N'2021-03-01T00:00:00.000' AS DateTime), 4, CAST(200.00 AS Decimal(20, 2)))
INSERT [dbo].[Bookkeeping] ([Id], [YearMonth], [IncomeOrExpenseTypeId], [Amount]) VALUES (5, CAST(N'2021-02-01T00:00:00.000' AS DateTime), 5, CAST(201.00 AS Decimal(20, 2)))
INSERT [dbo].[Bookkeeping] ([Id], [YearMonth], [IncomeOrExpenseTypeId], [Amount]) VALUES (6, CAST(N'2021-02-01T00:00:00.000' AS DateTime), 6, CAST(200.00 AS Decimal(20, 2)))
INSERT [dbo].[Bookkeeping] ([Id], [YearMonth], [IncomeOrExpenseTypeId], [Amount]) VALUES (7, CAST(N'2021-02-01T00:00:00.000' AS DateTime), 7, CAST(210.00 AS Decimal(20, 2)))
INSERT [dbo].[Bookkeeping] ([Id], [YearMonth], [IncomeOrExpenseTypeId], [Amount]) VALUES (8, CAST(N'2021-02-01T00:00:00.000' AS DateTime), 4, CAST(202.00 AS Decimal(20, 2)))
INSERT [dbo].[Bookkeeping] ([Id], [YearMonth], [IncomeOrExpenseTypeId], [Amount]) VALUES (9, CAST(N'2021-03-01T00:00:00.000' AS DateTime), 1, CAST(100.00 AS Decimal(20, 2)))
INSERT [dbo].[Bookkeeping] ([Id], [YearMonth], [IncomeOrExpenseTypeId], [Amount]) VALUES (10, CAST(N'2021-06-01T00:00:00.000' AS DateTime), 7, CAST(101.00 AS Decimal(20, 2)))
INSERT [dbo].[Bookkeeping] ([Id], [YearMonth], [IncomeOrExpenseTypeId], [Amount]) VALUES (11, CAST(N'2021-04-01T00:00:00.000' AS DateTime), 4, CAST(150.00 AS Decimal(20, 2)))
INSERT [dbo].[Bookkeeping] ([Id], [YearMonth], [IncomeOrExpenseTypeId], [Amount]) VALUES (12, CAST(N'2021-05-01T00:00:00.000' AS DateTime), 4, CAST(130.00 AS Decimal(20, 2)))
INSERT [dbo].[Bookkeeping] ([Id], [YearMonth], [IncomeOrExpenseTypeId], [Amount]) VALUES (13, CAST(N'2021-04-01T00:00:00.000' AS DateTime), 3, CAST(250.00 AS Decimal(20, 2)))
INSERT [dbo].[Bookkeeping] ([Id], [YearMonth], [IncomeOrExpenseTypeId], [Amount]) VALUES (14, CAST(N'2021-01-01T00:00:00.000' AS DateTime), 4, CAST(100.00 AS Decimal(20, 2)))
INSERT [dbo].[Bookkeeping] ([Id], [YearMonth], [IncomeOrExpenseTypeId], [Amount]) VALUES (15, CAST(N'2021-06-01T00:00:00.000' AS DateTime), 5, CAST(301.00 AS Decimal(20, 2)))
INSERT [dbo].[Bookkeeping] ([Id], [YearMonth], [IncomeOrExpenseTypeId], [Amount]) VALUES (16, CAST(N'2021-03-01T00:00:00.000' AS DateTime), 5, CAST(20.00 AS Decimal(20, 2)))
INSERT [dbo].[Bookkeeping] ([Id], [YearMonth], [IncomeOrExpenseTypeId], [Amount]) VALUES (17, CAST(N'2021-01-01T00:00:00.000' AS DateTime), 2, CAST(60.00 AS Decimal(20, 2)))
INSERT [dbo].[Bookkeeping] ([Id], [YearMonth], [IncomeOrExpenseTypeId], [Amount]) VALUES (18, CAST(N'2021-05-01T00:00:00.000' AS DateTime), 1, CAST(56.00 AS Decimal(20, 2)))
INSERT [dbo].[Bookkeeping] ([Id], [YearMonth], [IncomeOrExpenseTypeId], [Amount]) VALUES (19, CAST(N'2021-03-01T00:00:00.000' AS DateTime), 2, CAST(350.00 AS Decimal(20, 2)))
INSERT [dbo].[Bookkeeping] ([Id], [YearMonth], [IncomeOrExpenseTypeId], [Amount]) VALUES (20, CAST(N'2021-02-01T00:00:00.000' AS DateTime), 1, CAST(570.00 AS Decimal(20, 2)))
INSERT [dbo].[Bookkeeping] ([Id], [YearMonth], [IncomeOrExpenseTypeId], [Amount]) VALUES (21, CAST(N'2021-03-01T00:00:00.000' AS DateTime), 6, CAST(100.00 AS Decimal(20, 2)))
INSERT [dbo].[Bookkeeping] ([Id], [YearMonth], [IncomeOrExpenseTypeId], [Amount]) VALUES (22, CAST(N'2021-03-01T00:00:00.000' AS DateTime), 7, CAST(120.00 AS Decimal(20, 2)))
INSERT [dbo].[Bookkeeping] ([Id], [YearMonth], [IncomeOrExpenseTypeId], [Amount]) VALUES (23, CAST(N'2021-04-01T00:00:00.000' AS DateTime), 1, CAST(500.00 AS Decimal(20, 2)))
INSERT [dbo].[Bookkeeping] ([Id], [YearMonth], [IncomeOrExpenseTypeId], [Amount]) VALUES (24, CAST(N'2021-06-01T00:00:00.000' AS DateTime), 1, CAST(170.00 AS Decimal(20, 2)))
INSERT [dbo].[Bookkeeping] ([Id], [YearMonth], [IncomeOrExpenseTypeId], [Amount]) VALUES (25, CAST(N'2021-04-01T00:00:00.000' AS DateTime), 2, CAST(120.00 AS Decimal(20, 2)))
INSERT [dbo].[Bookkeeping] ([Id], [YearMonth], [IncomeOrExpenseTypeId], [Amount]) VALUES (26, CAST(N'2021-04-01T00:00:00.000' AS DateTime), 7, CAST(70.00 AS Decimal(20, 2)))
INSERT [dbo].[Bookkeeping] ([Id], [YearMonth], [IncomeOrExpenseTypeId], [Amount]) VALUES (27, CAST(N'2021-08-01T00:00:00.000' AS DateTime), 1, CAST(100.00 AS Decimal(20, 2)))
INSERT [dbo].[Bookkeeping] ([Id], [YearMonth], [IncomeOrExpenseTypeId], [Amount]) VALUES (28, CAST(N'2021-06-01T00:00:00.000' AS DateTime), 6, CAST(560.00 AS Decimal(20, 2)))
INSERT [dbo].[Bookkeeping] ([Id], [YearMonth], [IncomeOrExpenseTypeId], [Amount]) VALUES (29, CAST(N'2021-08-01T00:00:00.000' AS DateTime), 2, CAST(250.00 AS Decimal(20, 2)))
INSERT [dbo].[Bookkeeping] ([Id], [YearMonth], [IncomeOrExpenseTypeId], [Amount]) VALUES (30, CAST(N'2021-07-01T00:00:00.000' AS DateTime), 5, CAST(100.00 AS Decimal(20, 2)))
INSERT [dbo].[Bookkeeping] ([Id], [YearMonth], [IncomeOrExpenseTypeId], [Amount]) VALUES (31, CAST(N'2021-09-01T00:00:00.000' AS DateTime), 1, CAST(50.00 AS Decimal(20, 2)))
INSERT [dbo].[Bookkeeping] ([Id], [YearMonth], [IncomeOrExpenseTypeId], [Amount]) VALUES (32, CAST(N'2021-08-01T00:00:00.000' AS DateTime), 3, CAST(100.00 AS Decimal(20, 2)))
INSERT [dbo].[Bookkeeping] ([Id], [YearMonth], [IncomeOrExpenseTypeId], [Amount]) VALUES (33, CAST(N'2021-09-01T00:00:00.000' AS DateTime), 4, CAST(200.00 AS Decimal(20, 2)))
INSERT [dbo].[Bookkeeping] ([Id], [YearMonth], [IncomeOrExpenseTypeId], [Amount]) VALUES (34, CAST(N'2021-01-01T00:00:00.000' AS DateTime), 6, CAST(200.00 AS Decimal(20, 2)))
INSERT [dbo].[Bookkeeping] ([Id], [YearMonth], [IncomeOrExpenseTypeId], [Amount]) VALUES (35, CAST(N'2021-08-01T00:00:00.000' AS DateTime), 5, CAST(150.00 AS Decimal(20, 2)))
INSERT [dbo].[Bookkeeping] ([Id], [YearMonth], [IncomeOrExpenseTypeId], [Amount]) VALUES (36, CAST(N'2021-06-01T00:00:00.000' AS DateTime), 4, CAST(560.00 AS Decimal(20, 2)))
INSERT [dbo].[Bookkeeping] ([Id], [YearMonth], [IncomeOrExpenseTypeId], [Amount]) VALUES (37, CAST(N'2020-01-01T00:00:00.000' AS DateTime), 1, CAST(500.00 AS Decimal(20, 2)))
INSERT [dbo].[Bookkeeping] ([Id], [YearMonth], [IncomeOrExpenseTypeId], [Amount]) VALUES (38, CAST(N'2020-04-01T00:00:00.000' AS DateTime), 3, CAST(150.00 AS Decimal(20, 2)))
INSERT [dbo].[Bookkeeping] ([Id], [YearMonth], [IncomeOrExpenseTypeId], [Amount]) VALUES (39, CAST(N'2021-04-01T00:00:00.000' AS DateTime), 6, CAST(150.00 AS Decimal(20, 2)))
SET IDENTITY_INSERT [dbo].[Bookkeeping] OFF
GO
SET IDENTITY_INSERT [dbo].[IncomeOrExpense] ON 

INSERT [dbo].[IncomeOrExpense] ([Id], [IncomeOrExpenseTypeId], [YearMonth], [Amount]) VALUES (1, 1, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(200.00 AS Decimal(20, 2)))
INSERT [dbo].[IncomeOrExpense] ([Id], [IncomeOrExpenseTypeId], [YearMonth], [Amount]) VALUES (2, 2, CAST(N'2021-02-01T00:00:00.000' AS DateTime), CAST(350.00 AS Decimal(20, 2)))
INSERT [dbo].[IncomeOrExpense] ([Id], [IncomeOrExpenseTypeId], [YearMonth], [Amount]) VALUES (3, 3, CAST(N'2021-03-01T00:00:00.000' AS DateTime), CAST(450.00 AS Decimal(20, 2)))
INSERT [dbo].[IncomeOrExpense] ([Id], [IncomeOrExpenseTypeId], [YearMonth], [Amount]) VALUES (4, 4, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(300.00 AS Decimal(20, 2)))
INSERT [dbo].[IncomeOrExpense] ([Id], [IncomeOrExpenseTypeId], [YearMonth], [Amount]) VALUES (5, 5, CAST(N'2021-02-01T00:00:00.000' AS DateTime), CAST(150.00 AS Decimal(20, 2)))
INSERT [dbo].[IncomeOrExpense] ([Id], [IncomeOrExpenseTypeId], [YearMonth], [Amount]) VALUES (6, 6, CAST(N'2021-03-01T00:00:00.000' AS DateTime), CAST(750.00 AS Decimal(20, 2)))
INSERT [dbo].[IncomeOrExpense] ([Id], [IncomeOrExpenseTypeId], [YearMonth], [Amount]) VALUES (7, 7, CAST(N'2021-04-01T00:00:00.000' AS DateTime), CAST(100.00 AS Decimal(20, 2)))
INSERT [dbo].[IncomeOrExpense] ([Id], [IncomeOrExpenseTypeId], [YearMonth], [Amount]) VALUES (8, 1, CAST(N'2021-04-01T00:00:00.000' AS DateTime), CAST(200.00 AS Decimal(20, 2)))
INSERT [dbo].[IncomeOrExpense] ([Id], [IncomeOrExpenseTypeId], [YearMonth], [Amount]) VALUES (9, 2, CAST(N'2021-05-01T00:00:00.000' AS DateTime), CAST(350.00 AS Decimal(20, 2)))
INSERT [dbo].[IncomeOrExpense] ([Id], [IncomeOrExpenseTypeId], [YearMonth], [Amount]) VALUES (10, 3, CAST(N'2021-06-01T00:00:00.000' AS DateTime), CAST(450.00 AS Decimal(20, 2)))
INSERT [dbo].[IncomeOrExpense] ([Id], [IncomeOrExpenseTypeId], [YearMonth], [Amount]) VALUES (11, 1, CAST(N'2021-07-01T00:00:00.000' AS DateTime), CAST(200.00 AS Decimal(20, 2)))
INSERT [dbo].[IncomeOrExpense] ([Id], [IncomeOrExpenseTypeId], [YearMonth], [Amount]) VALUES (12, 2, CAST(N'2021-08-01T00:00:00.000' AS DateTime), CAST(350.00 AS Decimal(20, 2)))
INSERT [dbo].[IncomeOrExpense] ([Id], [IncomeOrExpenseTypeId], [YearMonth], [Amount]) VALUES (13, 3, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(450.00 AS Decimal(20, 2)))
INSERT [dbo].[IncomeOrExpense] ([Id], [IncomeOrExpenseTypeId], [YearMonth], [Amount]) VALUES (14, 1, CAST(N'2021-10-01T00:00:00.000' AS DateTime), CAST(200.00 AS Decimal(20, 2)))
INSERT [dbo].[IncomeOrExpense] ([Id], [IncomeOrExpenseTypeId], [YearMonth], [Amount]) VALUES (15, 2, CAST(N'2021-11-01T00:00:00.000' AS DateTime), CAST(350.00 AS Decimal(20, 2)))
INSERT [dbo].[IncomeOrExpense] ([Id], [IncomeOrExpenseTypeId], [YearMonth], [Amount]) VALUES (16, 3, CAST(N'2021-12-01T00:00:00.000' AS DateTime), CAST(450.00 AS Decimal(20, 2)))
INSERT [dbo].[IncomeOrExpense] ([Id], [IncomeOrExpenseTypeId], [YearMonth], [Amount]) VALUES (17, 4, CAST(N'2021-05-01T00:00:00.000' AS DateTime), CAST(300.00 AS Decimal(20, 2)))
INSERT [dbo].[IncomeOrExpense] ([Id], [IncomeOrExpenseTypeId], [YearMonth], [Amount]) VALUES (18, 5, CAST(N'2021-06-01T00:00:00.000' AS DateTime), CAST(150.00 AS Decimal(20, 2)))
INSERT [dbo].[IncomeOrExpense] ([Id], [IncomeOrExpenseTypeId], [YearMonth], [Amount]) VALUES (19, 6, CAST(N'2021-07-01T00:00:00.000' AS DateTime), CAST(750.00 AS Decimal(20, 2)))
INSERT [dbo].[IncomeOrExpense] ([Id], [IncomeOrExpenseTypeId], [YearMonth], [Amount]) VALUES (20, 7, CAST(N'2021-08-01T00:00:00.000' AS DateTime), CAST(100.00 AS Decimal(20, 2)))
INSERT [dbo].[IncomeOrExpense] ([Id], [IncomeOrExpenseTypeId], [YearMonth], [Amount]) VALUES (21, 4, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(300.00 AS Decimal(20, 2)))
INSERT [dbo].[IncomeOrExpense] ([Id], [IncomeOrExpenseTypeId], [YearMonth], [Amount]) VALUES (22, 5, CAST(N'2021-10-01T00:00:00.000' AS DateTime), CAST(150.00 AS Decimal(20, 2)))
INSERT [dbo].[IncomeOrExpense] ([Id], [IncomeOrExpenseTypeId], [YearMonth], [Amount]) VALUES (23, 6, CAST(N'2021-11-01T00:00:00.000' AS DateTime), CAST(750.00 AS Decimal(20, 2)))
INSERT [dbo].[IncomeOrExpense] ([Id], [IncomeOrExpenseTypeId], [YearMonth], [Amount]) VALUES (24, 7, CAST(N'2021-12-01T00:00:00.000' AS DateTime), CAST(100.00 AS Decimal(20, 2)))
SET IDENTITY_INSERT [dbo].[IncomeOrExpense] OFF
GO
SET IDENTITY_INSERT [dbo].[IncomeOrExpenseType] ON 

INSERT [dbo].[IncomeOrExpenseType] ([Id], [Name], [Type]) VALUES (1, N'Type 1', 1)
INSERT [dbo].[IncomeOrExpenseType] ([Id], [Name], [Type]) VALUES (2, N'Type 2', 1)
INSERT [dbo].[IncomeOrExpenseType] ([Id], [Name], [Type]) VALUES (3, N'Type 3', 1)
INSERT [dbo].[IncomeOrExpenseType] ([Id], [Name], [Type]) VALUES (4, N'Type 1', 2)
INSERT [dbo].[IncomeOrExpenseType] ([Id], [Name], [Type]) VALUES (5, N'Type 2', 2)
INSERT [dbo].[IncomeOrExpenseType] ([Id], [Name], [Type]) VALUES (6, N'Type 3', 2)
INSERT [dbo].[IncomeOrExpenseType] ([Id], [Name], [Type]) VALUES (7, N'Type 4', 2)
SET IDENTITY_INSERT [dbo].[IncomeOrExpenseType] OFF
GO
/****** Object:  StoredProcedure [dbo].[GetBookkeepingData]    Script Date: 26-Aug-21 4:14:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetBookkeepingData] 
	@Year int = 0,
	@Type int = 0
AS
BEGIN
	--exec GetBookkeepingData 2021,1
	Declare @Income table (Id int,Amount decimal(20,2), YearMonth datetime,TypeId int,TypeName nvarchar(100),Type int,TypeText nvarchar(10))
	insert into @Income(Id,Amount,YearMonth,TypeId,TypeName,Type,TypeText)
	select IE.Id,IE.Amount,IE.YearMonth,IET.Id as TypeId,IET.Name as TypeName,Type,CASE WHEN Type=1 THEN 'Income' WHEN Type=2 THEN 'Expense' end as TypeText  from Bookkeeping IE
	inner join  IncomeOrExpenseType IET on IET.Id=IE.IncomeOrExpenseTypeId where Type=@Type
	Declare @CombinedResult Table ([Type] int,TypeText nvarchar(10),TypeId int,TypeName nvarchar(100), January decimal(20,2),February decimal(20,2),March decimal(20,2),April decimal(20,2),May decimal(20,2),June decimal(20,2),July decimal(20,2),August decimal(20,2),September decimal(20,2),October decimal(20,2),November decimal(20,2),December decimal(20,2))
	insert into @CombinedResult
	SELECT *
	FROM (select Type as [Type],TypeText,TypeId,TypeName,
	Datename(MONTH,YearMonth) [Month],	
	ISNULL(Sum(Amount),0) SumAmount from @Income where YEAR(YearMonth)=@Year
	group by Datename(MONTH,YearMonth),year(YearMonth),MONTH(YearMonth),TypeId,TypeName,TypeText,Type) AS MontlySalesData
	PIVOT(SUM(SumAmount)   
		FOR Month IN ([January],[February],[March],[April],[May],
		[June],[July],[August],[September],[October],[November],
		[December])) AS MNamePivot

	
	if EXISTS(select * from @CombinedResult)
	BEGIN
		select @Type as Type
		,CASE WHEN @Type=1 THEN 'Income' WHEN @Type=2 THEN 'Expense' end as TypeText		
		,IET.Id as TypeId
		,IET.Name as TypeName
		,ISNULL(C.January,0) as January
		,ISNULL(C.February,0) as February
		,ISNULL(C.March,0) as March
		,ISNULL(C.April,0) as April
		,ISNULL(C.May,0) as May
		,ISNULL(C.June,0) as June
		,ISNULL(C.July,0) as July
		,ISNULL(C.August,0) as August
		,ISNULL(C.September,0) as September
		,ISNULL(C.October,0) as October
		,ISNULL(C.November,0) as November
		,ISNULL(C.December,0) as December
		from IncomeOrExpenseType IET
		left join @CombinedResult C on C.TypeId=IET.Id
		where IET.Type=@Type
	END
	ELSE
	BEGIN
		select @Type as Type
		,CASE WHEN @Type=1 THEN 'Income' WHEN @Type=2 THEN 'Expense' end as TypeText
		,IET.Name as TypeName
		,IET.Id as TypeId
		,0 as January
		,0 as February
		,0 as March
		,0 as April
		,0 as May
		,0 as June
		,0 as July
		,0 as August
		,0 as September
		,0 as October
		,0 as November
		,0 as December
		from IncomeOrExpenseType IET where Type=@Type
	END
	
	select ISNULL(Sum(January),0) January
	,ISNULL(Sum(February),0) February
	,ISNULL(Sum(March),0) March
	,ISNULL(Sum(April),0) April
	,ISNULL(Sum(May),0) May
	,ISNULL(Sum(June),0) June
	,ISNULL(Sum(July),0) July
	,ISNULL(Sum(August),0) August
	,ISNULL(Sum(September),0) September
	,ISNULL(Sum(October),0) October
	,ISNULL(Sum(November),0) November
	,ISNULL(Sum(December),0) December  from @CombinedResult as SumOfType
END
GO
/****** Object:  StoredProcedure [dbo].[GetReadOnlyData]    Script Date: 26-Aug-21 4:14:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetReadOnlyData]
	@Year int = 0,
	@Type int = 0
AS
BEGIN
	--exec GetReadOnlyData 2019,2
	Declare @Income table (Id int,Amount decimal(20,2), YearMonth datetime)	
	Declare @Expense table (Id int,Amount decimal(20,2), YearMonth datetime)		
	Declare @CombinedResult Table (Type nvarchar(100),January decimal(20,2),February decimal(20,2),March decimal(20,2),April decimal(20,2),May decimal(20,2),June decimal(20,2),July decimal(20,2),August decimal(20,2),September decimal(20,2),October decimal(20,2),November decimal(20,2),December decimal(20,2))
	
	IF(@Type=1)
	BEGIN
		insert into @Income(Id,Amount,YearMonth)
		select IE.Id,IE.Amount,IE.YearMonth from IncomeOrExpense IE
		inner join  IncomeOrExpenseType IET on IET.Id=IE.IncomeOrExpenseTypeId where IET.Type=1

		insert into @CombinedResult
		SELECT *
		FROM (select 'Income' as Income,
		Datename(MONTH,YearMonth) [Month],
		ISNULL(Sum(Amount),0) SumAmount from @Income where YEAR(YearMonth)=@Year
		group by Datename(MONTH,YearMonth),year(YearMonth),MONTH(YearMonth)) AS MontlySalesData
		PIVOT(SUM(SumAmount)   
		FOR Month IN ([January],[February],[March],[April],[May],
		[June],[July],[August],[September],[October],[November],
		[December])) AS MNamePivot
	END
	IF(@Type=2)
	BEGIN
		insert into @Expense(Id,Amount,YearMonth)
		select IE.Id,IE.Amount,IE.YearMonth from IncomeOrExpense IE
		inner join  IncomeOrExpenseType IET on IET.Id=IE.IncomeOrExpenseTypeId where IET.Type=2

		Insert into @CombinedResult
		SELECT *
		FROM (select 'Expense' as Expense,
		Datename(MONTH,YearMonth) [Month],
		ISNULL(Sum(Amount),0) SumAmount from @Expense where YEAR(YearMonth)=@Year
		group by Datename(MONTH,YearMonth),year(YearMonth),MONTH(YearMonth)) AS MontlySalesData
		PIVOT( SUM(SumAmount)   
		FOR Month IN ([January],[February],[March],[April],[May],
		[June],[July],[August],[September],[October],[November],
		[December])) AS MNamePivot
		
	END
		declare @TypeText nvarchar(10) = ''
			set @TypeText = CASE WHEN @Type=1 THEN 'Income' WHEN @Type=2 THEN 'Expense' end
		IF EXISTS(Select * from @CombinedResult)
		BEGIN			
			select @TypeText as Type
			,ISNULL(January,0) January
			,ISNULL(February,0) February
			,ISNULL(March,0) March
			,ISNULL(April,0) April
			,ISNULL(May,0) May
			,ISNULL(June,0) June
			,ISNULL(July,0) July
			,ISNULL(August,0) August
			,ISNULL(September,0) September
			,ISNULL(October,0) October
			,ISNULL(November,0) November
			,ISNULL(December,0) December
			from @CombinedResult
		END
		ELSE
		BEGIN
			select @TypeText as Type
			,0 January
			,0 February
			,0 March
			,0 April
			,0 May
			,0 June
			,0 July
			,0 August
			,0 September
			,0 October
			,0 November
			,0 December
		END
	--Insert into @CombinedResult
	--SELECT *
	--FROM (select 'Cumulative Income' as CumulativeIncome,
	--	   Datename(MONTH,YearMonth) [Month],
	--	   sum(ISNULL(Sum(Amount),0)) over (order by MONTH(YearMonth)) as Cumulative
	--from @Income where Year(YearMonth)=@Year
	--group by Datename(MONTH,YearMonth),year(YearMonth),MONTH(YearMonth))  AS MontlySalesData
	--PIVOT(SUM(Cumulative)   
	--	FOR Month IN ([January],[February],[March],[April],[May],
	--	[June],[July],[August],[September],[October],[November],
	--	[December])) AS MNamePivot
		
	--Insert into @CombinedResult
	--SELECT *
	--FROM (select 'Cumulative Expense' as CumulaitveExpense,
	--	   Datename(MONTH,YearMonth) [Month],
	--	   sum(ISNULL(sum(Amount),0)) over (order by MONTH(YearMonth)) as Cumulative
	--from @Expense where Year(YearMonth)=@Year
	--group by Datename(MONTH,YearMonth),year(YearMonth),MONTH(YearMonth))  AS MontlySalesData
	--PIVOT(SUM(Cumulative)   
	--	FOR Month IN ([January],[February],[March],[April],[May],
	--	[June],[July],[August],[September],[October],[November],
	--	[December])) AS MNamePivot

END

GO
/****** Object:  StoredProcedure [dbo].[GetReconciliationSummaryData]    Script Date: 26-Aug-21 4:14:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetReconciliationSummaryData]
	@Year int = 0
AS
BEGIN
	exec GetReconciliationSummaryData 2021
	Declare @Income table (Id int,Amount decimal(20,2), YearMonth datetime,TypeId int,TypeName nvarchar(100),Type int,TypeText nvarchar(10))
	insert into @Income(Id,Amount,YearMonth,TypeId,TypeName,Type,TypeText)
	select IE.Id,IE.Amount,IE.YearMonth,IET.Id as TypeId,IET.Name as TypeName,Type,CASE WHEN Type=1 THEN 'Income' WHEN Type=2 THEN 'Expense' end as TypeText  from Bookkeeping IE
	inner join  IncomeOrExpenseType IET on IET.Id=IE.IncomeOrExpenseTypeId where Type=1
	Declare @Expense table (Id int,Amount decimal(20,2), YearMonth datetime,TypeId int,TypeName nvarchar(100),Type int,TypeText nvarchar(10))
	insert into @Income(Id,Amount,YearMonth,TypeId,TypeName,Type,TypeText)
	select IE.Id,IE.Amount,IE.YearMonth,IET.Id as TypeId,IET.Name as TypeName,Type,CASE WHEN Type=1 THEN 'Income' WHEN Type=2 THEN 'Expense' end as TypeText  from Bookkeeping IE
	inner join  IncomeOrExpenseType IET on IET.Id=IE.IncomeOrExpenseTypeId where Type=2
	Declare @IncomeCombinedResult Table ([Type] int,TypeText nvarchar(10),TypeId int,TypeName nvarchar(100), January decimal(20,2),February decimal(20,2),March decimal(20,2),April decimal(20,2),May decimal(20,2),June decimal(20,2),July decimal(20,2),August decimal(20,2),September decimal(20,2),October decimal(20,2),November decimal(20,2),December decimal(20,2))
	Declare @ExpenseCombinedResult Table ([Type] int,TypeText nvarchar(10),TypeId int,TypeName nvarchar(100), January decimal(20,2),February decimal(20,2),March decimal(20,2),April decimal(20,2),May decimal(20,2),June decimal(20,2),July decimal(20,2),August decimal(20,2),September decimal(20,2),October decimal(20,2),November decimal(20,2),December decimal(20,2))
	Declare @TotalIncome  Table (January decimal(20,2),February decimal(20,2),March decimal(20,2),April decimal(20,2),May decimal(20,2),June decimal(20,2),July decimal(20,2),August decimal(20,2),September decimal(20,2),October decimal(20,2),November decimal(20,2),December decimal(20,2))
	Declare @TotalExpense  Table (January decimal(20,2),February decimal(20,2),March decimal(20,2),April decimal(20,2),May decimal(20,2),June decimal(20,2),July decimal(20,2),August decimal(20,2),September decimal(20,2),October decimal(20,2),November decimal(20,2),December decimal(20,2))


	insert into @IncomeCombinedResult
	SELECT *
	FROM (select Type as [Type],TypeText,TypeId,TypeName,
	Datename(MONTH,YearMonth) [Month],	
	ISNULL(Sum(Amount),0) SumAmount from @Income where YEAR(YearMonth)=@Year
	group by Datename(MONTH,YearMonth),year(YearMonth),MONTH(YearMonth),TypeId,TypeName,TypeText,Type) AS MontlySalesData
	PIVOT(SUM(SumAmount)   
		FOR Month IN ([January],[February],[March],[April],[May],
		[June],[July],[August],[September],[October],[November],
		[December])) AS MNamePivot

	insert into @ExpenseCombinedResult	
	SELECT *
	FROM (select Type as [Type],TypeText,TypeId,TypeName,
	Datename(MONTH,YearMonth) [Month],	
	ISNULL(Sum(Amount),0) SumAmount from @Expense where YEAR(YearMonth)=@Year
	group by Datename(MONTH,YearMonth),year(YearMonth),MONTH(YearMonth),TypeId,TypeName,TypeText,Type) AS MontlySalesData
	PIVOT(SUM(SumAmount)   
		FOR Month IN ([January],[February],[March],[April],[May],
		[June],[July],[August],[September],[October],[November],
		[December])) AS MNamePivot

    select SUM(January),Sum(February),Sum(March),SUM(April),SUm(May),SUm(June),SUM(July),SUM(August),SUM(September),SUM(October),SUM(November),SUM(December) from @IncomeCombinedResult
	select SUM(January),Sum(February),Sum(March),SUM(April),SUm(May),SUm(June),SUM(July),SUM(August),SUM(September),SUM(October),SUM(November),SUM(December) from @ExpenseCombinedResult
END
GO
/****** Object:  StoredProcedure [dbo].[SaveOrUpdateBookkeepingValue]    Script Date: 26-Aug-21 4:14:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveOrUpdateBookkeepingValue]
	@Month int = 0,
	@Year int = 0,
	@TypeId int = 0,
	@Amount decimal(20,2)=0
AS
BEGIN
	IF EXISTS(select top(1)* from Bookkeeping B where B.IncomeOrExpenseTypeId=@TypeId and YEAR(YearMonth)=@Year and MONTH(YearMonth)=@Month)
	BEGIN
		update top(1) Bookkeeping set Amount=@Amount where IncomeOrExpenseTypeId=@TypeId and YEAR(YearMonth)=@Year and MONTH(YearMonth)=@Month
	END
	ELSE
	BEGIN
		insert into Bookkeeping (IncomeOrExpenseTypeId,Amount,YearMonth) values
		(@TypeId,@Amount,DATETIMEFROMPARTS(@Year,@Month,1,0,0,0,0))
	END
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Income = 1, Expense = 2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IncomeOrExpenseType', @level2type=N'COLUMN',@level2name=N'Type'
GO
USE [master]
GO
ALTER DATABASE [ReconDB] SET  READ_WRITE 
GO
