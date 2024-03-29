USE [master]
GO
/****** Object:  Database [InsuranceOffer]    Script Date: 12/23/2019 8:06:19 AM ******/
CREATE DATABASE [InsuranceOffer]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'InsuranceOffer', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\InsuranceOffer.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'InsuranceOffer_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\InsuranceOffer_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [InsuranceOffer] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [InsuranceOffer].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [InsuranceOffer] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [InsuranceOffer] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [InsuranceOffer] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [InsuranceOffer] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [InsuranceOffer] SET ARITHABORT OFF 
GO
ALTER DATABASE [InsuranceOffer] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [InsuranceOffer] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [InsuranceOffer] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [InsuranceOffer] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [InsuranceOffer] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [InsuranceOffer] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [InsuranceOffer] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [InsuranceOffer] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [InsuranceOffer] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [InsuranceOffer] SET  ENABLE_BROKER 
GO
ALTER DATABASE [InsuranceOffer] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [InsuranceOffer] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [InsuranceOffer] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [InsuranceOffer] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [InsuranceOffer] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [InsuranceOffer] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [InsuranceOffer] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [InsuranceOffer] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [InsuranceOffer] SET  MULTI_USER 
GO
ALTER DATABASE [InsuranceOffer] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [InsuranceOffer] SET DB_CHAINING OFF 
GO
ALTER DATABASE [InsuranceOffer] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [InsuranceOffer] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [InsuranceOffer] SET DELAYED_DURABILITY = DISABLED 
GO
USE [InsuranceOffer]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/23/2019 8:06:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CustomerInfo]    Script Date: 12/23/2019 8:06:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerInfo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TCKN] [nvarchar](max) NULL,
	[Plaka] [nvarchar](max) NULL,
	[RuhsatSeriKodu] [nvarchar](max) NULL,
	[RuhsatSeriNo] [nvarchar](max) NULL,
 CONSTRAINT [PK_CustomerInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CustomerInsuranceOffers]    Script Date: 12/23/2019 8:06:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerInsuranceOffers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirmaAdi] [nvarchar](max) NULL,
	[FirmaLogosu] [nvarchar](max) NULL,
	[TeklifAciklamasi] [nvarchar](max) NULL,
	[TeklifTutari] [nvarchar](max) NULL,
	[Plaka] [nvarchar](max) NULL,
	[CustomerID] [int] NOT NULL,
 CONSTRAINT [PK_CustomerInsuranceOffers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191222121425_CustomerInfo', N'2.2.6-servicing-10079')
SET IDENTITY_INSERT [dbo].[CustomerInfo] ON 

INSERT [dbo].[CustomerInfo] ([ID], [TCKN], [Plaka], [RuhsatSeriKodu], [RuhsatSeriNo]) VALUES (1, N'2475338232', N'34KLM45', N'5555', N'4444')
SET IDENTITY_INSERT [dbo].[CustomerInfo] OFF
SET IDENTITY_INSERT [dbo].[CustomerInsuranceOffers] ON 

INSERT [dbo].[CustomerInsuranceOffers] ([ID], [FirmaAdi], [FirmaLogosu], [TeklifAciklamasi], [TeklifTutari], [Plaka], [CustomerID]) VALUES (1, N'Sigorta_A', N'SigortaA Logo', N'34klm45 plakalı araç için B sigortasının teklifidir.', N'238840', N'34KLM45', 1)
INSERT [dbo].[CustomerInsuranceOffers] ([ID], [FirmaAdi], [FirmaLogosu], [TeklifAciklamasi], [TeklifTutari], [Plaka], [CustomerID]) VALUES (2, N'Sigorta_C', N'SigortaC Logo', N'34klm45 plakalı araç için B sigortasının teklifidir.', N'195682', N'34KLM45', 1)
INSERT [dbo].[CustomerInsuranceOffers] ([ID], [FirmaAdi], [FirmaLogosu], [TeklifAciklamasi], [TeklifTutari], [Plaka], [CustomerID]) VALUES (3, N'Sigorta_A', N'SigortaA Logo', N'34klm45 plakalı araç için B sigortasının teklifidir.', N'238840', N'34KLM45', 1)
SET IDENTITY_INSERT [dbo].[CustomerInsuranceOffers] OFF
USE [master]
GO
ALTER DATABASE [InsuranceOffer] SET  READ_WRITE 
GO
