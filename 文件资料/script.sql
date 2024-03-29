USE [master]
GO
/****** Object:  Database [Student]    Script Date: 2020/6/23 18:35:32 ******/
CREATE DATABASE [Student]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Student', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Student.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Student_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Student_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Student].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Student] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Student] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Student] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Student] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Student] SET ARITHABORT OFF 
GO
ALTER DATABASE [Student] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Student] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Student] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Student] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Student] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Student] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Student] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Student] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Student] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Student] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Student] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Student] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Student] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Student] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Student] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Student] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Student] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Student] SET RECOVERY FULL 
GO
ALTER DATABASE [Student] SET  MULTI_USER 
GO
ALTER DATABASE [Student] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Student] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Student] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Student] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Student', N'ON'
GO
USE [Student]
GO
/****** Object:  Table [dbo].[Announcement]    Script Date: 2020/6/23 18:35:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Announcement](
	[Ann_Title] [varchar](50) NULL,
	[Ann_Content] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupInfo]    Script Date: 2020/6/23 18:35:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupInfo](
	[G_ID] [int] NOT NULL,
	[G_Name] [varchar](50) NOT NULL,
	[Leader_ID] [int] NOT NULL,
	[Mem_A] [int] NULL,
	[Mem_B] [int] NULL,
	[Mem_C] [int] NULL,
	[T_ID] [int] NULL,
	[Sub_ID] [int] NULL,
	[is_Applying] [varchar](50) NOT NULL,
	[F_Choice] [int] NULL,
	[F_Agreed] [varchar](50) NULL,
	[S_Choice] [int] NULL,
	[S_Agreed] [varchar](50) NULL,
	[T_Choice] [int] NULL,
	[T_Agreed] [varchar](50) NULL,
 CONSTRAINT [PK_GroupInfo] PRIMARY KEY CLUSTERED 
(
	[G_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 2020/6/23 18:35:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[S_ID] [int] NOT NULL,
	[S_Name] [varchar](50) NOT NULL,
	[S_Grade] [int] NOT NULL,
	[S_Class] [int] NOT NULL,
	[S_Major] [varchar](50) NOT NULL,
	[S_Ori] [varchar](50) NOT NULL,
	[S_Score] [int] NOT NULL,
	[S_Info] [varchar](50) NULL,
	[G_ID] [int] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[S_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 2020/6/23 18:35:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[Sub_ID] [int] NOT NULL,
	[Leader_ID] [int] NOT NULL,
	[T_ID] [int] NULL,
	[Sub_Name] [varchar](50) NOT NULL,
	[KeyWord] [varchar](50) NULL,
	[Sub_Classification] [varchar](50) NOT NULL,
	[Sub_Catagory] [varchar](50) NOT NULL,
	[Study_Type] [varchar](50) NOT NULL,
	[Work_Unit] [varchar](50) NOT NULL,
	[System] [varchar](50) NOT NULL,
	[Sub_Desc] [varchar](50) NOT NULL,
	[is_Agreed] [varchar](50) NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[Sub_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 2020/6/23 18:35:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[T_ID] [int] NOT NULL,
	[T_Name] [varchar](50) NOT NULL,
	[T_Major] [varchar](50) NOT NULL,
	[T_Ori] [varchar](50) NOT NULL,
	[T_Info] [varchar](50) NULL,
	[G_A_ID] [int] NULL,
	[G_B_ID] [int] NULL,
	[G_C_ID] [int] NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[T_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[GroupInfo] ([G_ID], [G_Name], [Leader_ID], [Mem_A], [Mem_B], [Mem_C], [T_ID], [Sub_ID], [is_Applying], [F_Choice], [F_Agreed], [S_Choice], [S_Agreed], [T_Choice], [T_Agreed]) VALUES (1, N'Group1', 1, 2, 3, 4, NULL, 1, N'true', 1, NULL, 2, N'true', 3, N'true')
INSERT [dbo].[GroupInfo] ([G_ID], [G_Name], [Leader_ID], [Mem_A], [Mem_B], [Mem_C], [T_ID], [Sub_ID], [is_Applying], [F_Choice], [F_Agreed], [S_Choice], [S_Agreed], [T_Choice], [T_Agreed]) VALUES (2, N'Group2', 5, 6, NULL, NULL, NULL, 2, N'true', 1, NULL, 2, N'true', 3, N'fasle')
INSERT [dbo].[GroupInfo] ([G_ID], [G_Name], [Leader_ID], [Mem_A], [Mem_B], [Mem_C], [T_ID], [Sub_ID], [is_Applying], [F_Choice], [F_Agreed], [S_Choice], [S_Agreed], [T_Choice], [T_Agreed]) VALUES (3, N'Group3', 7, NULL, NULL, NULL, NULL, 3, N'true', 1, NULL, 2, N'true', 3, N'false')
INSERT [dbo].[Student] ([S_ID], [S_Name], [S_Grade], [S_Class], [S_Major], [S_Ori], [S_Score], [S_Info], [G_ID]) VALUES (1, N'张三', 17, 6, N'信息管理与信息系统', N'信息管理', 100, N'111111', 1)
INSERT [dbo].[Student] ([S_ID], [S_Name], [S_Grade], [S_Class], [S_Major], [S_Ori], [S_Score], [S_Info], [G_ID]) VALUES (2, N'李四', 17, 5, N'信息管理与信息系统', N'信息管理', 80, N'222222', 1)
INSERT [dbo].[Student] ([S_ID], [S_Name], [S_Grade], [S_Class], [S_Major], [S_Ori], [S_Score], [S_Info], [G_ID]) VALUES (3, N'王五', 17, 3, N'信息管理与信息系统', N'信息管理', 70, N'333333', 1)
INSERT [dbo].[Student] ([S_ID], [S_Name], [S_Grade], [S_Class], [S_Major], [S_Ori], [S_Score], [S_Info], [G_ID]) VALUES (4, N'老六', 17, 2, N'信息管理与信息系统', N'信息管理', 60, N'444444', 1)
INSERT [dbo].[Student] ([S_ID], [S_Name], [S_Grade], [S_Class], [S_Major], [S_Ori], [S_Score], [S_Info], [G_ID]) VALUES (5, N'老七', 18, 1, N'信息管理与信息系统', N'信息系统', 50, N'555555', 2)
INSERT [dbo].[Student] ([S_ID], [S_Name], [S_Grade], [S_Class], [S_Major], [S_Ori], [S_Score], [S_Info], [G_ID]) VALUES (6, N'老八', 18, 2, N'信息管理与信息系统', N'信息系统', 40, N'666666', 2)
INSERT [dbo].[Student] ([S_ID], [S_Name], [S_Grade], [S_Class], [S_Major], [S_Ori], [S_Score], [S_Info], [G_ID]) VALUES (7, N'老九', 19, 1, N'信息资源', N'信息资源', 100, N'777777', 3)
INSERT [dbo].[Student] ([S_ID], [S_Name], [S_Grade], [S_Class], [S_Major], [S_Ori], [S_Score], [S_Info], [G_ID]) VALUES (8, N'stu8', 17, 1, N'信息管理与信息系统', N'信息管理', 60, N'888888', NULL)
INSERT [dbo].[Student] ([S_ID], [S_Name], [S_Grade], [S_Class], [S_Major], [S_Ori], [S_Score], [S_Info], [G_ID]) VALUES (9, N'stu9', 18, 1, N'信息管理与信息系统', N'信息系统', 70, N'999999', NULL)
INSERT [dbo].[Student] ([S_ID], [S_Name], [S_Grade], [S_Class], [S_Major], [S_Ori], [S_Score], [S_Info], [G_ID]) VALUES (10, N'stu10', 18, 2, N'信息资源', N'信息资源', 80, N'000000', NULL)
INSERT [dbo].[Student] ([S_ID], [S_Name], [S_Grade], [S_Class], [S_Major], [S_Ori], [S_Score], [S_Info], [G_ID]) VALUES (11, N'stu11', 17, 5, N'信息资源', N'信息资源', 90, N'111111', NULL)
INSERT [dbo].[Subject] ([Sub_ID], [Leader_ID], [T_ID], [Sub_Name], [KeyWord], [Sub_Classification], [Sub_Catagory], [Study_Type], [Work_Unit], [System], [Sub_Desc], [is_Agreed]) VALUES (1, 1, NULL, N'Sub1', N'KeyWord', N'工学类', N'国家一般课题', N'基础研究', N'Unit1', N'System1', N'Desc1', N'true')
INSERT [dbo].[Subject] ([Sub_ID], [Leader_ID], [T_ID], [Sub_Name], [KeyWord], [Sub_Classification], [Sub_Catagory], [Study_Type], [Work_Unit], [System], [Sub_Desc], [is_Agreed]) VALUES (2, 5, NULL, N'Sub2', N'KeyWord', N'医学类', N'国家青年基金课题', N'应用研究', N'Unit2', N'System2', N'Desc2', NULL)
INSERT [dbo].[Subject] ([Sub_ID], [Leader_ID], [T_ID], [Sub_Name], [KeyWord], [Sub_Classification], [Sub_Catagory], [Study_Type], [Work_Unit], [System], [Sub_Desc], [is_Agreed]) VALUES (3, 7, NULL, N'Sub3', N'KeyWord', N'管理学类', N'教育部重点课题', N'综合研究', N'Unit1', N'System1', N'Desc1', NULL)
INSERT [dbo].[Teacher] ([T_ID], [T_Name], [T_Major], [T_Ori], [T_Info], [G_A_ID], [G_B_ID], [G_C_ID]) VALUES (1, N'Tea1', N'信息管理与信息系统', N'信息管理', N'111111', NULL, NULL, NULL)
INSERT [dbo].[Teacher] ([T_ID], [T_Name], [T_Major], [T_Ori], [T_Info], [G_A_ID], [G_B_ID], [G_C_ID]) VALUES (2, N'Tea2', N'信息管理与信息系统', N'信息系统', N'222222', NULL, NULL, NULL)
INSERT [dbo].[Teacher] ([T_ID], [T_Name], [T_Major], [T_Ori], [T_Info], [G_A_ID], [G_B_ID], [G_C_ID]) VALUES (3, N'Tea3', N'信息资源', N'信息资源', N'333333', NULL, NULL, NULL)
ALTER TABLE [dbo].[GroupInfo] ADD  CONSTRAINT [DF_GroupInfo_is_Appling]  DEFAULT ('false') FOR [is_Applying]
GO
/****** Object:  StoredProcedure [dbo].[PR_Is_Full]    Script Date: 2020/6/23 18:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_Is_Full]
	@A int,
	@B int,
	@C int
AS
BEGIN
	SET NOCOUNT ON;

	SELECT Mem_A,Mem_B,Mem_C from GroupInfo;
END
GO
USE [master]
GO
ALTER DATABASE [Student] SET  READ_WRITE 
GO
