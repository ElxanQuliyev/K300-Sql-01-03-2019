
GO
CREATE TABLE [dbo].[Authors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AuthorName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book_To_Reader]    Script Date: 1/3/2020 9:23:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book_To_Reader](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BookId] [int] NULL,
	[ReaderId] [int] NULL,
	[TakeDate] [datetime] NULL,
	[ReturnDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 1/3/2020 9:23:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BookName] [nvarchar](100) NOT NULL,
	[CreateDate] [date] NULL,
	[Counts] [int] NULL,
	[AuthorId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Faculties]    Script Date: 1/3/2020 9:23:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faculties](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FacultyName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Readers]    Script Date: 1/3/2020 9:23:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Readers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Firstname] [nvarchar](50) NOT NULL,
	[Lastname] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](15) NOT NULL,
	[facultyId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Authors] ON 

INSERT [dbo].[Authors] ([Id], [AuthorName]) VALUES (1, N'Xalid Hüseyn')
INSERT [dbo].[Authors] ([Id], [AuthorName]) VALUES (2, N'Qurban Seid')
INSERT [dbo].[Authors] ([Id], [AuthorName]) VALUES (3, N'Nikalay Lef Tolstoy')
INSERT [dbo].[Authors] ([Id], [AuthorName]) VALUES (4, N'Nizami Gencevi')
INSERT [dbo].[Authors] ([Id], [AuthorName]) VALUES (5, N'Mirze Elekber Sabir')
SET IDENTITY_INSERT [dbo].[Authors] OFF
SET IDENTITY_INSERT [dbo].[Book_To_Reader] ON 

