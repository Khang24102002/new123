USE [master]
GO
/****** Object:  Database [SWP-Project]    Script Date: 2/12/2023 9:22:11 PM ******/
CREATE DATABASE [SWP-Project]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SWP-Project', FILENAME = N'F:\SQL\MSSQL15.SQLEXPRESS\MSSQL\DATA\SWP-Project.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SWP-Project_log', FILENAME = N'F:\SQL\MSSQL15.SQLEXPRESS\MSSQL\DATA\SWP-Project_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SWP-Project] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SWP-Project].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SWP-Project] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SWP-Project] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SWP-Project] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SWP-Project] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SWP-Project] SET ARITHABORT OFF 
GO
ALTER DATABASE [SWP-Project] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [SWP-Project] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SWP-Project] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SWP-Project] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SWP-Project] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SWP-Project] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SWP-Project] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SWP-Project] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SWP-Project] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SWP-Project] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SWP-Project] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SWP-Project] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SWP-Project] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SWP-Project] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SWP-Project] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SWP-Project] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SWP-Project] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SWP-Project] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SWP-Project] SET  MULTI_USER 
GO
ALTER DATABASE [SWP-Project] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SWP-Project] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SWP-Project] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SWP-Project] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SWP-Project] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SWP-Project] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [SWP-Project] SET QUERY_STORE = OFF
GO
USE [SWP-Project]
GO
/****** Object:  Table [dbo].[Chapter]    Script Date: 2/12/2023 9:22:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chapter](
	[Chapter_id] [int] NOT NULL,
	[course_id] [int] NULL,
	[chapter_name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Chapter_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommentCourse]    Script Date: 2/12/2023 9:22:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommentCourse](
	[comment_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[course_id] [int] NULL,
	[comment_detail] [nvarchar](max) NULL,
	[comment_date] [date] NULL,
	[comment_repply] [int] NULL,
	[comment_like] [int] NULL,
	[comment_image] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[comment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommentLesson]    Script Date: 2/12/2023 9:22:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommentLesson](
	[Comment_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[lesson_id] [int] NULL,
	[comment_repply] [int] NULL,
	[comment_like] [int] NULL,
	[comment_detail] [nvarchar](max) NULL,
	[comment_date] [date] NULL,
	[comment_image] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Comment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 2/12/2023 9:22:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[Course_id] [int] NOT NULL,
	[course_name] [nvarchar](50) NULL,
	[course_description] [nvarchar](max) NULL,
	[course_price] [float] NULL,
	[course_number_lesson] [int] NULL,
	[course_image] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discussion]    Script Date: 2/12/2023 9:22:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discussion](
	[discussion_Id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[discussion_detail] [nvarchar](max) NULL,
	[discussion_date] [date] NULL,
	[discussion_reply] [int] NULL,
	[discussion_like] [int] NULL,
	[discussion_image] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[discussion_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enroll]    Script Date: 2/12/2023 9:22:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enroll](
	[Enroll_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[course_id] [int] NULL,
	[start_date] [date] NULL,
	[end_date] [date] NULL,
	[rate] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Enroll_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 2/12/2023 9:22:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[image_id] [int] NOT NULL,
	[lesson_id] [int] NULL,
	[image_link] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lesson]    Script Date: 2/12/2023 9:22:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lesson](
	[lesson_id] [int] NOT NULL,
	[lesson_video] [varchar](max) NULL,
	[lesson_level] [varchar](1) NULL,
	[chapter_id] [int] NULL,
	[image_id] [int] NULL,
	[lesson_content] [varchar](max) NULL,
	[lesson_number] [int] NULL,
	[question_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[lesson_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Percentage]    Script Date: 2/12/2023 9:22:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Percentage](
	[User_Id] [int] NULL,
	[lesson_id] [int] NULL,
	[percentage] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 2/12/2023 9:22:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[Question_id] [int] NOT NULL,
	[Choice1] [varchar](max) NULL,
	[Choice2] [varchar](max) NULL,
	[Choice3] [varchar](max) NULL,
	[Choice4] [varchar](max) NULL,
	[Choice5] [varchar](max) NULL,
	[Question_correct] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[Question_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 2/12/2023 9:22:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[User_Id] [int] IDENTITY(1,1) NOT NULL,
	[user_name] [nvarchar](max) NULL,
	[user_mail] [varchar](50) NULL,
	[user_password] [varchar](20) NULL,
	[user_role] [tinyint] NULL,
	[user_gender] [tinyint] NULL,
	[user_address] [nvarchar](50) NULL,
	[user_phone] [int] NULL,
	[user_avatar] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[User_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (1, 1, N'First program and comments')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (2, 1, N'Variables and Types')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (3, 1, N'Operators')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (4, 1, N'Selection statements')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (5, 1, N'Loop statements')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (6, 1, N'Loops: while and do-while')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (7, 1, N'Arrays')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (8, 1, N'Strings')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (9, 1, N'Method')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (10, 2, N'First C Program')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (11, 2, N'Variable')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (12, 2, N'Input')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (13, 2, N'Selection statements')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (14, 2, N'Loops')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (15, 2, N'Loop: while and do-while')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (16, 2, N'Array')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (17, 2, N'String')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (18, 2, N'Function')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (19, 2, N'Recursive Function')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (20, 3, N'First Program C# ')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (21, 3, N'Variable')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (22, 3, N'Operators')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (23, 3, N'Conditional statement')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (24, 3, N'Loop statements')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (25, 3, N'Loops: while and do-while')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (26, 3, N'Arrays')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (27, 3, N'String')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (28, 3, N'C# Method')
GO
SET IDENTITY_INSERT [dbo].[CommentCourse] ON 

INSERT [dbo].[CommentCourse] ([comment_id], [user_id], [course_id], [comment_detail], [comment_date], [comment_repply], [comment_like], [comment_image]) VALUES (1, 1, 1, N'Course rất hay', CAST(N'2023-01-26' AS Date), 0, 0, NULL)
INSERT [dbo].[CommentCourse] ([comment_id], [user_id], [course_id], [comment_detail], [comment_date], [comment_repply], [comment_like], [comment_image]) VALUES (2, 2, 1, N'Tuyệt vời', CAST(N'2023-01-26' AS Date), 0, 0, NULL)
SET IDENTITY_INSERT [dbo].[CommentCourse] OFF
GO
SET IDENTITY_INSERT [dbo].[CommentLesson] ON 

INSERT [dbo].[CommentLesson] ([Comment_id], [user_id], [lesson_id], [comment_repply], [comment_like], [comment_detail], [comment_date], [comment_image]) VALUES (1, 1, 1, 0, 0, N'Comment1', CAST(N'2023-01-26' AS Date), NULL)
SET IDENTITY_INSERT [dbo].[CommentLesson] OFF
GO
INSERT [dbo].[Course] ([Course_id], [course_name], [course_description], [course_price], [course_number_lesson], [course_image]) VALUES (1, N'Java', N'Tìm hiểu cơ bản về ngôn ngữ lập trình Java thông qua các tác vụ mã hóa tương tác. Sau khi kết thúc khóa học, học viên có được nhiều kinh nghiệm thực hành về viết, biên dịch và thực thi các chương trình Java.', 1000000, 81, N'https://codelearn.io/CodeCamp/CodeCamp/Upload/Course/1e746fe3cbe448bda850d8b953a78954.jpg')
INSERT [dbo].[Course] ([Course_id], [course_name], [course_description], [course_price], [course_number_lesson], [course_image]) VALUES (2, N'C', N'Khóa học lập trình C hoàn chỉnh dành cho người mới bắt đầu, khóa học này dạy cho bạn các nguyên tắc cơ bản của một ngôn ngữ lập trình', 800000, 84, N'https://codelearn.io/CodeCamp/CodeCamp/Upload/Course/eab2e064afab4d8aa5f0b0d408cef9e0.jpg')
INSERT [dbo].[Course] ([Course_id], [course_name], [course_description], [course_price], [course_number_lesson], [course_image]) VALUES (3, N'C#', N'Khóa học này sẽ giúp bạn làm quen với các khái niệm lập trình cơ bản của C# và có thể viết các chương trình C# đơn giản.', 1200000, 82, N'https://codelearn.io/CodeCamp/CodeCamp/Upload/Course/3aa5f5e3e4cb4cb381288840a93c99eb.jpg')
GO
SET IDENTITY_INSERT [dbo].[Discussion] ON 

INSERT [dbo].[Discussion] ([discussion_Id], [user_id], [discussion_detail], [discussion_date], [discussion_reply], [discussion_like], [discussion_image]) VALUES (1, 1, N'Rất đẹp rất tuyệt vời', CAST(N'2023-01-26' AS Date), 0, 0, NULL)
INSERT [dbo].[Discussion] ([discussion_Id], [user_id], [discussion_detail], [discussion_date], [discussion_reply], [discussion_like], [discussion_image]) VALUES (2, 2, N'Ahihihihi', CAST(N'2023-01-26' AS Date), 0, 0, NULL)
SET IDENTITY_INSERT [dbo].[Discussion] OFF
GO
SET IDENTITY_INSERT [dbo].[Enroll] ON 

INSERT [dbo].[Enroll] ([Enroll_id], [user_id], [course_id], [start_date], [end_date], [rate]) VALUES (1, 1, 1, NULL, NULL, 0)
INSERT [dbo].[Enroll] ([Enroll_id], [user_id], [course_id], [start_date], [end_date], [rate]) VALUES (2, 2, 1, NULL, NULL, 0)
INSERT [dbo].[Enroll] ([Enroll_id], [user_id], [course_id], [start_date], [end_date], [rate]) VALUES (3, 3, 1, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[Enroll] OFF
GO
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [question_id]) VALUES (1, N'', N'1', 1, 0, N'lesson1.jsp', 1, 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [question_id]) VALUES (2, N'', N'1', 1, 0, N'lesson2.jsp', 2, 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [question_id]) VALUES (3, N'', N'1', 1, 0, N'lesson3.jsp', 3, 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [question_id]) VALUES (4, N'', N'1', 1, 0, N'lesson4.jsp', 4, 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [question_id]) VALUES (5, N'', N'1', 1, 0, N'lesson5.jsp', 5, 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [question_id]) VALUES (6, N'', N'1', 1, 0, N'lesson6.jsp', 6, 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [question_id]) VALUES (7, N'', N'1', 1, 0, N'lesson7.jsp', 7, 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [question_id]) VALUES (8, N'', N'1', 1, 0, N'lesson8.jsp', 8, 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [question_id]) VALUES (9, N'', N'1', 2, 0, N'lesson9.jsp', 9, 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [question_id]) VALUES (10, N'', N'1', 2, 0, N'lesson10.jsp', 10, 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [question_id]) VALUES (11, N'', N'1', 2, 0, N'lesson11.jsp', 11, 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [question_id]) VALUES (12, N'', N'1', 2, 0, N'lesson12.jsp', 12, 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [question_id]) VALUES (13, N'', N'1', 2, 0, N'lesson13.jsp', 13, 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [question_id]) VALUES (14, N'', N'1', 2, 0, N'lesson14.jsp', 14, 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [question_id]) VALUES (15, N'', N'1', 3, 0, N'lesson15.jsp', 15, 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [question_id]) VALUES (16, N'', N'1', 3, 0, N'lesson16.jsp', 16, 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [question_id]) VALUES (17, N'', N'1', 3, 0, N'lesson17.jsp', 17, 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [question_id]) VALUES (18, N'', N'1', 3, 0, N'lesson18.jsp', 18, 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [question_id]) VALUES (19, N'', N'1', 3, 0, N'lesson19.jsp', 19, 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [question_id]) VALUES (20, N'', N'1', 4, 0, N'lesson20.jsp', 20, 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [question_id]) VALUES (21, N'', N'1', 4, 0, N'lesson21jsp', 21, 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [question_id]) VALUES (22, N'', N'1', 4, 0, N'lesson22.jsp', 22, 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [question_id]) VALUES (23, N'', N'1', 4, 0, N'lesson23.jsp', 23, 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [question_id]) VALUES (24, N'', N'1', 4, 0, N'lesson24.jsp', 24, 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [question_id]) VALUES (25, N'', N'1', 4, 0, N'lesson25.jsp', 25, 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [question_id]) VALUES (26, N'', N'1', 5, 0, N'lesson26.jsp', 26, 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [question_id]) VALUES (27, N'', N'1', 5, 0, N'lesson27.jsp', 27, 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [question_id]) VALUES (28, N'', N'1', 5, 0, N'lesson28.jsp', 28, 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [question_id]) VALUES (29, N'', N'1', 6, 0, N'lesson29.jsp', 29, 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [question_id]) VALUES (30, N'', N'1', 6, 0, N'lesson30.jsp', 30, 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [question_id]) VALUES (31, N'', N'1', 6, 0, N'lesson31.jsp', 31, 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [question_id]) VALUES (32, N'', N'1', 6, 0, N'lesson32.jsp', 32, 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [question_id]) VALUES (33, N'', N'1', 7, 0, N'lesson33.jsp', 33, 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [question_id]) VALUES (34, N'', N'1', 7, 0, N'lesson34.jsp', 34, 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [question_id]) VALUES (35, N'', N'1', 7, 0, N'lesson35.jsp', 35, 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [question_id]) VALUES (36, N'', N'1', 7, 0, N'lesson36.jsp', 36, 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [question_id]) VALUES (37, N'', N'1', 7, 0, N'lesson37.jsp', 37, 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [question_id]) VALUES (38, N'', N'1', 8, 0, N'lesson38.jsp', 38, 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [question_id]) VALUES (39, N'', N'1', 8, 0, N'lesson39.jsp', 39, 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [question_id]) VALUES (40, N'', N'1', 8, 0, N'lesson40.jsp', 40, 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [question_id]) VALUES (41, N'', N'1', 8, 0, N'lesson41.jsp', 41, 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [question_id]) VALUES (42, N'', N'1', 8, 0, N'lesson42.jsp', 42, 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [question_id]) VALUES (43, N'', N'1', 8, 0, N'lesson43.jsp', 43, 0)
GO
INSERT [dbo].[Percentage] ([User_Id], [lesson_id], [percentage]) VALUES (1, 1, 1)
INSERT [dbo].[Percentage] ([User_Id], [lesson_id], [percentage]) VALUES (1, 2, 1)
INSERT [dbo].[Percentage] ([User_Id], [lesson_id], [percentage]) VALUES (1, 3, 1)
INSERT [dbo].[Percentage] ([User_Id], [lesson_id], [percentage]) VALUES (1, 5, 1)
INSERT [dbo].[Percentage] ([User_Id], [lesson_id], [percentage]) VALUES (1, 4, 1)
INSERT [dbo].[Percentage] ([User_Id], [lesson_id], [percentage]) VALUES (1, 6, 1)
INSERT [dbo].[Percentage] ([User_Id], [lesson_id], [percentage]) VALUES (1, 7, 1)
INSERT [dbo].[Percentage] ([User_Id], [lesson_id], [percentage]) VALUES (1, 10, 1)
INSERT [dbo].[Percentage] ([User_Id], [lesson_id], [percentage]) VALUES (1, 15, 1)
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([User_Id], [user_name], [user_mail], [user_password], [user_role], [user_gender], [user_address], [user_phone], [user_avatar]) VALUES (1, N'kienpt', N'kienpt@gmail.com', N'123', 1, 0, NULL, NULL, NULL)
INSERT [dbo].[User] ([User_Id], [user_name], [user_mail], [user_password], [user_role], [user_gender], [user_address], [user_phone], [user_avatar]) VALUES (2, N'ABC', N'kienpt2@gmail.com', N'1234', 1, 0, NULL, NULL, NULL)
INSERT [dbo].[User] ([User_Id], [user_name], [user_mail], [user_password], [user_role], [user_gender], [user_address], [user_phone], [user_avatar]) VALUES (3, N'BCD', N'BCD@gmail.com', N'1234', 1, 0, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[CommentCourse] ADD  DEFAULT ((0)) FOR [comment_repply]
GO
ALTER TABLE [dbo].[CommentCourse] ADD  DEFAULT ((0)) FOR [comment_like]
GO
ALTER TABLE [dbo].[CommentLesson] ADD  DEFAULT ((0)) FOR [comment_repply]
GO
ALTER TABLE [dbo].[CommentLesson] ADD  DEFAULT ((0)) FOR [comment_like]
GO
ALTER TABLE [dbo].[Discussion] ADD  DEFAULT ((0)) FOR [discussion_reply]
GO
ALTER TABLE [dbo].[Discussion] ADD  DEFAULT ((0)) FOR [discussion_like]
GO
ALTER TABLE [dbo].[Enroll] ADD  DEFAULT ((0)) FOR [rate]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT ((1)) FOR [user_role]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT ((0)) FOR [user_gender]
GO
ALTER TABLE [dbo].[Chapter]  WITH CHECK ADD  CONSTRAINT [FK_CourseChapter] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([Course_id])
GO
ALTER TABLE [dbo].[Chapter] CHECK CONSTRAINT [FK_CourseChapter]
GO
ALTER TABLE [dbo].[CommentCourse]  WITH CHECK ADD  CONSTRAINT [FK_CommentCourse] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([Course_id])
GO
ALTER TABLE [dbo].[CommentCourse] CHECK CONSTRAINT [FK_CommentCourse]
GO
ALTER TABLE [dbo].[CommentCourse]  WITH CHECK ADD  CONSTRAINT [FK_UserCommentCourse] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([User_Id])
GO
ALTER TABLE [dbo].[CommentCourse] CHECK CONSTRAINT [FK_UserCommentCourse]
GO
ALTER TABLE [dbo].[CommentLesson]  WITH CHECK ADD  CONSTRAINT [FK_CommentOfChapter] FOREIGN KEY([lesson_id])
REFERENCES [dbo].[Lesson] ([lesson_id])
GO
ALTER TABLE [dbo].[CommentLesson] CHECK CONSTRAINT [FK_CommentOfChapter]
GO
ALTER TABLE [dbo].[CommentLesson]  WITH CHECK ADD  CONSTRAINT [FK_UserCommentLesson] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([User_Id])
GO
ALTER TABLE [dbo].[CommentLesson] CHECK CONSTRAINT [FK_UserCommentLesson]
GO
ALTER TABLE [dbo].[Discussion]  WITH CHECK ADD  CONSTRAINT [FK_UserDiscussion] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([User_Id])
GO
ALTER TABLE [dbo].[Discussion] CHECK CONSTRAINT [FK_UserDiscussion]
GO
ALTER TABLE [dbo].[Enroll]  WITH CHECK ADD  CONSTRAINT [FK_CourseEnroll] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([Course_id])
GO
ALTER TABLE [dbo].[Enroll] CHECK CONSTRAINT [FK_CourseEnroll]
GO
ALTER TABLE [dbo].[Enroll]  WITH CHECK ADD  CONSTRAINT [FK_UserEnroll] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([User_Id])
GO
ALTER TABLE [dbo].[Enroll] CHECK CONSTRAINT [FK_UserEnroll]
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FK_ImageOfChapter] FOREIGN KEY([lesson_id])
REFERENCES [dbo].[Lesson] ([lesson_id])
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FK_ImageOfChapter]
GO
ALTER TABLE [dbo].[Lesson]  WITH CHECK ADD  CONSTRAINT [FK_LessonOfChapter] FOREIGN KEY([chapter_id])
REFERENCES [dbo].[Chapter] ([Chapter_id])
GO
ALTER TABLE [dbo].[Lesson] CHECK CONSTRAINT [FK_LessonOfChapter]
GO
ALTER TABLE [dbo].[Percentage]  WITH CHECK ADD FOREIGN KEY([lesson_id])
REFERENCES [dbo].[Lesson] ([lesson_id])
GO
ALTER TABLE [dbo].[Percentage]  WITH CHECK ADD FOREIGN KEY([User_Id])
REFERENCES [dbo].[User] ([User_Id])
GO
USE [master]
GO
ALTER DATABASE [SWP-Project] SET  READ_WRITE 
GO
