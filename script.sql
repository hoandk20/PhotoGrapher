USE [Photographer_online]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 12-Jul-21 11:32:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[telephone] [int] NULL,
	[email] [varchar](50) NULL,
	[about] [varchar](max) NULL,
	[address] [varchar](max) NULL,
	[city] [varchar](max) NULL,
	[country] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[galery]    Script Date: 12-Jul-21 11:32:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[galery](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NULL,
	[description] [nvarchar](max) NULL,
	[name] [nvarchar](50) NULL,
	[view] [int] NULL,
	[url_image] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[image]    Script Date: 12-Jul-21 11:32:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[image](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idgalery] [int] NULL,
	[image_url] [nvarchar](50) NULL,
	[view] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[views]    Script Date: 12-Jul-21 11:32:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[views](
	[id] [int] NULL,
	[view] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Contact] ([telephone], [email], [about], [address], [city], [country]) VALUES (383333432, N'hoankdhe141103@fpt.edu.vn', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim', N'DongTruc-ThachThat-Hanoi', N'Hanoi', N'VietNam')
GO
SET IDENTITY_INSERT [dbo].[galery] ON 

INSERT [dbo].[galery] ([id], [title], [description], [name], [view], [url_image]) VALUES (1, N'Gallery 1', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation', N'Gallery 1', 13, N'img1.jpg')
INSERT [dbo].[galery] ([id], [title], [description], [name], [view], [url_image]) VALUES (2, N'Gallery 2', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation', N'Gallery 2', 5, N'img2.jpg')
INSERT [dbo].[galery] ([id], [title], [description], [name], [view], [url_image]) VALUES (3, N'Gallery 3', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation', N'Gallery 3', 6, N'img3.jpg')
SET IDENTITY_INSERT [dbo].[galery] OFF
GO
SET IDENTITY_INSERT [dbo].[image] ON 

INSERT [dbo].[image] ([id], [idgalery], [image_url], [view]) VALUES (1, 1, N'img1.jpg', 1)
INSERT [dbo].[image] ([id], [idgalery], [image_url], [view]) VALUES (2, 1, N'img2.jpg', 1)
INSERT [dbo].[image] ([id], [idgalery], [image_url], [view]) VALUES (3, 1, N'img3.jpg', 1)
INSERT [dbo].[image] ([id], [idgalery], [image_url], [view]) VALUES (4, 1, N'img4.jpg', 1)
INSERT [dbo].[image] ([id], [idgalery], [image_url], [view]) VALUES (5, 1, N'img5.jpg', 1)
INSERT [dbo].[image] ([id], [idgalery], [image_url], [view]) VALUES (6, 1, N'img6.jpg', 1)
INSERT [dbo].[image] ([id], [idgalery], [image_url], [view]) VALUES (7, 1, N'img7.jpg', 1)
INSERT [dbo].[image] ([id], [idgalery], [image_url], [view]) VALUES (8, 1, N'img8.jpg', 1)
INSERT [dbo].[image] ([id], [idgalery], [image_url], [view]) VALUES (9, 2, N'img2.jpg', 1)
INSERT [dbo].[image] ([id], [idgalery], [image_url], [view]) VALUES (10, 2, N'img6.jpg', 1)
INSERT [dbo].[image] ([id], [idgalery], [image_url], [view]) VALUES (11, 2, N'img5.jpg', 1)
INSERT [dbo].[image] ([id], [idgalery], [image_url], [view]) VALUES (12, 2, N'img4.jpg', 1)
INSERT [dbo].[image] ([id], [idgalery], [image_url], [view]) VALUES (13, 2, N'img3.jpg', 1)
INSERT [dbo].[image] ([id], [idgalery], [image_url], [view]) VALUES (14, 2, N'img1.jpg', 1)
INSERT [dbo].[image] ([id], [idgalery], [image_url], [view]) VALUES (16, 2, N'img7.jpg', 1)
INSERT [dbo].[image] ([id], [idgalery], [image_url], [view]) VALUES (17, 2, N'img8.jpg', 1)
INSERT [dbo].[image] ([id], [idgalery], [image_url], [view]) VALUES (18, 3, N'img8.jpg', 1)
INSERT [dbo].[image] ([id], [idgalery], [image_url], [view]) VALUES (19, 3, N'img7.jpg', 1)
INSERT [dbo].[image] ([id], [idgalery], [image_url], [view]) VALUES (20, 3, N'img6.jpg', 1)
INSERT [dbo].[image] ([id], [idgalery], [image_url], [view]) VALUES (21, 3, N'img5.jpg', 1)
INSERT [dbo].[image] ([id], [idgalery], [image_url], [view]) VALUES (22, 3, N'img4.jpg', 1)
INSERT [dbo].[image] ([id], [idgalery], [image_url], [view]) VALUES (23, 3, N'img3.jpg', 1)
INSERT [dbo].[image] ([id], [idgalery], [image_url], [view]) VALUES (24, 3, N'img2.jpg', 1)
INSERT [dbo].[image] ([id], [idgalery], [image_url], [view]) VALUES (25, 3, N'img1.jpg', 1)
SET IDENTITY_INSERT [dbo].[image] OFF
GO
INSERT [dbo].[views] ([id], [view]) VALUES (1, 87)
GO