INSERT [dbo].[Book_To_Reader] ([Id], [BookId], [ReaderId], [TakeDate], [ReturnDate]) VALUES (1, 1, 2, CAST(N'2019-05-06T00:00:00.000' AS DateTime), CAST(N'2019-06-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Book_To_Reader] ([Id], [BookId], [ReaderId], [TakeDate], [ReturnDate]) VALUES (2, 2, 2, CAST(N'2019-03-03T00:00:00.000' AS DateTime), CAST(N'2019-04-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Book_To_Reader] ([Id], [BookId], [ReaderId], [TakeDate], [ReturnDate]) VALUES (3, 3, 1, CAST(N'2019-06-06T00:00:00.000' AS DateTime), CAST(N'2019-07-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Book_To_Reader] ([Id], [BookId], [ReaderId], [TakeDate], [ReturnDate]) VALUES (4, 3, 2, CAST(N'2019-04-04T00:00:00.000' AS DateTime), CAST(N'2019-09-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Book_To_Reader] ([Id], [BookId], [ReaderId], [TakeDate], [ReturnDate]) VALUES (5, 4, 3, CAST(N'2019-05-05T00:00:00.000' AS DateTime), CAST(N'2019-06-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Book_To_Reader] ([Id], [BookId], [ReaderId], [TakeDate], [ReturnDate]) VALUES (6, 1, 1, CAST(N'2019-05-04T00:00:00.000' AS DateTime), CAST(N'2019-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Book_To_Reader] ([Id], [BookId], [ReaderId], [TakeDate], [ReturnDate]) VALUES (7, 6, 3, CAST(N'2019-03-06T00:00:00.000' AS DateTime), CAST(N'2019-06-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Book_To_Reader] ([Id], [BookId], [ReaderId], [TakeDate], [ReturnDate]) VALUES (8, 7, 4, CAST(N'2019-03-04T00:00:00.000' AS DateTime), CAST(N'2019-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Book_To_Reader] ([Id], [BookId], [ReaderId], [TakeDate], [ReturnDate]) VALUES (9, 7, 3, CAST(N'2019-03-04T00:00:00.000' AS DateTime), CAST(N'2019-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Book_To_Reader] ([Id], [BookId], [ReaderId], [TakeDate], [ReturnDate]) VALUES (10, 7, 2, CAST(N'2019-03-04T00:00:00.000' AS DateTime), CAST(N'2019-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Book_To_Reader] ([Id], [BookId], [ReaderId], [TakeDate], [ReturnDate]) VALUES (11, 6, 1, CAST(N'2019-03-04T00:00:00.000' AS DateTime), CAST(N'2019-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Book_To_Reader] ([Id], [BookId], [ReaderId], [TakeDate], [ReturnDate]) VALUES (12, 5, 3, CAST(N'2019-03-04T00:00:00.000' AS DateTime), CAST(N'2019-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Book_To_Reader] ([Id], [BookId], [ReaderId], [TakeDate], [ReturnDate]) VALUES (13, 5, 1, CAST(N'2019-03-04T00:00:00.000' AS DateTime), CAST(N'2019-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Book_To_Reader] ([Id], [BookId], [ReaderId], [TakeDate], [ReturnDate]) VALUES (14, 4, 4, CAST(N'2019-03-04T00:00:00.000' AS DateTime), CAST(N'2019-05-05T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Book_To_Reader] OFF
SET IDENTITY_INSERT [dbo].[Books] ON 

INSERT [dbo].[Books] ([Id], [BookName], [CreateDate], [Counts], [AuthorId]) VALUES (1, N'Sirler Xezinesi', CAST(N'1165-05-04' AS Date), 25, 4)
INSERT [dbo].[Books] ([Id], [BookName], [CreateDate], [Counts], [AuthorId]) VALUES (2, N'Leyli ve Mecnun', CAST(N'1165-05-04' AS Date), 25, 4)
INSERT [dbo].[Books] ([Id], [BookName], [CreateDate], [Counts], [AuthorId]) VALUES (3, N'Ali ve Nino', CAST(N'1165-05-04' AS Date), 25, NULL)
INSERT [dbo].[Books] ([Id], [BookName], [CreateDate], [Counts], [AuthorId]) VALUES (4, N'Cinayet ve Ceza', CAST(N'1165-05-04' AS Date), 25, 2)
INSERT [dbo].[Books] ([Id], [BookName], [CreateDate], [Counts], [AuthorId]) VALUES (5, N'Ebulfet dayinin sirleri', CAST(N'1165-05-04' AS Date), 25, 3)
INSERT [dbo].[Books] ([Id], [BookName], [CreateDate], [Counts], [AuthorId]) VALUES (6, N'Popofname', CAST(N'1165-05-04' AS Date), 13, 5)
INSERT [dbo].[Books] ([Id], [BookName], [CreateDate], [Counts], [AuthorId]) VALUES (7, N'Kimdir O', CAST(N'1165-05-04' AS Date), 12, 5)
SET IDENTITY_INSERT [dbo].[Books] OFF
SET IDENTITY_INSERT [dbo].[Faculties] ON 

INSERT [dbo].[Faculties] ([Id], [FacultyName]) VALUES (1, N'Economic')
INSERT [dbo].[Faculties] ([Id], [FacultyName]) VALUES (2, N'İt')
INSERT [dbo].[Faculties] ([Id], [FacultyName]) VALUES (3, N'Computer Science')
INSERT [dbo].[Faculties] ([Id], [FacultyName]) VALUES (4, N'Menecment')
INSERT [dbo].[Faculties] ([Id], [FacultyName]) VALUES (5, N'Qrafik Design')
SET IDENTITY_INSERT [dbo].[Faculties] OFF
SET IDENTITY_INSERT [dbo].[Readers] ON 

INSERT [dbo].[Readers] ([Id], [Firstname], [Lastname], [Phone], [facultyId]) VALUES (1, N'Tural', N'Abdulxaliqov', N'055626666', 2)
INSERT [dbo].[Readers] ([Id], [Firstname], [Lastname], [Phone], [facultyId]) VALUES (2, N'Kamran', N'Ezizzade', N'05551555', 1)
INSERT [dbo].[Readers] ([Id], [Firstname], [Lastname], [Phone], [facultyId]) VALUES (3, N'Vaqif', N'İbrahimov', N'05151555', 3)
INSERT [dbo].[Readers] ([Id], [Firstname], [Lastname], [Phone], [facultyId]) VALUES (4, N'Nihat', N'Eminli', N'05545455', 4)
INSERT [dbo].[Readers] ([Id], [Firstname], [Lastname], [Phone], [facultyId]) VALUES (5, N'Ferhad', N'Velizade', N'055545555', 5)
INSERT [dbo].[Readers] ([Id], [Firstname], [Lastname], [Phone], [facultyId]) VALUES (6, N'Malik', N'Babayev', N'051655455', 3)
INSERT [dbo].[Readers] ([Id], [Firstname], [Lastname], [Phone], [facultyId]) VALUES (7, N'Orxan', N'Allahyarov', N'070515555', 1)
SET IDENTITY_INSERT [dbo].[Readers] OFF
ALTER TABLE [dbo].[Book_To_Reader]  WITH CHECK ADD FOREIGN KEY([BookId])
REFERENCES [dbo].[Books] ([Id])
GO
ALTER TABLE [dbo].[Book_To_Reader]  WITH CHECK ADD FOREIGN KEY([ReaderId])
REFERENCES [dbo].[Readers] ([Id])
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Authors] ([Id])
GO
ALTER TABLE [dbo].[Readers]  WITH CHECK ADD FOREIGN KEY([facultyId])
REFERENCES [dbo].[Faculties] ([Id])
GO
