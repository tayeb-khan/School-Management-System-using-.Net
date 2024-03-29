USE [ProjectDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 4/9/2018 9:28:27 AM ******/
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
/****** Object:  Table [dbo].[Actor]    Script Date: 4/9/2018 9:28:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actor](
	[Actor_Id] [int] IDENTITY(1,1) NOT NULL,
	[Actor_Type] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Actor] PRIMARY KEY CLUSTERED 
(
	[Actor_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admitted]    Script Date: 4/9/2018 9:28:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admitted](
	[StudentId] [int] IDENTITY(1,1) NOT NULL,
	[Birthdate] [datetime2](7) NOT NULL,
	[Class] [nvarchar](max) NOT NULL,
	[Contact] [nvarchar](15) NOT NULL,
	[FatherName] [nvarchar](50) NOT NULL,
	[Guardian] [nvarchar](max) NULL,
	[GuardianDetails] [nvarchar](80) NOT NULL,
	[LastSchool] [nvarchar](100) NOT NULL,
	[MotherName] [nvarchar](50) NOT NULL,
	[PerPost] [nvarchar](50) NOT NULL,
	[PerVill] [nvarchar](50) NOT NULL,
	[PerZila] [nvarchar](50) NOT NULL,
	[PrePost] [nvarchar](50) NOT NULL,
	[PreVill] [nvarchar](50) NOT NULL,
	[PreZila] [nvarchar](50) NOT NULL,
	[Religion] [nvarchar](50) NOT NULL,
	[StudentNameBan] [nvarchar](50) NOT NULL,
	[StudentNameEng] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Admitted] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 4/9/2018 9:28:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[Class_Id] [int] IDENTITY(1,1) NOT NULL,
	[Class_Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[Class_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamType]    Script Date: 4/9/2018 9:28:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamType](
	[ExamType_Id] [int] IDENTITY(1,1) NOT NULL,
	[ExamType_Name] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_ExamType] PRIMARY KEY CLUSTERED 
(
	[ExamType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 4/9/2018 9:28:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[Group_Id] [int] IDENTITY(1,1) NOT NULL,
	[Group_Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[Group_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Result]    Script Date: 4/9/2018 9:28:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Result](
	[Result_Id] [int] IDENTITY(1,1) NOT NULL,
	[Class_Id] [int] NOT NULL,
	[ExamType_Id] [int] NOT NULL,
	[Mark] [int] NOT NULL,
	[Section_Id] [int] NOT NULL,
	[Student_Id] [int] NOT NULL,
	[Subject_Id] [int] NOT NULL,
	[Year] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Result] PRIMARY KEY CLUSTERED 
(
	[Result_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Section]    Script Date: 4/9/2018 9:28:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Section](
	[Section_Id] [int] IDENTITY(1,1) NOT NULL,
	[Section_Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Section] PRIMARY KEY CLUSTERED 
(
	[Section_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 4/9/2018 9:28:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[Subject_Id] [int] IDENTITY(1,1) NOT NULL,
	[Subject_Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[Subject_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teachers]    Script Date: 4/9/2018 9:28:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers](
	[Teacher_Id] [int] IDENTITY(1,1) NOT NULL,
	[Contact] [int] NOT NULL,
	[Designation] [nvarchar](40) NULL,
	[Teacher_Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Teachers] PRIMARY KEY CLUSTERED 
(
	[Teacher_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAccounts]    Script Date: 4/9/2018 9:28:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAccounts](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[ComfirmPassword] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Username] [nvarchar](max) NOT NULL,
	[Account_Type] [nvarchar](max) NOT NULL,
	[StudentId] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserAccounts] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180309114320_first', N'2.0.1-rtm-125')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180309114549_mark', N'2.0.1-rtm-125')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180309115204_admitted', N'2.0.1-rtm-125')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180330025852_new', N'2.0.1-rtm-125')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180330094636_new1', N'2.0.1-rtm-125')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180404193233_forResult', N'2.0.1-rtm-125')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180404220803_forcolum', N'2.0.1-rtm-125')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180408054724_TA', N'2.0.1-rtm-125')
SET IDENTITY_INSERT [dbo].[Actor] ON 

INSERT [dbo].[Actor] ([Actor_Id], [Actor_Type]) VALUES (1, N'SystemAdmin')
INSERT [dbo].[Actor] ([Actor_Id], [Actor_Type]) VALUES (2, N'AdmissionAdmin')
INSERT [dbo].[Actor] ([Actor_Id], [Actor_Type]) VALUES (3, N'Register')
INSERT [dbo].[Actor] ([Actor_Id], [Actor_Type]) VALUES (4, N'Teacher')
INSERT [dbo].[Actor] ([Actor_Id], [Actor_Type]) VALUES (5, N'Student')
SET IDENTITY_INSERT [dbo].[Actor] OFF
SET IDENTITY_INSERT [dbo].[Admitted] ON 

INSERT [dbo].[Admitted] ([StudentId], [Birthdate], [Class], [Contact], [FatherName], [Guardian], [GuardianDetails], [LastSchool], [MotherName], [PerPost], [PerVill], [PerZila], [PrePost], [PreVill], [PreZila], [Religion], [StudentNameBan], [StudentNameEng]) VALUES (6, CAST(N'1997-03-20T00:00:00.0000000' AS DateTime2), N'Six', N'01754949680', N'Naeem Khan', N'Badal Mir', N'Business, 20000tk', N'Kayer High School', N'Nazma Begum', N'Pubail-1721', N'Bara Kayer', N'Gazipur Sadar, Gazipur', N'Pubail-1721', N'Bara Kayer', N'Gazipur Sadar, Gazipur', N'Islam', N'Iftakhar Ahamad', N'Iftakhar Ahamad')
INSERT [dbo].[Admitted] ([StudentId], [Birthdate], [Class], [Contact], [FatherName], [Guardian], [GuardianDetails], [LastSchool], [MotherName], [PerPost], [PerVill], [PerZila], [PrePost], [PreVill], [PreZila], [Religion], [StudentNameBan], [StudentNameEng]) VALUES (7, CAST(N'1996-11-30T00:00:00.0000000' AS DateTime2), N'Six', N'01754949680', N'Rafiqul Islam', N'Ishrat Jahan Rumi', N'Business, 20000tk', N'Kayer High School', N'Jhorna Akter', N'Mawna-1648', N'Mawna', N'Gazipur Sadar, Gazipur', N'Mawna-1648', N'Mawna', N'Ishrat Jahan Rumi', N'Islam', N'Sharmin Sultana Sonia', N'Sharmin Sultana Sonia')
INSERT [dbo].[Admitted] ([StudentId], [Birthdate], [Class], [Contact], [FatherName], [Guardian], [GuardianDetails], [LastSchool], [MotherName], [PerPost], [PerVill], [PerZila], [PrePost], [PreVill], [PreZila], [Religion], [StudentNameBan], [StudentNameEng]) VALUES (8, CAST(N'1997-11-14T00:00:00.0000000' AS DateTime2), N'Seven', N'01777701777', N'Jahangir Alam', NULL, N'Business,20000Tk', N'Milestone School & College', N'Nazma Begum', N'Uttara-1230', N'Abdullahpur', N'Dhaka ', N'Uttara-1230', N'Abdullahpur', N'Dhaka', N'Islam', N'Janifar Jahan', N'Janifar Jahan')
INSERT [dbo].[Admitted] ([StudentId], [Birthdate], [Class], [Contact], [FatherName], [Guardian], [GuardianDetails], [LastSchool], [MotherName], [PerPost], [PerVill], [PerZila], [PrePost], [PreVill], [PreZila], [Religion], [StudentNameBan], [StudentNameEng]) VALUES (10, CAST(N'1996-01-24T00:00:00.0000000' AS DateTime2), N'Seven', N'01558894854', N'Rafiqul Islam', NULL, N'Business,20000Tk', N'Uttara Girls School', N'Mrs. Rafiqul', N'Uttara-1230', N'Azampur', N'Dhaka ', N'Uttara-1230', N'Azampur', N'Dhaka', N'Islam', N'Ishrat Jahan Rumi ', N'Ishrat Jahan Rumi ')
INSERT [dbo].[Admitted] ([StudentId], [Birthdate], [Class], [Contact], [FatherName], [Guardian], [GuardianDetails], [LastSchool], [MotherName], [PerPost], [PerVill], [PerZila], [PrePost], [PreVill], [PreZila], [Religion], [StudentNameBan], [StudentNameEng]) VALUES (20, CAST(N'1996-07-11T00:00:00.0000000' AS DateTime2), N'Eight', N'01635229748', N'Rama Kanta Das', N'Sabuj Das', N'Business, 20000tk', N'Kayer High School', N'Fulmala Rani Das', N'Pubail-1721', N'Bara Kayer', N'Gazipur Sadar, Gazipur', N'Pubail-1721', N'Bara Kayer', N'Gazipur Sadar, Gazipur', N'Hindu', N'Shovo Das', N'Shovo Das')
INSERT [dbo].[Admitted] ([StudentId], [Birthdate], [Class], [Contact], [FatherName], [Guardian], [GuardianDetails], [LastSchool], [MotherName], [PerPost], [PerVill], [PerZila], [PrePost], [PreVill], [PreZila], [Religion], [StudentNameBan], [StudentNameEng]) VALUES (21, CAST(N'1997-03-14T00:00:00.0000000' AS DateTime2), N'Seven', N'01945463030', N'Janay Alam', NULL, N'Business, 20000tk', N'Kayer High School', N'Khoseda Begum', N'Pubail-1721', N'Bara Kayer', N'Gazipur Sadar, Gazipur', N'Pubail-1721', N'Bara Kayer', N'Gazipur Sadar, Gazipur', N'Islam', N'Rayhan molla', N'Rayhan Molla ')
INSERT [dbo].[Admitted] ([StudentId], [Birthdate], [Class], [Contact], [FatherName], [Guardian], [GuardianDetails], [LastSchool], [MotherName], [PerPost], [PerVill], [PerZila], [PrePost], [PreVill], [PreZila], [Religion], [StudentNameBan], [StudentNameEng]) VALUES (29, CAST(N'1992-08-24T00:00:00.0000000' AS DateTime2), N'Nine', N'01659859888', N'Let Guljer', NULL, N'Business, 30000tk', N'Ranibilashmoni Boy''s High School', N'Sabina Yesmin', N'Gazipur-1720', N'Chayabithy', N'Gazipur Sadar, Gazipur', N'Gazipur-1720', N'Chayabithy', N'Gazipur Sadar, Gazipur', N'Islam', N'Samsul Arefin', N'Samsul Arefin')
SET IDENTITY_INSERT [dbo].[Admitted] OFF
SET IDENTITY_INSERT [dbo].[Class] ON 

INSERT [dbo].[Class] ([Class_Id], [Class_Name]) VALUES (1, N'Six')
INSERT [dbo].[Class] ([Class_Id], [Class_Name]) VALUES (2, N'Seven')
INSERT [dbo].[Class] ([Class_Id], [Class_Name]) VALUES (3, N'Eight')
INSERT [dbo].[Class] ([Class_Id], [Class_Name]) VALUES (4, N'Nine')
INSERT [dbo].[Class] ([Class_Id], [Class_Name]) VALUES (5, N'Ten')
SET IDENTITY_INSERT [dbo].[Class] OFF
SET IDENTITY_INSERT [dbo].[ExamType] ON 

INSERT [dbo].[ExamType] ([ExamType_Id], [ExamType_Name]) VALUES (1, N'First Term')
INSERT [dbo].[ExamType] ([ExamType_Id], [ExamType_Name]) VALUES (2, N'Mid Term')
INSERT [dbo].[ExamType] ([ExamType_Id], [ExamType_Name]) VALUES (3, N'Final ')
INSERT [dbo].[ExamType] ([ExamType_Id], [ExamType_Name]) VALUES (4, N'Class Test')
SET IDENTITY_INSERT [dbo].[ExamType] OFF
SET IDENTITY_INSERT [dbo].[Group] ON 

INSERT [dbo].[Group] ([Group_Id], [Group_Name]) VALUES (1, N'Science')
INSERT [dbo].[Group] ([Group_Id], [Group_Name]) VALUES (2, N'Business')
INSERT [dbo].[Group] ([Group_Id], [Group_Name]) VALUES (3, N'Huminity')
SET IDENTITY_INSERT [dbo].[Group] OFF
SET IDENTITY_INSERT [dbo].[Result] ON 

INSERT [dbo].[Result] ([Result_Id], [Class_Id], [ExamType_Id], [Mark], [Section_Id], [Student_Id], [Subject_Id], [Year]) VALUES (1, 1, 1, 80, 1, 6, 1, N'2018')
INSERT [dbo].[Result] ([Result_Id], [Class_Id], [ExamType_Id], [Mark], [Section_Id], [Student_Id], [Subject_Id], [Year]) VALUES (2, 1, 1, 90, 1, 6, 2, N'2018')
INSERT [dbo].[Result] ([Result_Id], [Class_Id], [ExamType_Id], [Mark], [Section_Id], [Student_Id], [Subject_Id], [Year]) VALUES (3, 3, 1, 75, 2, 20, 1, N'2018')
INSERT [dbo].[Result] ([Result_Id], [Class_Id], [ExamType_Id], [Mark], [Section_Id], [Student_Id], [Subject_Id], [Year]) VALUES (4, 3, 1, 69, 2, 20, 2, N'2018')
INSERT [dbo].[Result] ([Result_Id], [Class_Id], [ExamType_Id], [Mark], [Section_Id], [Student_Id], [Subject_Id], [Year]) VALUES (5, 3, 1, 65, 2, 20, 5, N'2018')
INSERT [dbo].[Result] ([Result_Id], [Class_Id], [ExamType_Id], [Mark], [Section_Id], [Student_Id], [Subject_Id], [Year]) VALUES (1002, 1, 3, 69, 1, 6, 5, N'2018')
INSERT [dbo].[Result] ([Result_Id], [Class_Id], [ExamType_Id], [Mark], [Section_Id], [Student_Id], [Subject_Id], [Year]) VALUES (1003, 1, 2, 89, 1, 6, 3, N'2018')
INSERT [dbo].[Result] ([Result_Id], [Class_Id], [ExamType_Id], [Mark], [Section_Id], [Student_Id], [Subject_Id], [Year]) VALUES (1004, 1, 3, 65, 1, 6, 1, N'2018')
INSERT [dbo].[Result] ([Result_Id], [Class_Id], [ExamType_Id], [Mark], [Section_Id], [Student_Id], [Subject_Id], [Year]) VALUES (1005, 1, 3, 67, 1, 6, 6, N'2018')
INSERT [dbo].[Result] ([Result_Id], [Class_Id], [ExamType_Id], [Mark], [Section_Id], [Student_Id], [Subject_Id], [Year]) VALUES (1006, 1, 2, 89, 1, 6, 1, N'2018')
SET IDENTITY_INSERT [dbo].[Result] OFF
SET IDENTITY_INSERT [dbo].[Section] ON 

INSERT [dbo].[Section] ([Section_Id], [Section_Name]) VALUES (1, N'A')
INSERT [dbo].[Section] ([Section_Id], [Section_Name]) VALUES (2, N'B')
INSERT [dbo].[Section] ([Section_Id], [Section_Name]) VALUES (3, N'C')
INSERT [dbo].[Section] ([Section_Id], [Section_Name]) VALUES (4, N'D')
SET IDENTITY_INSERT [dbo].[Section] OFF
SET IDENTITY_INSERT [dbo].[Subject] ON 

INSERT [dbo].[Subject] ([Subject_Id], [Subject_Name]) VALUES (1, N'Bangla 1st Part')
INSERT [dbo].[Subject] ([Subject_Id], [Subject_Name]) VALUES (2, N'Bangla 2nd Part')
INSERT [dbo].[Subject] ([Subject_Id], [Subject_Name]) VALUES (3, N'English 1st Part')
INSERT [dbo].[Subject] ([Subject_Id], [Subject_Name]) VALUES (4, N'English 2nd Part')
INSERT [dbo].[Subject] ([Subject_Id], [Subject_Name]) VALUES (5, N'General Math')
INSERT [dbo].[Subject] ([Subject_Id], [Subject_Name]) VALUES (6, N'Religion')
INSERT [dbo].[Subject] ([Subject_Id], [Subject_Name]) VALUES (1003, N'ICT')
SET IDENTITY_INSERT [dbo].[Subject] OFF
SET IDENTITY_INSERT [dbo].[Teachers] ON 

INSERT [dbo].[Teachers] ([Teacher_Id], [Contact], [Designation], [Teacher_Name]) VALUES (1, 1789897897, N'English Lecturer', N'Janifar Jahan')
INSERT [dbo].[Teachers] ([Teacher_Id], [Contact], [Designation], [Teacher_Name]) VALUES (2, 1676767987, N'Bangla Lecturer', N'Asif Iftekhar Pial')
SET IDENTITY_INSERT [dbo].[Teachers] OFF
SET IDENTITY_INSERT [dbo].[UserAccounts] ON 

INSERT [dbo].[UserAccounts] ([UserId], [ComfirmPassword], [Email], [Password], [Username], [Account_Type], [StudentId]) VALUES (13, N'mtk', N'iftakhar_mtk@outlook.com', N'mtk', N'Iftakhar Ahamad', N'SystemAdmin', NULL)
INSERT [dbo].[UserAccounts] ([UserId], [ComfirmPassword], [Email], [Password], [Username], [Account_Type], [StudentId]) VALUES (14, N'sonia', N'sharminsultanasonia21@gmail.com', N'sonia', N'Sharmin Sultana Sonia', N'AdmissionAdmin', NULL)
INSERT [dbo].[UserAccounts] ([UserId], [ComfirmPassword], [Email], [Password], [Username], [Account_Type], [StudentId]) VALUES (15, N'rumi', N'ishrat3389@gmail.com', N'rumi', N'Ishrat Jahan Rumi', N'Register', NULL)
INSERT [dbo].[UserAccounts] ([UserId], [ComfirmPassword], [Email], [Password], [Username], [Account_Type], [StudentId]) VALUES (16, N'janifar', N'janifarshuvra@gmail.com', N'janifar', N'Janifar Jahan', N'Teacher', N'1')
INSERT [dbo].[UserAccounts] ([UserId], [ComfirmPassword], [Email], [Password], [Username], [Account_Type], [StudentId]) VALUES (17, N'shovo', N'shovo@gmail.com', N'shovo', N'Shovo Das', N'Student', N'20')
INSERT [dbo].[UserAccounts] ([UserId], [ComfirmPassword], [Email], [Password], [Username], [Account_Type], [StudentId]) VALUES (18, N'rayhan', N'rayhan@gmail.com', N'rayhan', N'Rayhan Molla', N'Student', N'21')
INSERT [dbo].[UserAccounts] ([UserId], [ComfirmPassword], [Email], [Password], [Username], [Account_Type], [StudentId]) VALUES (19, N'mtk', N'iftakharahamadtayef@gmail.com', N'mtk', N'Iftakhar Ahamad', N'Student', N'6')
INSERT [dbo].[UserAccounts] ([UserId], [ComfirmPassword], [Email], [Password], [Username], [Account_Type], [StudentId]) VALUES (1013, N'pial', N'pial@gmail.com', N'pial', N'Asif Iftekhar Pial', N'Teacher', N'2')
SET IDENTITY_INSERT [dbo].[UserAccounts] OFF
ALTER TABLE [dbo].[UserAccounts] ADD  DEFAULT (N'') FOR [Account_Type]
GO
ALTER TABLE [dbo].[Result]  WITH CHECK ADD  CONSTRAINT [FK_Result_Class_Class_Id] FOREIGN KEY([Class_Id])
REFERENCES [dbo].[Class] ([Class_Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Result] CHECK CONSTRAINT [FK_Result_Class_Class_Id]
GO
ALTER TABLE [dbo].[Result]  WITH CHECK ADD  CONSTRAINT [FK_Result_ExamType_ExamType_Id] FOREIGN KEY([ExamType_Id])
REFERENCES [dbo].[ExamType] ([ExamType_Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Result] CHECK CONSTRAINT [FK_Result_ExamType_ExamType_Id]
GO
ALTER TABLE [dbo].[Result]  WITH CHECK ADD  CONSTRAINT [FK_Result_Section_Section_Id] FOREIGN KEY([Section_Id])
REFERENCES [dbo].[Section] ([Section_Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Result] CHECK CONSTRAINT [FK_Result_Section_Section_Id]
GO
ALTER TABLE [dbo].[Result]  WITH CHECK ADD  CONSTRAINT [FK_Result_Subject_Subject_Id] FOREIGN KEY([Subject_Id])
REFERENCES [dbo].[Subject] ([Subject_Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Result] CHECK CONSTRAINT [FK_Result_Subject_Subject_Id]
GO
