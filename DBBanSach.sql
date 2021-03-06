USE [master]
GO
/****** Object:  Database [DBBanSach]    Script Date: 11/26/2019 2:38:35 PM ******/
CREATE DATABASE [DBBanSach]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBBanSach', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\DBBanSach.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DBBanSach_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\DBBanSach_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DBBanSach] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBBanSach].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBBanSach] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBBanSach] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBBanSach] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBBanSach] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBBanSach] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBBanSach] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBBanSach] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [DBBanSach] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBBanSach] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBBanSach] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBBanSach] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBBanSach] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBBanSach] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBBanSach] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBBanSach] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBBanSach] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBBanSach] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBBanSach] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBBanSach] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBBanSach] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBBanSach] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBBanSach] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBBanSach] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBBanSach] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DBBanSach] SET  MULTI_USER 
GO
ALTER DATABASE [DBBanSach] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBBanSach] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBBanSach] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBBanSach] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [DBBanSach]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 11/26/2019 2:38:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin](
	[TAIKHOANAD] [char](30) NOT NULL,
	[TENAD] [nvarchar](50) NULL,
	[MATKHAU] [char](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TAIKHOANAD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GIOHANG]    Script Date: 11/26/2019 2:38:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GIOHANG](
	[MAGIOHANG] [char](30) NOT NULL,
	[MASACH] [char](30) NULL,
	[NGAYGIAO] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MAGIOHANG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 11/26/2019 2:38:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MAKH] [char](30) NOT NULL,
	[TENKH] [nvarchar](50) NULL,
	[EMAIL] [char](40) NOT NULL,
	[SDT] [int] NULL,
	[MATKHAU] [char](30) NOT NULL,
	[DIACHI] [nvarchar](50) NULL,
	[GIOITINH] [nvarchar](3) NULL,
PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOAISACH]    Script Date: 11/26/2019 2:38:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LOAISACH](
	[MALOAI] [char](50) NOT NULL,
	[TENLOAI] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MALOAI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NXB]    Script Date: 11/26/2019 2:38:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NXB](
	[MANXB] [char](30) NOT NULL,
	[TENNXB] [nvarchar](50) NULL,
	[DIACHI] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MANXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SACH]    Script Date: 11/26/2019 2:38:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SACH](
	[MASACH] [char](30) NOT NULL,
	[TENSACH] [nvarchar](50) NOT NULL,
	[MATG] [char](30) NOT NULL,
	[GIABAN] [float] NULL,
	[HINHANH] [char](100) NULL,
	[NGAYXUATBAN] [datetime] NULL,
	[MANXB] [char](30) NOT NULL,
	[MALOAI] [char](50) NOT NULL,
	[MOTA] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[MASACH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TACGIA]    Script Date: 11/26/2019 2:38:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TACGIA](
	[MATG] [char](30) NOT NULL,
	[TENTG] [nvarchar](50) NULL,
	[DIACHI] [nvarchar](50) NULL,
	[TIEUSU] [nvarchar](200) NULL,
	[SDT] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MATG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Admin] ([TAIKHOANAD], [TENAD], [MATKHAU]) VALUES (N'admin                         ', N'admin', N'admin                         ')
