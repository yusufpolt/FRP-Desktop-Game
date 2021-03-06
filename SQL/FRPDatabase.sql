USE [master]
GO
/****** Object:  Database [FrpDatabase]    Script Date: 9.06.2020 18:16:51 ******/
CREATE DATABASE [FrpDatabase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FrpDatabase', FILENAME = N'F:\SQL SERVER\MSSQL14.SQLEXPRESS\MSSQL\DATA\FrpDatabase.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FrpDatabase_log', FILENAME = N'F:\SQL SERVER\MSSQL14.SQLEXPRESS\MSSQL\DATA\FrpDatabase_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [FrpDatabase] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FrpDatabase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FrpDatabase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FrpDatabase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FrpDatabase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FrpDatabase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FrpDatabase] SET ARITHABORT OFF 
GO
ALTER DATABASE [FrpDatabase] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [FrpDatabase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FrpDatabase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FrpDatabase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FrpDatabase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FrpDatabase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FrpDatabase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FrpDatabase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FrpDatabase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FrpDatabase] SET  ENABLE_BROKER 
GO
ALTER DATABASE [FrpDatabase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FrpDatabase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FrpDatabase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FrpDatabase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FrpDatabase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FrpDatabase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FrpDatabase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FrpDatabase] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FrpDatabase] SET  MULTI_USER 
GO
ALTER DATABASE [FrpDatabase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FrpDatabase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FrpDatabase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FrpDatabase] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FrpDatabase] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FrpDatabase] SET QUERY_STORE = OFF
GO
USE [FrpDatabase]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [FrpDatabase]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 9.06.2020 18:16:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[City] [nvarchar](255) NULL,
 CONSTRAINT [PK_iller] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 9.06.2020 18:16:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[ClassId] [int] IDENTITY(1,1) NOT NULL,
	[ClassName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 9.06.2020 18:16:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ContactId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[MessageText] [varchar](500) NULL,
	[CreatedDate] [datetime] NULL,
	[CityId] [int] NULL,
	[CountyId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Counties]    Script Date: 9.06.2020 18:16:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Counties](
	[CountyId] [int] NOT NULL,
	[County] [nvarchar](255) NULL,
	[City] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_ilceler] PRIMARY KEY CLUSTERED 
(
	[CountyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enemy]    Script Date: 9.06.2020 18:16:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enemy](
	[EnemyId] [int] IDENTITY(1,1) NOT NULL,
	[EnemyName] [varchar](50) NULL,
	[EnemyRace] [int] NULL,
	[EnemyClass] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[EnemyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GameStory]    Script Date: 9.06.2020 18:16:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GameStory](
	[StoryId] [int] IDENTITY(1,1) NOT NULL,
	[StoryName] [varchar](100) NULL,
	[StoryTopic] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[StoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Npc]    Script Date: 9.06.2020 18:16:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Npc](
	[NpcId] [int] IDENTITY(1,1) NOT NULL,
	[NpcName] [varchar](50) NULL,
	[NpcRace] [int] NULL,
	[NpcClass] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[NpcId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Race]    Script Date: 9.06.2020 18:16:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Race](
	[RaceId] [int] IDENTITY(1,1) NOT NULL,
	[RaceName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 9.06.2020 18:16:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](50) NULL,
	[RoleCreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RolesForms]    Script Date: 9.06.2020 18:16:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolesForms](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NULL,
	[FormName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserChoose]    Script Date: 9.06.2020 18:16:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserChoose](
	[UserChooseId] [int] IDENTITY(1,1) NOT NULL,
	[UserChooseRace] [int] NULL,
	[UserChooseClass] [int] NULL,
	[CUserId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserChooseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserInRoles]    Script Date: 9.06.2020 18:16:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInRoles](
	[RoleId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_RoleId] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRegister]    Script Date: 9.06.2020 18:16:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRegister](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[UserPassword] [varchar](20) NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Email] [varchar](100) NULL,
	[UChoose] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cities] ON 

INSERT [dbo].[Cities] ([CityId], [City]) VALUES (1, N'ADANA')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (2, N'ADIYAMAN')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (3, N'AFYON')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (4, N'AĞRI')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (5, N'AMASYA')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (6, N'ANKARA')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (7, N'ANTALYA')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (8, N'ARTVİN')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (9, N'AYDIN')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (10, N'BALIKESİR')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (11, N'BİLECİK')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (12, N'BİNGÖL')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (13, N'BİTLİS')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (14, N'BOLU')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (15, N'BURDUR')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (16, N'BURSA')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (17, N'ÇANAKKALE')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (18, N'ÇANKIRI')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (19, N'ÇORUM')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (20, N'DENİZLİ')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (21, N'DİYARBAKIR')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (22, N'EDİRNE')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (23, N'ELAZIĞ')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (24, N'ERZİNCAN')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (25, N'ERZURUM')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (26, N'ESKİŞEHİR')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (27, N'GAZİANTEP')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (28, N'GİRESUN')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (29, N'GÜMÜŞHANE')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (30, N'HAKKARİ')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (31, N'HATAY')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (32, N'ISPARTA')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (33, N'İÇEL')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (34, N'İSTANBUL')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (35, N'İZMİR')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (36, N'KARS')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (37, N'KASTAMONU')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (38, N'KAYSERİ')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (39, N'KIRKLARELİ')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (40, N'KIRŞEHİR')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (41, N'KOCAELİ')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (42, N'KONYA')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (43, N'KÜTAHYA')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (44, N'MALATYA')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (45, N'MANİSA')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (46, N'KAHRAMANMARAŞ')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (47, N'MARDİN')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (48, N'MUĞLA')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (49, N'MUŞ')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (50, N'NEVŞEHİR')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (51, N'NİĞDE')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (52, N'ORDU')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (53, N'RİZE')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (54, N'SAKARYA')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (55, N'SAMSUN')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (56, N'SİİRT')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (57, N'SİNOP')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (58, N'SİVAS')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (59, N'TEKİRDAĞ')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (60, N'TOKAT')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (61, N'TRABZON')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (62, N'TUNCELİ')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (63, N'ŞANLIURFA')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (64, N'UŞAK')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (65, N'VAN')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (66, N'YOZGAT')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (67, N'ZONGULDAK')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (68, N'AKSARAY')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (69, N'BAYBURT')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (70, N'KARAMAN')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (71, N'KIRIKKALE')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (72, N'BATMAN')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (73, N'ŞIRNAK')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (74, N'BARTIN')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (75, N'ARDAHAN')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (76, N'IĞDIR')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (77, N'YALOVA')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (78, N'KARABÜK')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (79, N'KİLİS')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (80, N'OSMANİYE')
INSERT [dbo].[Cities] ([CityId], [City]) VALUES (81, N'DÜZCE')
SET IDENTITY_INSERT [dbo].[Cities] OFF
SET IDENTITY_INSERT [dbo].[Class] ON 

