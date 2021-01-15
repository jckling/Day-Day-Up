USE [JWGL]
GO

/****** Object:  Table [dbo].[Course]    Script Date: 04/26/2016 14:48:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Course](
	[Cno] [nchar](10) NOT NULL,
	[Cname] [nvarchar](32) NOT NULL,
	[Cpno] [nchar](10) NULL,
	[Ccredit] [tinyint] NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[Cno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

USE [JWGL]
GO

/****** Object:  Table [dbo].[SC]    Script Date: 04/26/2016 14:48:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SC](
	[Sno] [nchar](10) NOT NULL,
	[Cno] [nchar](10) NOT NULL,
	[Grade] [tinyint] NULL,
 CONSTRAINT [PK_SC] PRIMARY KEY CLUSTERED 
(
	[Sno] ASC,
	[Cno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

USE [JWGL]
GO

/****** Object:  Table [dbo].[Student]    Script Date: 04/26/2016 14:48:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Student](
	[Sno] [nchar](10) NOT NULL,
	[Sname] [char](20) NULL,
	[Ssex] [char](2) NULL,
	[Sage] [tinyint] NULL,
	[Sdept] [char](20) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY NONCLUSTERED 
(
	[Sno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