INSERT [dbo].[Admin] ([TAIKHOANAD], [TENAD], [MATKHAU]) VALUES (N'nhi                           ', N'nhi', N'1234                          ')
INSERT [dbo].[KhachHang] ([MAKH], [TENKH], [EMAIL], [SDT], [MATKHAU], [DIACHI], [GIOITINH]) VALUES (N'KH01                          ', N'NHI', N'NHI                                     ', 248828572, N'NHI                           ', N'BBB', N'NU')
INSERT [dbo].[KhachHang] ([MAKH], [TENKH], [EMAIL], [SDT], [MATKHAU], [DIACHI], [GIOITINH]) VALUES (N'KH06                          ', N'Nguyễn Nhi', N'nho@gmail.com                           ', 984557, N'101010                        ', N'266 lê trọng tấn', N'nữ')
INSERT [dbo].[LOAISACH] ([MALOAI], [TENLOAI]) VALUES (N'L001                                              ', N'VĂN HỌC')
INSERT [dbo].[LOAISACH] ([MALOAI], [TENLOAI]) VALUES (N'L002                                              ', N'KINH TẾ')
INSERT [dbo].[LOAISACH] ([MALOAI], [TENLOAI]) VALUES (N'L003                                              ', N'TÂM LÝ')
INSERT [dbo].[LOAISACH] ([MALOAI], [TENLOAI]) VALUES (N'L004                                              ', N'NGOẠI NGỮ')
INSERT [dbo].[LOAISACH] ([MALOAI], [TENLOAI]) VALUES (N'L005                                              ', N'GIÁO KHOA')
INSERT [dbo].[LOAISACH] ([MALOAI], [TENLOAI]) VALUES (N'L006                                              ', N'LỊCH SỬ')
INSERT [dbo].[LOAISACH] ([MALOAI], [TENLOAI]) VALUES (N'L007                                              ', N'DẠY NẤU ĂN')
INSERT [dbo].[LOAISACH] ([MALOAI], [TENLOAI]) VALUES (N'L008                                              ', N'KĨ NĂNG')
INSERT [dbo].[LOAISACH] ([MALOAI], [TENLOAI]) VALUES (N'L009                                              ', N'TRUYỆN')
INSERT [dbo].[NXB] ([MANXB], [TENNXB], [DIACHI]) VALUES (N' NXB05                        ', N'AnDa', N'266 Độc Lập')
INSERT [dbo].[NXB] ([MANXB], [TENNXB], [DIACHI]) VALUES (N'NXB01                         ', N'Thai Ha Books', N'140 Lê Trọng Tấn, Tây Thạnh, Tân Phú, HCM')
INSERT [dbo].[NXB] ([MANXB], [TENNXB], [DIACHI]) VALUES (N'NXB02                         ', N'FIRST NEWS', N'545 Tân Quỳ Tân Quý, Tân Phú')
INSERT [dbo].[NXB] ([MANXB], [TENNXB], [DIACHI]) VALUES (N'NXB03                         ', N'Alpha Books', N'162 Nguyễn Trọng Tuyển, Hà Nội')
INSERT [dbo].[NXB] ([MANXB], [TENNXB], [DIACHI]) VALUES (N'NXB04                         ', N'Penguin Books', N'100 Cộng Hòa, Hải Dương')
INSERT [dbo].[NXB] ([MANXB], [TENNXB], [DIACHI]) VALUES (N'NXB06                         ', N'MydaLex', NULL)
INSERT [dbo].[NXB] ([MANXB], [TENNXB], [DIACHI]) VALUES (N'NXB07                         ', N'HamletBer', NULL)
INSERT [dbo].[NXB] ([MANXB], [TENNXB], [DIACHI]) VALUES (N'NXB08                         ', N'Binder book', NULL)
INSERT [dbo].[NXB] ([MANXB], [TENNXB], [DIACHI]) VALUES (N'NXB09                         ', N'Inderhen books', NULL)
INSERT [dbo].[NXB] ([MANXB], [TENNXB], [DIACHI]) VALUES (N'NXB10                         ', N'Mis New', NULL)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [MATG], [GIABAN], [HINHANH], [NGAYXUATBAN], [MANXB], [MALOAI], [MOTA]) VALUES (N'S01                           ', N'Đường thời đại', N'TG1                           ', 196000, N'Images/a1.jpg                                                                                       ', CAST(0x00008BF200000000 AS DateTime), N'NXB01                         ', N'L001                                              ', NULL)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [MATG], [GIABAN], [HINHANH], [NGAYXUATBAN], [MANXB], [MALOAI], [MOTA]) VALUES (N'S02                           ', N'Văn phẩm anh ngữ', N'TG2                           ', 20000, N'Images/a2.jpg                                                                                       ', CAST(0x0000A85B00000000 AS DateTime), N'NXB02                         ', N'L005                                              ', NULL)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [MATG], [GIABAN], [HINHANH], [NGAYXUATBAN], [MANXB], [MALOAI], [MOTA]) VALUES (N'S03                           ', N'Song ngữ Hoa Việt', N'TG3                           ', 200000, N'Images/a3.jpg                                                                                       ', CAST(0x0000905900000000 AS DateTime), N'NXB04                         ', N'L003                                              ', NULL)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [MATG], [GIABAN], [HINHANH], [NGAYXUATBAN], [MANXB], [MALOAI], [MOTA]) VALUES (N'S04                           ', N'Truyện Cười Việt Nam', N'TG1                           ', 158000, N'Images/a4.jpg                                                                                       ', CAST(0x0000918800000000 AS DateTime), N'NXB03                         ', N'L009                                              ', N'Sách hay')
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [MATG], [GIABAN], [HINHANH], [NGAYXUATBAN], [MANXB], [MALOAI], [MOTA]) VALUES (N'S05                           ', N'Kế toán- Kiểm toán', N'TG2                           ', 58000, N'Images/a5.jpg                                                                                       ', CAST(0x0000903A00000000 AS DateTime), N'NXB02                         ', N'L005                                              ', NULL)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [MATG], [GIABAN], [HINHANH], [NGAYXUATBAN], [MANXB], [MALOAI], [MOTA]) VALUES (N'S06                           ', N'Luyện viết câu Tiếng Anh', N'TG3                           ', 22000, N'Images/a6.jpg                                                                                       ', CAST(0x00008C1500000000 AS DateTime), N'NXB04                         ', N'L004                                              ', NULL)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [MATG], [GIABAN], [HINHANH], [NGAYXUATBAN], [MANXB], [MALOAI], [MOTA]) VALUES (N'S07                           ', N'Tiếng Nhật cho ngày nay', N'TG4                           ', 17500, N'Images/a7.jpg                                                                                       ', CAST(0x00008E1B00000000 AS DateTime), N'NXB03                         ', N'L004                                              ', NULL)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [MATG], [GIABAN], [HINHANH], [NGAYXUATBAN], [MANXB], [MALOAI], [MOTA]) VALUES (N'S08                           ', N'Định hướng cuộc sống', N'TG1                           ', 88000, N'Images/a8.jpg                                                                                       ', CAST(0x0000A00B00000000 AS DateTime), N'NXB02                         ', N'L003                                              ', NULL)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [MATG], [GIABAN], [HINHANH], [NGAYXUATBAN], [MANXB], [MALOAI], [MOTA]) VALUES (N'S09                           ', N'Tổ quốc nơi đầu sóng', N'TG3                           ', 23500, N'Images/a9.jpg                                                                                       ', NULL, N'NXB10                         ', N'L006                                              ', NULL)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [MATG], [GIABAN], [HINHANH], [NGAYXUATBAN], [MANXB], [MALOAI], [MOTA]) VALUES (N'S11                           ', N'Nhật kí Cassie', N'TG4                           ', 11100, N'Images/a11.jpg                                                                                      ', NULL, N'NXB08                         ', N'L009                                              ', NULL)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [MATG], [GIABAN], [HINHANH], [NGAYXUATBAN], [MANXB], [MALOAI], [MOTA]) VALUES (N'S12                           ', N'Truyện cười dân gian', N'TG5                           ', 23600, N'Images/a28.jpg                                                                                      ', NULL, N'NXB03                         ', N'L009                                              ', NULL)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [MATG], [GIABAN], [HINHANH], [NGAYXUATBAN], [MANXB], [MALOAI], [MOTA]) VALUES (N'S13                           ', N'Tìm huy hiệu của Bác Hồ', N'TG6                           ', 33600, N'Images/a29.jpg                                                                                      ', NULL, N'NXB04                         ', N'L006                                              ', NULL)
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [DIACHI], [TIEUSU], [SDT]) VALUES (N'TG1                           ', N'	Thời Cửu', N'', NULL, 378422217)
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [DIACHI], [TIEUSU], [SDT]) VALUES (N'TG10                          ', NULL, NULL, NULL, NULL)
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [DIACHI], [TIEUSU], [SDT]) VALUES (N'TG11                          ', NULL, NULL, NULL, NULL)
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [DIACHI], [TIEUSU], [SDT]) VALUES (N'TG12                          ', NULL, NULL, NULL, NULL)
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [DIACHI], [TIEUSU], [SDT]) VALUES (N'TG13                          ', NULL, NULL, NULL, NULL)
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [DIACHI], [TIEUSU], [SDT]) VALUES (N'TG14                          ', NULL, NULL, NULL, NULL)
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [DIACHI], [TIEUSU], [SDT]) VALUES (N'TG15                          ', NULL, NULL, NULL, NULL)
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [DIACHI], [TIEUSU], [SDT]) VALUES (N'TG2                           ', N'Nguyễn Long', N'Hồ Chí Minh', N'không', 16785555)
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [DIACHI], [TIEUSU], [SDT]) VALUES (N'TG3                           ', N'Huỳnh Wynn Trần', N'Hải Phòng', NULL, 22222222)
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [DIACHI], [TIEUSU], [SDT]) VALUES (N'TG4                           ', N'Kim Huỳnh', N'Hà Nội', NULL, NULL)
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [DIACHI], [TIEUSU], [SDT]) VALUES (N'TG5                           ', N'Cao Kiên', NULL, NULL, NULL)
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [DIACHI], [TIEUSU], [SDT]) VALUES (N'TG6                           ', N'Lâm Trung Hào', N'Kiên Giang', NULL, NULL)
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [DIACHI], [TIEUSU], [SDT]) VALUES (N'TG7                           ', N'Bùi Văn Lân', NULL, NULL, NULL)
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [DIACHI], [TIEUSU], [SDT]) VALUES (N'TG8                           ', NULL, NULL, NULL, NULL)
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [DIACHI], [TIEUSU], [SDT]) VALUES (N'TG9                           ', NULL, NULL, NULL, NULL)
ALTER TABLE [dbo].[GIOHANG]  WITH CHECK ADD  CONSTRAINT [FK_GIOHANG_SACH] FOREIGN KEY([MASACH])
REFERENCES [dbo].[SACH] ([MASACH])
GO
ALTER TABLE [dbo].[GIOHANG] CHECK CONSTRAINT [FK_GIOHANG_SACH]
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD  CONSTRAINT [FK_SACH_LOAISACH] FOREIGN KEY([MALOAI])
REFERENCES [dbo].[LOAISACH] ([MALOAI])
GO
ALTER TABLE [dbo].[SACH] CHECK CONSTRAINT [FK_SACH_LOAISACH]
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD  CONSTRAINT [FK_SACH_NXB] FOREIGN KEY([MANXB])
REFERENCES [dbo].[NXB] ([MANXB])
GO
ALTER TABLE [dbo].[SACH] CHECK CONSTRAINT [FK_SACH_NXB]
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD  CONSTRAINT [FK_SACH_TACGIA] FOREIGN KEY([MATG])
REFERENCES [dbo].[TACGIA] ([MATG])
GO
ALTER TABLE [dbo].[SACH] CHECK CONSTRAINT [FK_SACH_TACGIA]
GO
USE [master]
GO
ALTER DATABASE [DBBanSach] SET  READ_WRITE 
GO