INSERT [dbo].[Class] ([ClassId], [ClassName]) VALUES (1, N'Warrior')
INSERT [dbo].[Class] ([ClassId], [ClassName]) VALUES (2, N'Archer')
INSERT [dbo].[Class] ([ClassId], [ClassName]) VALUES (3, N'Wizard')
INSERT [dbo].[Class] ([ClassId], [ClassName]) VALUES (4, N'Alchemist')
SET IDENTITY_INSERT [dbo].[Class] OFF
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([ContactId], [FirstName], [LastName], [MessageText], [CreatedDate], [CityId], [CountyId]) VALUES (1, N'Yusuf', N'Polat', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', CAST(N'2020-06-04T21:31:50.270' AS DateTime), 34, 842)
SET IDENTITY_INSERT [dbo].[Contact] OFF
SET IDENTITY_INSERT [dbo].[Counties] ON 

INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (1, N'SEYHAN', 1)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (2, N'CEYHAN', 1)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (3, N'FEKE', 1)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (4, N'KARAİSALI', 1)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (5, N'KARATAŞ', 1)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (6, N'KOZAN', 1)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (7, N'POZANTI', 1)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (8, N'SAİMBEYLİ', 1)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (9, N'TUFANBEYLİ', 1)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (10, N'YUMURTALIK', 1)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (11, N'YÜREĞİR', 1)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (12, N'ALADAĞ', 1)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (13, N'İMAMOĞLU', 1)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (14, N'ADIYAMAN MERKEZ', 2)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (15, N'BESNİ', 2)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (16, N'ÇELİKHAN', 2)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (17, N'GERGER', 2)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (18, N'GÖLBAŞI', 2)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (19, N'KAHTA', 2)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (20, N'SAMSAT', 2)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (21, N'SİNCİK', 2)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (22, N'TUT', 2)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (23, N'AFYONMERKEZ', 3)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (24, N'BOLVADİN', 3)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (25, N'ÇAY', 3)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (26, N'DAZKIRI', 3)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (27, N'DİNAR', 3)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (28, N'EMİRDAĞ', 3)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (29, N'İHSANİYE', 3)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (30, N'SANDIKLI', 3)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (31, N'SİNANPAŞA', 3)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (32, N'SULDANDAĞI', 3)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (33, N'ŞUHUT', 3)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (34, N'BAŞMAKÇI', 3)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (35, N'BAYAT', 3)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (36, N'İŞCEHİSAR', 3)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (37, N'ÇOBANLAR', 3)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (38, N'EVCİLER', 3)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (39, N'HOCALAR', 3)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (40, N'KIZILÖREN', 3)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (41, N'AKSARAY MERKEZ', 68)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (42, N'ORTAKÖY', 68)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (43, N'AĞAÇÖREN', 68)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (44, N'GÜZELYURT', 68)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (45, N'SARIYAHŞİ', 68)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (46, N'ESKİL', 68)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (47, N'GÜLAĞAÇ', 68)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (48, N'AMASYA MERKEZ', 5)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (49, N'GÖYNÜÇEK', 5)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (50, N'GÜMÜŞHACIKÖYÜ', 5)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (51, N'MERZİFON', 5)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (52, N'SULUOVA', 5)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (53, N'TAŞOVA', 5)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (54, N'HAMAMÖZÜ', 5)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (55, N'ALTINDAĞ', 6)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (56, N'AYAS', 6)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (57, N'BALA', 6)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (58, N'BEYPAZARI', 6)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (59, N'ÇAMLIDERE', 6)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (60, N'ÇANKAYA', 6)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (61, N'ÇUBUK', 6)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (62, N'ELMADAĞ', 6)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (63, N'GÜDÜL', 6)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (64, N'HAYMANA', 6)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (65, N'KALECİK', 6)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (66, N'KIZILCAHAMAM', 6)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (67, N'NALLIHAN', 6)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (68, N'POLATLI', 6)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (69, N'ŞEREFLİKOÇHİSAR', 6)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (70, N'YENİMAHALLE', 6)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (71, N'GÖLBAŞI', 6)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (72, N'KEÇİÖREN', 6)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (73, N'MAMAK', 6)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (74, N'SİNCAN', 6)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (75, N'KAZAN', 6)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (76, N'AKYURT', 6)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (77, N'ETİMESGUT', 6)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (78, N'EVREN', 6)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (79, N'ANSEKİ', 7)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (80, N'ALANYA', 7)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (81, N'ANTALYA MERKEZİ', 7)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (82, N'ELMALI', 7)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (83, N'FİNİKE', 7)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (84, N'GAZİPAŞA', 7)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (85, N'GÜNDOĞMUŞ', 7)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (86, N'KAŞ', 7)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (87, N'KORKUTELİ', 7)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (88, N'KUMLUCA', 7)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (89, N'MANAVGAT', 7)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (90, N'SERİK', 7)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (91, N'DEMRE', 7)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (92, N'İBRADI', 7)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (93, N'KEMER', 7)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (94, N'ARDAHAN MERKEZ', 75)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (95, N'GÖLE', 75)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (96, N'ÇILDIR', 75)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (97, N'HANAK', 75)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (98, N'POSOF', 75)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (99, N'DAMAL', 75)
GO
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (100, N'ARDANUÇ', 8)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (101, N'ARHAVİ', 8)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (102, N'ARTVİN MERKEZ', 8)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (103, N'BORÇKA', 8)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (104, N'HOPA', 8)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (105, N'ŞAVŞAT', 8)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (106, N'YUSUFELİ', 8)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (107, N'MURGUL', 8)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (108, N'AYDIN MERKEZ', 9)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (109, N'BOZDOĞAN', 9)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (110, N'ÇİNE', 9)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (111, N'GERMENCİK', 9)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (112, N'KARACASU', 9)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (113, N'KOÇARLI', 9)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (114, N'KUŞADASI', 9)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (115, N'KUYUCAK', 9)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (116, N'NAZİLLİ', 9)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (117, N'SÖKE', 9)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (118, N'SULTANHİSAR', 9)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (119, N'YENİPAZAR', 9)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (120, N'BUHARKENT', 9)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (121, N'İNCİRLİOVA', 9)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (122, N'KARPUZLU', 9)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (123, N'KÖŞK', 9)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (124, N'DİDİM', 9)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (125, N'AĞRI MERKEZ', 4)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (126, N'DİYADİN', 4)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (127, N'DOĞUBEYAZIT', 4)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (128, N'ELEŞKİRT', 4)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (129, N'HAMUR', 4)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (130, N'PATNOS', 4)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (131, N'TAŞLIÇAY', 4)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (132, N'TUTAK', 4)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (133, N'AYVALIK', 10)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (134, N'BALIKESİR MERKEZ', 10)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (135, N'BALYA', 10)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (136, N'BANDIRMA', 10)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (137, N'BİGADİÇ', 10)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (138, N'BURHANİYE', 10)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (139, N'DURSUNBEY', 10)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (140, N'EDREMİT', 10)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (141, N'ERDEK', 10)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (142, N'GÖNEN', 10)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (143, N'HAVRAN', 10)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (144, N'İVRİNDİ', 10)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (145, N'KEPSUT', 10)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (146, N'MANYAS', 10)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (147, N'SAVAŞTEPE', 10)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (148, N'SINDIRGI', 10)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (149, N'SUSURLUK', 10)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (150, N'MARMARA', 10)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (151, N'GÖMEÇ', 10)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (152, N'BARTIN MERKEZ', 74)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (153, N'KURUCAŞİLE', 74)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (154, N'ULUS', 74)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (155, N'AMASRA', 74)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (156, N'BATMAN MERKEZ', 72)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (157, N'BEŞİRİ', 72)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (158, N'GERCÜŞ', 72)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (159, N'KOZLUK', 72)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (160, N'SASON', 72)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (161, N'HASANKEYF', 72)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (162, N'BAYBURT MERKEZ', 69)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (163, N'AYDINTEPE', 69)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (164, N'DEMİRÖZÜ', 69)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (165, N'BOLU MERKEZ', 14)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (166, N'GEREDE', 14)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (167, N'GÖYNÜK', 14)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (168, N'KIBRISCIK', 14)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (169, N'MENGEN', 14)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (170, N'MUDURNU', 14)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (171, N'SEBEN', 14)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (172, N'DÖRTDİVAN', 14)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (173, N'YENİÇAĞA', 14)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (174, N'AĞLASUN', 15)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (175, N'BUCAK', 15)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (176, N'BURDUR MERKEZ', 15)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (177, N'GÖLHİSAR', 15)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (178, N'TEFENNİ', 15)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (179, N'YEŞİLOVA', 15)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (180, N'KARAMANLI', 15)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (181, N'KEMER', 15)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (182, N'ALTINYAYLA', 15)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (183, N'ÇAVDIR', 15)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (184, N'ÇELTİKÇİ', 15)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (185, N'GEMLİK', 16)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (186, N'İNEGÖL', 16)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (187, N'İZNİK', 16)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (188, N'KARACABEY', 16)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (189, N'KELES', 16)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (190, N'MUDANYA', 16)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (191, N'MUSTAFA K. PAŞA', 16)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (192, N'ORHANELİ', 16)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (193, N'ORHANGAZİ', 16)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (194, N'YENİŞEHİR', 16)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (195, N'BÜYÜK ORHAN', 16)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (196, N'HARMANCIK', 16)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (197, N'NÜLİFER', 16)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (198, N'OSMAN GAZİ', 16)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (199, N'YILDIRIM', 16)
GO
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (200, N'GÜRSU', 16)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (201, N'KESTEL', 16)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (202, N'BİLECİK MERKEZ', 11)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (203, N'BOZÜYÜK', 11)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (204, N'GÖLPAZARI', 11)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (205, N'OSMANELİ', 11)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (206, N'PAZARYERİ', 11)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (207, N'SÖĞÜT', 11)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (208, N'YENİPAZAR', 11)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (209, N'İNHİSAR', 11)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (210, N'BİNGÖL MERKEZ', 12)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (211, N'GENÇ', 12)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (212, N'KARLIOVA', 12)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (213, N'KİGI', 12)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (214, N'SOLHAN', 12)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (215, N'ADAKLI', 12)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (216, N'YAYLADERE', 12)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (217, N'YEDİSU', 12)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (218, N'ADİLCEVAZ', 13)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (219, N'AHLAT', 13)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (220, N'BİTLİS MERKEZ', 13)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (221, N'HİZAN', 13)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (222, N'MUTKİ', 13)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (223, N'TATVAN', 13)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (224, N'GÜROYMAK', 13)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (225, N'DENİZLİ MERKEZ', 20)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (226, N'ACIPAYAM', 20)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (227, N'BULDAN', 20)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (228, N'ÇAL', 20)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (229, N'ÇAMELİ', 20)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (230, N'ÇARDAK', 20)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (231, N'ÇİVRİL', 20)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (232, N'GÜNEY', 20)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (233, N'KALE', 20)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (234, N'SARAYKÖY', 20)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (235, N'TAVAS', 20)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (236, N'BABADAĞ', 20)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (237, N'BEKİLLİ', 20)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (238, N'HONAZ', 20)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (239, N'SERİNHİSAR', 20)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (240, N'AKKÖY', 20)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (241, N'BAKLAN', 20)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (242, N'BEYAĞAÇ', 20)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (243, N'BOZKURT', 20)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (244, N'DÜZCE MERKEZ', 81)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (245, N'AKÇAKOCA', 81)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (246, N'YIĞILCA', 81)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (247, N'CUMAYERİ', 81)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (248, N'GÖLYAKA', 81)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (249, N'ÇİLİMLİ', 81)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (250, N'GÜMÜŞOVA', 81)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (251, N'KAYNAŞLI', 81)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (252, N'DİYARBAKIR MERKEZ', 21)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (253, N'BİSMİL', 21)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (254, N'ÇERMİK', 21)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (255, N'ÇINAR', 21)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (256, N'ÇÜNGÜŞ', 21)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (257, N'DİCLE', 21)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (258, N'ERGANİ', 21)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (259, N'HANİ', 21)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (260, N'HAZRO', 21)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (261, N'KULP', 21)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (262, N'LİCE', 21)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (263, N'SİLVAN', 21)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (264, N'EĞİL', 21)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (265, N'KOCAKÖY', 21)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (266, N'EDİRNE MERKEZ', 22)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (267, N'ENEZ', 22)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (268, N'HAVSA', 22)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (269, N'İPSALA', 22)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (270, N'KEŞAN', 22)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (271, N'LALAPAŞA', 22)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (272, N'MERİÇ', 22)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (273, N'UZUNKÖPRÜ', 22)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (274, N'SÜLOĞLU', 22)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (275, N'ELAZIĞ MERKEZ', 23)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (276, N'AĞIN', 23)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (277, N'BASKİL', 23)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (278, N'KARAKOÇAN', 23)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (279, N'KEBAN', 23)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (280, N'MADEN', 23)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (281, N'PALU', 23)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (282, N'SİVRİCE', 23)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (283, N'ARICAK', 23)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (284, N'KOVANCILAR', 23)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (285, N'ALACAKAYA', 23)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (286, N'ERZURUM MERKEZ', 25)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (287, N'PALANDÖKEN', 25)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (288, N'AŞKALE', 25)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (289, N'ÇAT', 25)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (290, N'HINIS', 25)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (291, N'HORASAN', 25)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (292, N'OLTU', 25)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (293, N'İSPİR', 25)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (294, N'KARAYAZI', 25)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (295, N'NARMAN', 25)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (296, N'OLUR', 25)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (297, N'PASİNLER', 25)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (298, N'ŞENKAYA', 25)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (299, N'TEKMAN', 25)
GO
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (300, N'TORTUM', 25)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (301, N'KARAÇOBAN', 25)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (302, N'UZUNDERE', 25)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (303, N'PAZARYOLU', 25)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (304, N'ILICA', 25)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (305, N'KÖPRÜKÖY', 25)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (306, N'ÇAYIRLI', 24)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (307, N'ERZİNCAN MERKEZ', 24)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (308, N'İLİÇ', 24)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (309, N'KEMAH', 24)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (310, N'KEMALİYE', 24)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (311, N'REFAHİYE', 24)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (312, N'TERCAN', 24)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (313, N'OTLUKBELİ', 24)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (314, N'ESKİŞEHİR MERKEZ', 26)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (315, N'ÇİFTELER', 26)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (316, N'MAHMUDİYE', 26)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (317, N'MİHALIÇLIK', 26)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (318, N'SARICAKAYA', 26)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (319, N'SEYİTGAZİ', 26)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (320, N'SİVRİHİSAR', 26)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (321, N'ALPU', 26)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (322, N'BEYLİKOVA', 26)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (323, N'İNÖNÜ', 26)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (324, N'GÜNYÜZÜ', 26)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (325, N'HAN', 26)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (326, N'MİHALGAZİ', 26)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (327, N'ARABAN', 27)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (328, N'İSLAHİYE', 27)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (329, N'NİZİP', 27)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (330, N'OĞUZELİ', 27)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (331, N'YAVUZELİ', 27)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (332, N'ŞAHİNBEY', 27)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (333, N'ŞEHİT KAMİL', 27)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (334, N'KARKAMIŞ', 27)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (335, N'NURDAĞI', 27)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (336, N'GÜMÜŞHANE MERKEZ', 29)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (337, N'KELKİT', 29)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (338, N'ŞİRAN', 29)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (339, N'TORUL', 29)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (340, N'KÖSE', 29)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (341, N'KÜRTÜN', 29)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (342, N'ALUCRA', 28)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (343, N'BULANCAK', 28)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (344, N'DERELİ', 28)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (345, N'ESPİYE', 28)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (346, N'EYNESİL', 28)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (347, N'GİRESUN MERKEZ', 28)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (348, N'GÖRELE', 28)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (349, N'KEŞAP', 28)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (350, N'ŞEBİNKARAHİSAR', 28)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (351, N'TİREBOLU', 28)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (352, N'PİPAZİZ', 28)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (353, N'YAĞLIDERE', 28)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (354, N'ÇAMOLUK', 28)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (355, N'ÇANAKÇI', 28)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (356, N'DOĞANKENT', 28)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (357, N'GÜCE', 28)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (358, N'HAKKARİ MERKEZ', 30)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (359, N'ÇUKURCA', 30)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (360, N'ŞEMDİNLİ', 30)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (361, N'YÜKSEKOVA', 30)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (362, N'ALTINÖZÜ', 31)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (363, N'DÖRTYOL', 31)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (364, N'HATAY MERKEZ', 31)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (365, N'HASSA', 31)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (366, N'İSKENDERUN', 31)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (367, N'KIRIKHAN', 31)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (368, N'REYHANLI', 31)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (369, N'SAMANDAĞ', 31)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (370, N'YAYLADAĞ', 31)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (371, N'ERZİN', 31)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (372, N'BELEN', 31)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (373, N'KUMLU', 31)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (374, N'ISPARTA MERKEZ', 32)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (375, N'ATABEY', 32)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (376, N'KEÇİBORLU', 32)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (377, N'EĞİRDİR', 32)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (378, N'GELENDOST', 32)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (379, N'SİNİRKENT', 32)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (380, N'ULUBORLU', 32)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (381, N'YALVAÇ', 32)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (382, N'AKSU', 32)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (383, N'GÖNEN', 32)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (384, N'YENİŞAR BADEMLİ', 32)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (385, N'IĞDIR MERKEZ', 76)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (386, N'ARALIK', 76)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (387, N'TUZLUCA', 76)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (388, N'KARAKOYUNLU', 76)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (389, N'AFŞİN', 46)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (390, N'ANDIRIN', 46)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (391, N'ELBİSTAN', 46)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (392, N'GÖKSUN', 46)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (393, N'KAHRAMANMARAŞ MERKEZ', 46)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (394, N'PAZARCIK', 46)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (395, N'TÜRKOĞLU', 46)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (396, N'ÇAĞLAYANCERİT', 46)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (397, N'EKİNÖZÜ', 46)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (398, N'NURHAK', 46)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (399, N'EFLANİ', 78)
GO
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (400, N'ESKİPAZAR', 78)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (401, N'KARABÜK MERKEZ', 78)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (402, N'OVACIK', 78)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (403, N'SAFRANBOLU', 78)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (404, N'YENİCE', 78)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (405, N'ERMENEK', 70)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (406, N'KARAMAN MERKEZ', 70)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (407, N'AYRANCI', 70)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (408, N'KAZIMKARABEKİR', 70)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (409, N'BAŞYAYLA', 70)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (410, N'SARIVELİLER', 70)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (411, N'KARS MERKEZ', 36)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (412, N'ARPAÇAY', 36)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (413, N'DİGOR', 36)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (414, N'KAĞIZMAN', 36)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (415, N'SARIKAMIŞ', 36)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (416, N'SELİM', 36)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (417, N'SUSUZ', 36)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (418, N'AKYAKA', 36)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (419, N'ABANA', 37)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (420, N'KASTAMONU MERKEZ', 37)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (421, N'ARAÇ', 37)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (422, N'AZDAVAY', 37)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (423, N'BOZKURT', 37)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (424, N'CİDE', 37)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (425, N'ÇATALZEYTİN', 37)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (426, N'DADAY', 37)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (427, N'DEVREKANİ', 37)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (428, N'İNEBOLU', 37)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (429, N'KÜRE', 37)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (430, N'TAŞKÖPRÜ', 37)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (431, N'TOSYA', 37)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (432, N'İHSANGAZİ', 37)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (433, N'PINARBAŞI', 37)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (434, N'ŞENPAZAR', 37)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (435, N'AĞLI', 37)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (436, N'DOĞANYURT', 37)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (437, N'HANÖNÜ', 37)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (438, N'SEYDİLER', 37)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (439, N'BÜNYAN', 38)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (440, N'DEVELİ', 38)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (441, N'FELAHİYE', 38)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (442, N'İNCESU', 38)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (443, N'PINARBAŞI', 38)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (444, N'SARIOĞLAN', 38)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (445, N'SARIZ', 38)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (446, N'TOMARZA', 38)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (447, N'YAHYALI', 38)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (448, N'YEŞİLHİSAR', 38)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (449, N'AKKIŞLA', 38)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (450, N'TALAS', 38)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (451, N'KOCASİNAN', 38)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (452, N'MELİKGAZİ', 38)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (453, N'HACILAR', 38)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (454, N'ÖZVATAN', 38)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (455, N'DERİCE', 71)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (456, N'KESKİN', 71)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (457, N'KIRIKKALE MERKEZ', 71)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (458, N'SALAK YURT', 71)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (459, N'BAHŞİLİ', 71)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (460, N'BALIŞEYH', 71)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (461, N'ÇELEBİ', 71)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (462, N'KARAKEÇİLİ', 71)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (463, N'YAHŞİHAN', 71)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (464, N'KIRKKLARELİ MERKEZ', 39)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (465, N'BABAESKİ', 39)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (466, N'DEMİRKÖY', 39)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (467, N'KOFÇAY', 39)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (468, N'LÜLEBURGAZ', 39)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (469, N'VİZE', 39)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (470, N'KIRŞEHİR MERKEZ', 40)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (471, N'ÇİÇEKDAĞI', 40)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (472, N'KAMAN', 40)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (473, N'MUCUR', 40)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (474, N'AKPINAR', 40)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (475, N'AKÇAKENT', 40)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (476, N'BOZTEPE', 40)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (477, N'KOCAELİ MERKEZ', 41)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (478, N'GEBZE', 41)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (479, N'GÖLCÜK', 41)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (480, N'KANDIRA', 41)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (481, N'KARAMÜRSEL', 41)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (482, N'KÖRFEZ', 41)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (483, N'DERİNCE', 41)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (484, N'KONYA MERKEZ', 42)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (485, N'AKŞEHİR', 42)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (486, N'BEYŞEHİR', 42)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (487, N'BOZKIR', 42)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (488, N'CİHANBEYLİ', 42)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (489, N'ÇUMRA', 42)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (490, N'DOĞANHİSAR', 42)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (491, N'EREĞLİ', 42)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (492, N'HADİM', 42)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (493, N'ILGIN', 42)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (494, N'KADINHANI', 42)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (495, N'KARAPINAR', 42)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (496, N'KULU', 42)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (497, N'SARAYÖNÜ', 42)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (498, N'SEYDİŞEHİR', 42)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (499, N'YUNAK', 42)
GO
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (500, N'AKÖREN', 42)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (501, N'ALTINEKİN', 42)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (502, N'DEREBUCAK', 42)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (503, N'HÜYÜK', 42)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (504, N'KARATAY', 42)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (505, N'MERAM', 42)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (506, N'SELÇUKLU', 42)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (507, N'TAŞKENT', 42)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (508, N'AHIRLI', 42)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (509, N'ÇELTİK', 42)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (510, N'DERBENT', 42)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (511, N'EMİRGAZİ', 42)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (512, N'GÜNEYSINIR', 42)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (513, N'HALKAPINAR', 42)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (514, N'TUZLUKÇU', 42)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (515, N'YALIHÜYÜK', 42)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (516, N'KÜTAHYA  MERKEZ', 43)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (517, N'ALTINTAŞ', 43)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (518, N'DOMANİÇ', 43)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (519, N'EMET', 43)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (520, N'GEDİZ', 43)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (521, N'SİMAV', 43)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (522, N'TAVŞANLI', 43)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (523, N'ASLANAPA', 43)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (524, N'DUMLUPINAR', 43)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (525, N'HİSARCIK', 43)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (526, N'ŞAPHANE', 43)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (527, N'ÇAVDARHİSAR', 43)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (528, N'PAZARLAR', 43)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (529, N'KİLİS MERKEZ', 79)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (530, N'ELBEYLİ', 79)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (531, N'MUSABEYLİ', 79)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (532, N'POLATELİ', 79)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (533, N'MALATYA MERKEZ', 44)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (534, N'AKÇADAĞ', 44)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (535, N'ARAPGİR', 44)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (536, N'ARGUVAN', 44)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (537, N'DARENDE', 44)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (538, N'DOĞANŞEHİR', 44)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (539, N'HEKİMHAN', 44)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (540, N'PÜTÜRGE', 44)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (541, N'YEŞİLYURT', 44)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (542, N'BATTALGAZİ', 44)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (543, N'DOĞANYOL', 44)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (544, N'KALE', 44)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (545, N'KULUNCAK', 44)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (546, N'YAZIHAN', 44)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (547, N'AKHİSAR', 45)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (548, N'ALAŞEHİR', 45)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (549, N'DEMİRCİ', 45)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (550, N'GÖRDES', 45)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (551, N'KIRKAĞAÇ', 45)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (552, N'KULA', 45)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (553, N'MANİSA MERKEZ', 45)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (554, N'SALİHLİ', 45)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (555, N'SARIGÖL', 45)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (556, N'SARUHANLI', 45)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (557, N'SELENDİ', 45)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (558, N'SOMA', 45)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (559, N'TURGUTLU', 45)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (560, N'AHMETLİ', 45)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (561, N'GÖLMARMARA', 45)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (562, N'KÖPRÜBAŞI', 45)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (563, N'DERİK', 47)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (564, N'KIZILTEPE', 47)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (565, N'MARDİN MERKEZ', 47)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (566, N'MAZIDAĞI', 47)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (567, N'MİDYAT', 47)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (568, N'NUSAYBİN', 47)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (569, N'ÖMERLİ', 47)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (570, N'SAVUR', 47)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (571, N'YEŞİLLİ', 47)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (572, N'MERSİN MERKEZ', 33)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (573, N'ANAMUR', 33)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (574, N'ERDEMLİ', 33)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (575, N'GÜLNAR', 33)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (576, N'MUT', 33)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (577, N'SİLİFKE', 33)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (578, N'TARSUS', 33)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (579, N'AYDINCIK', 33)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (580, N'BOZYAZI', 33)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (581, N'ÇAMLIYAYLA', 33)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (582, N'BODRUM', 48)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (583, N'DATÇA', 48)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (584, N'FETHİYE', 48)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (585, N'KÖYCEĞİZ', 48)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (586, N'MARMARİS', 48)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (587, N'MİLAS', 48)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (588, N'MUĞLA MERKEZ', 48)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (589, N'ULA', 48)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (590, N'YATAĞAN', 48)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (591, N'DALAMAN', 48)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (592, N'KAVAKLI DERE', 48)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (593, N'ORTACA', 48)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (594, N'BULANIK', 49)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (595, N'MALAZGİRT', 49)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (596, N'MUŞ MERKEZ', 49)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (597, N'VARTO', 49)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (598, N'HASKÖY', 49)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (599, N'KORKUT', 49)
GO
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (600, N'NEVŞEHİR MERKEZ', 50)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (601, N'AVANOS', 50)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (602, N'DERİNKUYU', 50)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (603, N'GÜLŞEHİR', 50)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (604, N'HACIBEKTAŞ', 50)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (605, N'KOZAKLI', 50)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (606, N'ÜRGÜP', 50)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (607, N'ACIGÖL', 50)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (608, N'NİĞDE MERKEZ', 51)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (609, N'BOR', 51)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (610, N'ÇAMARDI', 51)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (611, N'ULUKIŞLA', 51)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (612, N'ALTUNHİSAR', 51)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (613, N'ÇİFTLİK', 51)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (614, N'AKKUŞ', 52)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (615, N'AYBASTI', 52)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (616, N'FATSA', 52)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (617, N'GÖLKÖY', 52)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (618, N'KORGAN', 52)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (619, N'KUMRU', 52)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (620, N'MESUDİYE', 52)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (621, N'ORDU MERKEZ', 52)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (622, N'PERŞEMBE', 52)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (623, N'ULUBEY', 52)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (624, N'ÜNYE', 52)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (625, N'GÜLYALI', 52)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (626, N'GÜRGENTEPE', 52)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (627, N'ÇAMAŞ', 52)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (628, N'ÇATALPINAR', 52)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (629, N'ÇAYBAŞI', 52)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (630, N'İKİZCE', 52)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (631, N'KABADÜZ', 52)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (632, N'KABATAŞ', 52)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (633, N'BAHÇE', 80)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (634, N'KADİRLİ', 80)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (635, N'OSMANİYE MERKEZ', 80)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (636, N'DÜZİÇİ', 80)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (637, N'HASANBEYLİ', 80)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (638, N'SUMBAŞ', 80)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (639, N'TOPRAKKALE', 80)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (640, N'RİZE MERKEZ', 53)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (641, N'ARDEŞEN', 53)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (642, N'ÇAMLIHEMŞİN', 53)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (643, N'ÇAYELİ', 53)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (644, N'FINDIKLI', 53)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (645, N'İKİZDERE', 53)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (646, N'KALKANDERE', 53)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (647, N'PAZAR', 53)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (648, N'GÜNEYSU', 53)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (649, N'DEREPAZARI', 53)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (650, N'HEMŞİN', 53)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (651, N'İYİDERE', 53)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (652, N'AKYAZI', 54)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (653, N'GEYVE', 54)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (654, N'HENDEK', 54)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (655, N'KARASU', 54)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (656, N'KAYNARCA', 54)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (657, N'SAKARYA MERKEZ', 54)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (658, N'PAMUKOVA', 54)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (659, N'TARAKLI', 54)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (660, N'FERİZLİ', 54)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (661, N'KARAPÜRÇEK', 54)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (662, N'SÖĞÜTLÜ', 54)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (663, N'ALAÇAM', 55)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (664, N'BAFRA', 55)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (665, N'ÇARŞAMBA', 55)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (666, N'HAVZA', 55)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (667, N'KAVAK', 55)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (668, N'LADİK', 55)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (669, N'SAMSUN MERKEZ', 55)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (670, N'TERME', 55)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (671, N'VEZİRKÖPRÜ', 55)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (672, N'ASARCIK', 55)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (673, N'ONDOKUZMAYIS', 55)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (674, N'SALIPAZARI', 55)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (675, N'TEKKEKÖY', 55)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (676, N'AYVACIK', 55)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (677, N'YAKAKENT', 55)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (678, N'AYANCIK', 57)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (679, N'BOYABAT', 57)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (680, N'SİNOP MERKEZ', 57)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (681, N'DURAĞAN', 57)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (682, N'ERGELEK', 57)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (683, N'GERZE', 57)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (684, N'TÜRKELİ', 57)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (685, N'DİKMEN', 57)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (686, N'SARAYDÜZÜ', 57)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (687, N'DİVRİĞİ', 58)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (688, N'GEMEREK', 58)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (689, N'GÜRÜN', 58)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (690, N'HAFİK', 58)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (691, N'İMRANLI', 58)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (692, N'KANGAL', 58)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (693, N'KOYUL HİSAR', 58)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (694, N'SİVAS MERKEZ', 58)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (695, N'SU ŞEHRİ', 58)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (696, N'ŞARKIŞLA', 58)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (697, N'YILDIZELİ', 58)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (698, N'ZARA', 58)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (699, N'AKINCILAR', 58)
GO
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (700, N'ALTINYAYLA', 58)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (701, N'DOĞANŞAR', 58)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (702, N'GÜLOVA', 58)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (703, N'ULAŞ', 58)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (704, N'BAYKAN', 56)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (705, N'ERUH', 56)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (706, N'KURTALAN', 56)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (707, N'PERVARİ', 56)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (708, N'SİİRT MERKEZ', 56)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (709, N'ŞİRVARİ', 56)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (710, N'AYDINLAR', 56)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (711, N'TEKİRDAĞ MERKEZ', 59)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (712, N'ÇERKEZKÖY', 59)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (713, N'ÇORLU', 59)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (714, N'HAYRABOLU', 59)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (715, N'MALKARA', 59)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (716, N'MURATLI', 59)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (717, N'SARAY', 59)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (718, N'ŞARKÖY', 59)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (719, N'MARAMARAEREĞLİSİ', 59)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (720, N'ALMUS', 60)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (721, N'ARTOVA', 60)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (722, N'TOKAT MERKEZ', 60)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (723, N'ERBAA', 60)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (724, N'NİKSAR', 60)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (725, N'REŞADİYE', 60)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (726, N'TURHAL', 60)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (727, N'ZİLE', 60)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (728, N'PAZAR', 60)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (729, N'YEŞİLYURT', 60)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (730, N'BAŞÇİFTLİK', 60)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (731, N'SULUSARAY', 60)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (732, N'TRABZON MERKEZ', 61)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (733, N'AKÇAABAT', 61)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (734, N'ARAKLI', 61)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (735, N'ARŞİN', 61)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (736, N'ÇAYKARA', 61)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (737, N'MAÇKA', 61)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (738, N'OF', 61)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (739, N'SÜRMENE', 61)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (740, N'TONYA', 61)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (741, N'VAKFIKEBİR', 61)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (742, N'YOMRA', 61)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (743, N'BEŞİKDÜZÜ', 61)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (744, N'ŞALPAZARI', 61)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (745, N'ÇARŞIBAŞI', 61)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (746, N'DERNEKPAZARI', 61)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (747, N'DÜZKÖY', 61)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (748, N'HAYRAT', 61)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (749, N'KÖPRÜBAŞI', 61)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (750, N'TUNCELİ MERKEZ', 62)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (751, N'ÇEMİŞGEZEK', 62)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (752, N'HOZAT', 62)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (753, N'MAZGİRT', 62)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (754, N'NAZİMİYE', 62)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (755, N'OVACIK', 62)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (756, N'PERTEK', 62)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (757, N'PÜLÜMÜR', 62)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (758, N'BANAZ', 64)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (759, N'EŞME', 64)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (760, N'KARAHALLI', 64)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (761, N'SİVASLI', 64)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (762, N'ULUBEY', 64)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (763, N'UŞAK MERKEZ', 64)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (764, N'BAŞKALE', 65)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (765, N'VAN MERKEZ', 65)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (766, N'EDREMİT', 65)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (767, N'ÇATAK', 65)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (768, N'ERCİŞ', 65)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (769, N'GEVAŞ', 65)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (770, N'GÜRPINAR', 65)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (771, N'MURADİYE', 65)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (772, N'ÖZALP', 65)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (773, N'BAHÇESARAY', 65)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (774, N'ÇALDIRAN', 65)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (775, N'SARAY', 65)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (776, N'YALOVA MERKEZ', 77)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (777, N'ALTINOVA', 77)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (778, N'ARMUTLU', 77)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (779, N'ÇINARCIK', 77)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (780, N'ÇİFTLİKKÖY', 77)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (781, N'TERMAL', 77)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (782, N'AKDAĞMADENİ', 66)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (783, N'BOĞAZLIYAN', 66)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (784, N'YOZGAT MERKEZ', 66)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (785, N'ÇAYIRALAN', 66)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (786, N'ÇEKEREK', 66)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (787, N'SARIKAYA', 66)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (788, N'SORGUN', 66)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (789, N'ŞEFAATLI', 66)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (790, N'YERKÖY', 66)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (791, N'KADIŞEHRİ', 66)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (792, N'SARAYKENT', 66)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (793, N'YENİFAKILI', 66)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (794, N'ÇAYCUMA', 67)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (795, N'DEVREK', 67)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (796, N'ZONGULDAK MERKEZ', 67)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (797, N'EREĞLİ', 67)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (798, N'ALAPLI', 67)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (799, N'GÖKÇEBEY', 67)
GO
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (800, N'ÇANAKKALE MERKEZ', 17)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (801, N'AYVACIK', 17)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (802, N'BAYRAMİÇ', 17)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (803, N'BİGA', 17)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (804, N'BOZCAADA', 17)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (805, N'ÇAN', 17)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (806, N'ECEABAT', 17)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (807, N'EZİNE', 17)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (808, N'LAPSEKİ', 17)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (809, N'YENİCE', 17)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (810, N'ÇANKIRI MERKEZ', 18)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (811, N'ÇERKEŞ', 18)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (812, N'ELDİVAN', 18)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (813, N'ILGAZ', 18)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (814, N'KURŞUNLU', 18)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (815, N'ORTA', 18)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (816, N'ŞABANÖZÜ', 18)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (817, N'YAPRAKLI', 18)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (818, N'ATKARACALAR', 18)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (819, N'KIZILIRMAK', 18)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (820, N'BAYRAMÖREN', 18)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (821, N'KORGUN', 18)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (822, N'ALACA', 19)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (823, N'BAYAT', 19)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (824, N'ÇORUM MERKEZ', 19)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (825, N'İKSİPLİ', 19)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (826, N'KARGI', 19)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (827, N'MECİTÖZÜ', 19)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (828, N'ORTAKÖY', 19)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (829, N'OSMANCIK', 19)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (830, N'SUNGURLU', 19)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (831, N'DODURGA', 19)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (832, N'LAÇİN', 19)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (833, N'OĞUZLAR', 19)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (834, N'ADALAR', 34)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (835, N'BAKIRKÖY', 34)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (836, N'BEŞİKTAŞ', 34)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (837, N'BEYKOZ', 34)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (838, N'BEYOĞLU', 34)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (839, N'ÇATALCA', 34)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (840, N'EMİNÖNÜ', 34)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (841, N'EYÜP', 34)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (842, N'FATİH', 34)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (843, N'GAZİOSMANPAŞA', 34)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (844, N'KADIKÖY', 34)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (845, N'KARTAL', 34)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (846, N'SARIYER', 34)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (847, N'SİLİVRİ', 34)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (848, N'ŞİLE', 34)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (849, N'ŞİŞLİ', 34)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (850, N'ÜSKÜDAR', 34)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (851, N'ZEYTİNBURNU', 34)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (852, N'BÜYÜKÇEKMECE', 34)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (853, N'KAĞITHANE', 34)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (854, N'KÜÇÜKÇEKMECE', 34)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (855, N'PENDİK', 34)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (856, N'ÜMRANİYE', 34)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (857, N'BAYRAMPAŞA', 34)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (858, N'AVCILAR', 34)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (859, N'BAĞCILAR', 34)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (860, N'BAHÇELİEVLER', 34)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (861, N'GÜNGÖREN', 34)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (862, N'MALTEPE', 34)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (863, N'SULTANBEYLİ', 34)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (864, N'TUZLA', 34)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (865, N'ESENLER', 34)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (866, N'ALİAĞA', 35)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (867, N'BAYINDIR', 35)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (868, N'BERGAMA', 35)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (869, N'BORNOVA', 35)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (870, N'ÇEŞME', 35)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (871, N'DİKİLİ', 35)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (872, N'FOÇA', 35)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (873, N'KARABURUN', 35)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (874, N'KARŞIYAKA', 35)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (875, N'KEMALPAŞA', 35)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (876, N'KINIK', 35)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (877, N'KİRAZ', 35)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (878, N'MENEMEN', 35)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (879, N'ÖDEMİŞ', 35)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (880, N'SEFERİHİSAR', 35)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (881, N'SELÇUK', 35)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (882, N'TİRE', 35)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (883, N'TORBALI', 35)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (884, N'URLA', 35)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (885, N'BEYDAĞ', 35)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (886, N'BUCA', 35)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (887, N'KONAK', 35)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (888, N'MENDERES', 35)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (889, N'BALÇOVA', 35)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (890, N'ÇİGLİ', 35)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (891, N'GAZİEMİR', 35)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (892, N'NARLIDERE', 35)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (893, N'GÜZELBAHÇE', 35)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (894, N'ŞANLIURFA MERKEZ', 63)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (895, N'AKÇAKALE', 63)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (896, N'BİRECİK', 63)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (897, N'BOZOVA', 63)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (898, N'CEYLANPINAR', 63)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (899, N'HALFETİ', 63)
GO
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (900, N'HİLVAN', 63)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (901, N'SİVEREK', 63)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (902, N'SURUÇ', 63)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (903, N'VİRANŞEHİR', 63)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (904, N'HARRAN', 63)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (905, N'BEYTÜŞŞEBAP', 73)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (906, N'ŞIRNAK MERKEZ', 73)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (907, N'CİZRE', 73)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (908, N'İDİL', 73)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (909, N'SİLOPİ', 73)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (910, N'ULUDERE', 73)
INSERT [dbo].[Counties] ([CountyId], [County], [City]) VALUES (911, N'GÜÇLÜKONAK', 73)
SET IDENTITY_INSERT [dbo].[Counties] OFF
SET IDENTITY_INSERT [dbo].[GameStory] ON 

INSERT [dbo].[GameStory] ([StoryId], [StoryName], [StoryTopic]) VALUES (1, N'StoryOne', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.')
SET IDENTITY_INSERT [dbo].[GameStory] OFF
SET IDENTITY_INSERT [dbo].[Race] ON 

INSERT [dbo].[Race] ([RaceId], [RaceName]) VALUES (1, N'Human')
INSERT [dbo].[Race] ([RaceId], [RaceName]) VALUES (2, N'Elves')
INSERT [dbo].[Race] ([RaceId], [RaceName]) VALUES (3, N'Orc')
INSERT [dbo].[Race] ([RaceId], [RaceName]) VALUES (4, N'Dwarf')
SET IDENTITY_INSERT [dbo].[Race] OFF
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([RoleId], [RoleName], [RoleCreatedDate]) VALUES (1, N'admin', CAST(N'2020-05-31T18:14:54.273' AS DateTime))
INSERT [dbo].[Roles] ([RoleId], [RoleName], [RoleCreatedDate]) VALUES (2, N'user', CAST(N'2020-05-31T18:14:58.413' AS DateTime))
SET IDENTITY_INSERT [dbo].[Roles] OFF
SET IDENTITY_INSERT [dbo].[RolesForms] ON 

INSERT [dbo].[RolesForms] ([Id], [RoleId], [FormName]) VALUES (1, 1, N'StorySettingForm')
INSERT [dbo].[RolesForms] ([Id], [RoleId], [FormName]) VALUES (2, 2, N'ReportForm')
SET IDENTITY_INSERT [dbo].[RolesForms] OFF
SET IDENTITY_INSERT [dbo].[UserChoose] ON 

INSERT [dbo].[UserChoose] ([UserChooseId], [UserChooseRace], [UserChooseClass], [CUserId]) VALUES (1, 1, 1, 9)
SET IDENTITY_INSERT [dbo].[UserChoose] OFF
INSERT [dbo].[UserInRoles] ([RoleId], [UserId]) VALUES (1, 1)
INSERT [dbo].[UserInRoles] ([RoleId], [UserId]) VALUES (2, 1)
SET IDENTITY_INSERT [dbo].[UserRegister] ON 

INSERT [dbo].[UserRegister] ([UserId], [UserName], [UserPassword], [FirstName], [LastName], [Email], [UChoose]) VALUES (1, N'admin', N'1', N'Yusuf', N'Polat', N'yusufpolat@admin.com', NULL)
INSERT [dbo].[UserRegister] ([UserId], [UserName], [UserPassword], [FirstName], [LastName], [Email], [UChoose]) VALUES (2, N'Renuz', N'123', N'Yusuf', N'Polat', N'asd@gma.com', NULL)
INSERT [dbo].[UserRegister] ([UserId], [UserName], [UserPassword], [FirstName], [LastName], [Email], [UChoose]) VALUES (5, N'saddsa', N'sda', N'asdas', N'dsadasd', N'das@gmaq.com', NULL)
INSERT [dbo].[UserRegister] ([UserId], [UserName], [UserPassword], [FirstName], [LastName], [Email], [UChoose]) VALUES (6, N'asd', N'dasds', N'adasasd', N'dsaasddas', N'asda@gsa.com', NULL)
INSERT [dbo].[UserRegister] ([UserId], [UserName], [UserPassword], [FirstName], [LastName], [Email], [UChoose]) VALUES (8, N'asdasdj', N'asd', N'sdaasd', N'sdasda', N'asdasd@sda.com', NULL)
INSERT [dbo].[UserRegister] ([UserId], [UserName], [UserPassword], [FirstName], [LastName], [Email], [UChoose]) VALUES (9, N'Cymbolt', N'1', N'Ali Can', N'Aca', N'ali@gn.com', 1)
SET IDENTITY_INSERT [dbo].[UserRegister] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__UserRegi__C9F284562B71472E]    Script Date: 9.06.2020 18:16:52 ******/
ALTER TABLE [dbo].[UserRegister] ADD UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Contact] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Roles] ADD  DEFAULT (getdate()) FOR [RoleCreatedDate]
GO
ALTER TABLE [dbo].[Contact]  WITH CHECK ADD  CONSTRAINT [FK_City] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([CityId])
GO
ALTER TABLE [dbo].[Contact] CHECK CONSTRAINT [FK_City]
GO
ALTER TABLE [dbo].[Contact]  WITH CHECK ADD  CONSTRAINT [FK_County] FOREIGN KEY([CountyId])
REFERENCES [dbo].[Counties] ([CountyId])
GO
ALTER TABLE [dbo].[Contact] CHECK CONSTRAINT [FK_County]
GO
ALTER TABLE [dbo].[Enemy]  WITH CHECK ADD  CONSTRAINT [PK_EnemyClass] FOREIGN KEY([EnemyClass])
REFERENCES [dbo].[Class] ([ClassId])
GO
ALTER TABLE [dbo].[Enemy] CHECK CONSTRAINT [PK_EnemyClass]
GO
ALTER TABLE [dbo].[Enemy]  WITH CHECK ADD  CONSTRAINT [PK_EnemyRace] FOREIGN KEY([EnemyRace])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[Enemy] CHECK CONSTRAINT [PK_EnemyRace]
GO
ALTER TABLE [dbo].[Npc]  WITH CHECK ADD  CONSTRAINT [PK_NpcClass] FOREIGN KEY([NpcClass])
REFERENCES [dbo].[Class] ([ClassId])
GO
ALTER TABLE [dbo].[Npc] CHECK CONSTRAINT [PK_NpcClass]
GO
ALTER TABLE [dbo].[Npc]  WITH CHECK ADD  CONSTRAINT [PK_NpcRace] FOREIGN KEY([NpcRace])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[Npc] CHECK CONSTRAINT [PK_NpcRace]
GO
ALTER TABLE [dbo].[UserChoose]  WITH CHECK ADD  CONSTRAINT [FK_UIdChoose] FOREIGN KEY([CUserId])
REFERENCES [dbo].[UserRegister] ([UserId])
GO
ALTER TABLE [dbo].[UserChoose] CHECK CONSTRAINT [FK_UIdChoose]
GO
ALTER TABLE [dbo].[UserChoose]  WITH CHECK ADD  CONSTRAINT [PK_UserChooseClass] FOREIGN KEY([UserChooseClass])
REFERENCES [dbo].[Class] ([ClassId])
GO
ALTER TABLE [dbo].[UserChoose] CHECK CONSTRAINT [PK_UserChooseClass]
GO
ALTER TABLE [dbo].[UserChoose]  WITH CHECK ADD  CONSTRAINT [PK_UserChooseRace] FOREIGN KEY([UserChooseRace])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[UserChoose] CHECK CONSTRAINT [PK_UserChooseRace]
GO
ALTER TABLE [dbo].[UserRegister]  WITH CHECK ADD  CONSTRAINT [PK_UsersChoose] FOREIGN KEY([UChoose])
REFERENCES [dbo].[UserChoose] ([UserChooseId])
GO
ALTER TABLE [dbo].[UserRegister] CHECK CONSTRAINT [PK_UsersChoose]
GO
/****** Object:  StoredProcedure [dbo].[SP_CheckUser]    Script Date: 9.06.2020 18:16:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_CheckUser]
	-- Add the parameters for the stored procedure here
	@UserName varchar(50),
	@UserPassword varchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF Exists(Select * From UserRegister Where UserName = @UserName And UserPassword != @UserPassword)
		return -1
	IF Not Exists(Select * From UserRegister Where UserName = @UserName And UserPassword = @UserPassword)
		return 0
	IF Exists(Select * From UserRegister Where UserName = @UserName And UserPassword = @UserPassword)
		return 1
END
GO
USE [master]
GO
ALTER DATABASE [FrpDatabase] SET  READ_WRITE 
GO
