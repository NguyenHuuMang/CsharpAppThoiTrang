USE [master]
GO
/****** Object:  Database [QLBH]    Script Date: 20/07/2022 7:53:01 CH ******/
CREATE DATABASE [QLBH]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLBH', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLBH.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLBH_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLBH_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QLBH] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLBH].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLBH] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLBH] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLBH] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLBH] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLBH] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLBH] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLBH] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLBH] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLBH] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLBH] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLBH] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLBH] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLBH] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLBH] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLBH] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLBH] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLBH] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLBH] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLBH] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLBH] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLBH] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLBH] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLBH] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLBH] SET  MULTI_USER 
GO
ALTER DATABASE [QLBH] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLBH] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLBH] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLBH] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLBH] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLBH] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QLBH] SET QUERY_STORE = OFF
GO
USE [QLBH]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 20/07/2022 7:53:01 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nvarchar](10) NOT NULL,
	[HoVaTen] [nvarchar](50) NULL,
	[TenDangNhap] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](250) NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[SoDienThoai] [char](10) NULL,
	[NgaySinh] [datetime] NULL,
	[Email] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 20/07/2022 7:53:01 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaThanhVien] [nvarchar](10) NOT NULL,
	[HoVaTen] [nvarchar](50) NULL,
	[TenDangNhap] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](250) NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[SoDienThoai] [char](10) NULL,
	[NgaySinh] [datetime] NULL,
	[Email] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaThanhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 20/07/2022 7:53:01 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [nvarchar](10) NOT NULL,
	[TenSanPham] [nvarchar](50) NULL,
	[KieuDang] [nvarchar](50) NULL,
	[GiaNhap] [int] NULL,
	[GiaXuat] [int] NULL,
	[TinhTrang] [nvarchar](20) NULL,
	[NgayNhap] [datetime] NULL,
	[SoLuongNhap] [int] NULL,
	[DaBan] [int] NULL,
	[ChatLieu] [nvarchar](50) NULL,
	[HangSanXuat] [nvarchar](50) NULL,
	[AnhSanPham] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH01', N'Hồ Uyên Phương', N'huynphng', N'huynphng', N'Số 140S, Huyện Ngọc Hiển', N'Nữ', N'0916222539', CAST(N'2007-12-23T00:00:00.000' AS DateTime), N'huynphng@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH02', N'Phạm Nguyết Ánh', N'phmnguytnh', N'phmnguytnh', N'Số 160G, Huyện Ngọc Hiển', N'Nữ', N'0937256090', CAST(N'2001-11-01T00:00:00.000' AS DateTime), N'phmnguytnh@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH03', N'Hồ Chấn Hùng', N'hchnhng', N'hchnhng', N'Số 187S, Huyện Phú Tân', N'Nam', N'0914064715', CAST(N'2006-04-14T00:00:00.000' AS DateTime), N'hchnhng@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH04', N'Vũ Phương Diễm', N'vphngdim', N'vphngdim', N'Số 170V, Huyện Ngọc Hiển', N'Nữ', N'0915928525', CAST(N'2009-08-23T00:00:00.000' AS DateTime), N'vphngdim@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH05', N'Võ Giang Thanh', N'vgiangthanh', N'vgiangthanh', N'Số 107R, Huyện Ngọc Hiển', N'Nữ', N'0973012265', CAST(N'2001-01-20T00:00:00.000' AS DateTime), N'vgiangthanh@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH06', N'Lý Bảo Châu', N'lbochu', N'lbochu', N'Số 133Y, Huyện Ngọc Hiển', N'Nữ', N'0962289992', CAST(N'2003-09-22T00:00:00.000' AS DateTime), N'lbochu@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH07', N'Nguyễn Ánh Trang', N'nguynnhtrang', N'nguynnhtrang', N'Số 139U, Huyện Phú Tân', N'Nữ', N'0963787483', CAST(N'2003-08-13T00:00:00.000' AS DateTime), N'nguynnhtrang@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH08', N'Nguyễn Cẩm Ly', N'nguyncmly', N'nguyncmly', N'Số 191L, Huyện Phú Tân', N'Nữ', N'0908154509', CAST(N'2005-10-14T00:00:00.000' AS DateTime), N'nguyncmly@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH09', N'Trần Phương Dung', N'trnphngdung', N'trnphngdung', N'Số 110V, Huyện Phú Tân', N'Nữ', N'0934549275', CAST(N'2005-03-26T00:00:00.000' AS DateTime), N'trnphngdung@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH10', N'Phan Ngân Thanh', N'phanngnthanh', N'phanngnthanh', N'Số 100R, Huyện Ngọc Hiển', N'Nữ', N'0932050777', CAST(N'2003-10-25T00:00:00.000' AS DateTime), N'phanngnthanh@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH11', N'Dương Trường Vinh', N'dngtrngvinh', N'dngtrngvinh', N'Số 105A, Huyện Phú Tân', N'Nam', N'0916010777', CAST(N'2006-02-25T00:00:00.000' AS DateTime), N'dngtrngvinh@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH12', N'Huỳnh Thảo Mai', N'hunhthomai', N'hunhthomai', N'Số 183Q, Huyện Phú Tân', N'Nữ', N'0933987224', CAST(N'2008-07-05T00:00:00.000' AS DateTime), N'hunhthomai@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH13', N'Phan Mỹ Hạnh', N'phanmhnh', N'phanmhnh', N'Số 178P, Huyện Ngọc Hiển', N'Nữ', N'0929780171', CAST(N'2009-10-19T00:00:00.000' AS DateTime), N'phanmhnh@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH14', N'Bùi Thy Vân', N'bithyvn', N'bithyvn', N'Số 124G, Huyện Ngọc Hiển', N'Nữ', N'0977274397', CAST(N'2006-06-07T00:00:00.000' AS DateTime), N'bithyvn@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH15', N'Huỳnh Thế Dũng', N'hunhthdng', N'hunhthdng', N'Số 179T, Huyện Ngọc Hiển', N'Nam', N'0943170398', CAST(N'2009-04-03T00:00:00.000' AS DateTime), N'hunhthdng@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH16', N'Lê Quế Anh', N'lquanh', N'lquanh', N'Số 121T, Huyện Ngọc Hiển', N'Nữ', N'0967241879', CAST(N'2006-01-24T00:00:00.000' AS DateTime), N'lquanh@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH17', N'Vũ Yến My', N'vynmy', N'vynmy', N'Số 192P, Huyện Ngọc Hiển', N'Nữ', N'0976454406', CAST(N'2001-08-12T00:00:00.000' AS DateTime), N'vynmy@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH18', N'Nguyễn Phương Dung', N'nguynphngdung', N'nguynphngdung', N'Số 154X, Huyện Phú Tân', N'Nữ', N'0941668676', CAST(N'2007-06-30T00:00:00.000' AS DateTime), N'nguynphngdung@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH19', N'Trần Thúy Ngà', N'trnthyng', N'trnthyng', N'Số 138D, Huyện Ngọc Hiển', N'Nữ', N'0992344217', CAST(N'2008-06-24T00:00:00.000' AS DateTime), N'trnthyng@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH20', N'Lý Ðông Vy', N'lngvy', N'lngvy', N'Số 130L, Huyện Ngọc Hiển', N'Nữ', N'0973050291', CAST(N'2003-07-06T00:00:00.000' AS DateTime), N'lngvy@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH21', N'Trần Xuân Trung', N'trnxuntrung', N'trnxuntrung', N'Số 142Y, Huyện Ngọc Hiển', N'Nam', N'0930181061', CAST(N'2007-02-03T00:00:00.000' AS DateTime), N'trnxuntrung@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH22', N'Trần Thụy Nương', N'trnthynng', N'trnthynng', N'Số 142I, Huyện Ngọc Hiển', N'Nữ', N'0942194787', CAST(N'2004-10-17T00:00:00.000' AS DateTime), N'trnthynng@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH23', N'Hồ Nguyệt Uyển', N'hnguytuyn', N'hnguytuyn', N'Số 175M, Huyện Ngọc Hiển', N'Nữ', N'0996791949', CAST(N'2001-03-14T00:00:00.000' AS DateTime), N'hnguytuyn@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH24', N'Huỳnh Thiên Giang', N'hunhthingiang', N'hunhthingiang', N'Số 163N, Huyện Ngọc Hiển', N'Nữ', N'0970820905', CAST(N'2002-08-08T00:00:00.000' AS DateTime), N'hunhthingiang@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH25', N'Phạm Hữu Chiến', N'phmhuchin', N'phmhuchin', N'Số 155I, Huyện Ngọc Hiển', N'Nam', N'0940070257', CAST(N'2000-04-16T00:00:00.000' AS DateTime), N'phmhuchin@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH26', N'Lê Kim Thoa', N'lkimthoa', N'lkimthoa', N'Số 111M, Huyện Ngọc Hiển', N'Nữ', N'0993036416', CAST(N'2009-06-14T00:00:00.000' AS DateTime), N'lkimthoa@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH27', N'Võ Minh Tân', N'tanvo', N'tanvo', N'Số 167S, Huyện Phú Tân', N'Nam', N'0962217531', CAST(N'2005-10-04T00:00:00.000' AS DateTime), N'tanvo@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH28', N'Hồ Huy Phong', N'hhuyphong', N'hhuyphong', N'Số 136Q, Huyện Phú Tân', N'Nam', N'0915846009', CAST(N'2008-04-08T00:00:00.000' AS DateTime), N'hhuyphong@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH29', N'Vũ Thu Phượng', N'vthuphng', N'vthuphng', N'Số 151T, Huyện Ngọc Hiển', N'Nữ', N'0929977034', CAST(N'2005-06-12T00:00:00.000' AS DateTime), N'vthuphng@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH30', N'Lê Sơn Tuyền', N'lsntuyn', N'lsntuyn', N'Số 174G, Huyện Phú Tân', N'Nữ', N'0928962180', CAST(N'2000-12-25T00:00:00.000' AS DateTime), N'lsntuyn@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH31', N'Phan Quang Thắng', N'phanquangthng', N'phanquangthng', N'Số 176G, Huyện Phú Tân', N'Nam', N'0920436500', CAST(N'2009-09-19T00:00:00.000' AS DateTime), N'phanquangthng@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH32', N'Phan Hương Nhi', N'phanhngnhi', N'phanhngnhi', N'Số 105I, Huyện Ngọc Hiển', N'Nữ', N'0915715938', CAST(N'2007-01-11T00:00:00.000' AS DateTime), N'phanhngnhi@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH33', N'Hồ Thanh Nhàn', N'hthanhnhn', N'hthanhnhn', N'Số 197U, Huyện Ngọc Hiển', N'Nữ', N'0937590764', CAST(N'2007-12-23T00:00:00.000' AS DateTime), N'hthanhnhn@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH34', N'Phan Nguyên Hạnh', N'phannguynhnh', N'phannguynhnh', N'Số 133Y, Huyện Phú Tân', N'Nam', N'0979958167', CAST(N'2006-11-27T00:00:00.000' AS DateTime), N'phannguynhnh@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH35', N'Võ Thiện Khiêm', N'vthinkhim', N'vthinkhim', N'Số 183S, Huyện Phú Tân', N'Nam', N'0975816573', CAST(N'2001-03-25T00:00:00.000' AS DateTime), N'vthinkhim@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH36', N'Đặng Hồ Nam', N'nghnam', N'nghnam', N'Số 143R, Huyện Ngọc Hiển', N'Nam', N'0933708716', CAST(N'2007-12-06T00:00:00.000' AS DateTime), N'nghnam@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH37', N'Hoàng Thúy Hiền', N'hongthyhin', N'hongthyhin', N'Số 129B, Huyện Phú Tân', N'Nữ', N'0994763898', CAST(N'2002-04-16T00:00:00.000' AS DateTime), N'hongthyhin@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH38', N'Hồ Ðức Quảng', N'hcqung', N'hcqung', N'Số 177T, Huyện Ngọc Hiển', N'Nam', N'0965194754', CAST(N'2002-04-12T00:00:00.000' AS DateTime), N'hcqung@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH39', N'Lê Chiến Thắng', N'lchinthng', N'lchinthng', N'Số 179G, Huyện Ngọc Hiển', N'Nam', N'0958733546', CAST(N'2004-06-19T00:00:00.000' AS DateTime), N'lchinthng@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH40', N'Lý Việt Thanh', N'lvitthanh', N'lvitthanh', N'Số 106T, Huyện Phú Tân', N'Nam', N'0916952268', CAST(N'2002-06-07T00:00:00.000' AS DateTime), N'lvitthanh@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH41', N'Trần Việt Thi', N'trnvitthi', N'trnvitthi', N'Số 168V, Huyện Ngọc Hiển', N'Nữ', N'0913846442', CAST(N'2002-10-10T00:00:00.000' AS DateTime), N'trnvitthi@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH42', N'Phan Thiên Bảo', N'phanthinbo', N'phanthinbo', N'Số 177T, Huyện Ngọc Hiển', N'Nam', N'0998203334', CAST(N'2001-06-09T00:00:00.000' AS DateTime), N'phanthinbo@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH43', N'Lê Thanh Nhàn', N'lthanhnhn', N'lthanhnhn', N'Số 139F, Huyện Ngọc Hiển', N'Nữ', N'0956294294', CAST(N'2004-03-12T00:00:00.000' AS DateTime), N'lthanhnhn@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH44', N'Huỳnh Liên Hoa', N'hunhlinhoa', N'hunhlinhoa', N'Số 142U, Huyện Ngọc Hiển', N'Nữ', N'0938622656', CAST(N'2001-02-13T00:00:00.000' AS DateTime), N'hunhlinhoa@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH45', N'Hoàng Thuận Phong', N'hongthunphong', N'hongthunphong', N'Số 141H, Huyện Ngọc Hiển', N'Nam', N'0987226770', CAST(N'2002-07-02T00:00:00.000' AS DateTime), N'hongthunphong@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH46', N'Phạm Hiếu Giang', N'phmhiugiang', N'phmhiugiang', N'Số 161D, Huyện Ngọc Hiển', N'Nữ', N'0978117808', CAST(N'2001-08-28T00:00:00.000' AS DateTime), N'phmhiugiang@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH47', N'Nguyễn Hồng Khanh', N'nguynhngkhanh', N'nguynhngkhanh', N'Số 172S, Huyện Ngọc Hiển', N'Nữ', N'0969263750', CAST(N'2009-01-23T00:00:00.000' AS DateTime), N'nguynhngkhanh@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH48', N'Phan Quốc Huy', N'phanquchuy', N'phanquchuy', N'Số 130E, Huyện Ngọc Hiển', N'Nam', N'0957420290', CAST(N'2002-11-06T00:00:00.000' AS DateTime), N'phanquchuy@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH49', N'Vũ Thu Trang', N'vthutrang', N'vthutrang', N'Số 101P, Huyện Ngọc Hiển', N'Nữ', N'0971422898', CAST(N'2001-08-19T00:00:00.000' AS DateTime), N'vthutrang@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH50', N'Đỗ Nhật Quang', N'nhtquang', N'nhtquang', N'Số 124X, Huyện Ngọc Hiển', N'Nam', N'0947544743', CAST(N'2006-12-11T00:00:00.000' AS DateTime), N'nhtquang@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH51', N'Lê Thanh Mẫn', N'lthanhmn', N'lthanhmn', N'Số 140S, Huyện Phú Tân', N'Nữ', N'0949024186', CAST(N'2000-01-28T00:00:00.000' AS DateTime), N'lthanhmn@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH52', N'Phan Duy Mạnh', N'phanduymnh', N'phanduymnh', N'Số 108B, Huyện Ngọc Hiển', N'Nam', N'0980359226', CAST(N'2009-03-10T00:00:00.000' AS DateTime), N'phanduymnh@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH53', N'Ngô Việt Thanh', N'ngvitthanh', N'ngvitthanh', N'Số 168S, Huyện Phú Tân', N'Nam', N'0988361916', CAST(N'2000-07-20T00:00:00.000' AS DateTime), N'ngvitthanh@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH54', N'Dương Giang Thanh', N'dnggiangthanh', N'dnggiangthanh', N'Số 198L, Huyện Ngọc Hiển', N'Nữ', N'0957376214', CAST(N'2008-08-05T00:00:00.000' AS DateTime), N'dnggiangthanh@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH55', N'Đỗ Khánh Hà', N'khnhh', N'khnhh', N'Số 138I, Huyện Phú Tân', N'Nữ', N'0985594194', CAST(N'2004-03-12T00:00:00.000' AS DateTime), N'khnhh@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH56', N'Vũ Lâm Oanh', N'vlmoanh', N'vlmoanh', N'Số 194K, Huyện Ngọc Hiển', N'Nữ', N'0912285564', CAST(N'2005-11-21T00:00:00.000' AS DateTime), N'vlmoanh@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH57', N'Lý Dạ Thi', N'ldthi', N'ldthi', N'Số 199B, Huyện Phú Tân', N'Nữ', N'0980991632', CAST(N'2006-01-03T00:00:00.000' AS DateTime), N'ldthi@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH58', N'Đặng Việt Khải', N'ngvitkhi', N'ngvitkhi', N'Số 141G, Huyện Phú Tân', N'Nam', N'0971904799', CAST(N'2007-11-20T00:00:00.000' AS DateTime), N'ngvitkhi@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH59', N'Vũ Phúc Khang', N'vphckhang', N'vphckhang', N'Số 185C, Huyện Ngọc Hiển', N'Nam', N'0959834051', CAST(N'2009-09-24T00:00:00.000' AS DateTime), N'vphckhang@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH60', N'Bùi Minh Huấn', N'biminhhun', N'biminhhun', N'Số 149B, Huyện Ngọc Hiển', N'Nam', N'0912816863', CAST(N'2006-07-27T00:00:00.000' AS DateTime), N'biminhhun@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH61', N'Lý Tôn Lễ', N'ltnl', N'ltnl', N'Số 182X, Huyện Phú Tân', N'Nam', N'0941975995', CAST(N'2005-02-06T00:00:00.000' AS DateTime), N'ltnl@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH62', N'Võ Ngọc Khanh', N'vngckhanh', N'vngckhanh', N'Số 167O, Huyện Phú Tân', N'Nữ', N'0963102601', CAST(N'2006-05-06T00:00:00.000' AS DateTime), N'vngckhanh@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH63', N'Hoàng An Nhàn', N'hongannhn', N'hongannhn', N'Số 163K, Huyện Phú Tân', N'Nữ', N'0973625082', CAST(N'2008-08-24T00:00:00.000' AS DateTime), N'hongannhn@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH64', N'Huỳnh Thường Kiệt', N'hunhthngkit', N'hunhthngkit', N'Số 195N, Huyện Ngọc Hiển', N'Nam', N'0961903905', CAST(N'2006-08-26T00:00:00.000' AS DateTime), N'hunhthngkit@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH65', N'Lý Trúc Loan', N'ltrcloan', N'ltrcloan', N'Số 121Q, Huyện Phú Tân', N'Nữ', N'0947615586', CAST(N'2005-08-17T00:00:00.000' AS DateTime), N'ltrcloan@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH66', N'Phan Linh Nhi', N'phanlinhnhi', N'phanlinhnhi', N'Số 170C, Huyện Ngọc Hiển', N'Nữ', N'0943435762', CAST(N'2001-01-25T00:00:00.000' AS DateTime), N'phanlinhnhi@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH67', N'Hồ Thanh Bình', N'hthanhbnh', N'hthanhbnh', N'Số 123N, Huyện Ngọc Hiển', N'Nữ', N'0912913602', CAST(N'2009-09-06T00:00:00.000' AS DateTime), N'hthanhbnh@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH68', N'Lý Hoài An', N'lhoian', N'lhoian', N'Số 146T, Huyện Ngọc Hiển', N'Nữ', N'0991926738', CAST(N'2002-08-20T00:00:00.000' AS DateTime), N'lhoian@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH69', N'Trần Ðức Bình', N'trncbnh', N'trncbnh', N'Số 175T, Huyện Ngọc Hiển', N'Nam', N'0943718109', CAST(N'2007-07-31T00:00:00.000' AS DateTime), N'trncbnh@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH70', N'Ngô Việt Duy', N'ngvitduy', N'ngvitduy', N'Số 109G, Huyện Phú Tân', N'Nam', N'0976206260', CAST(N'2007-01-08T00:00:00.000' AS DateTime), N'ngvitduy@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH71', N'Vũ Thủy Linh', N'vthylinh', N'vthylinh', N'Số 169E, Huyện Phú Tân', N'Nữ', N'0917639669', CAST(N'2005-07-17T00:00:00.000' AS DateTime), N'vthylinh@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH72', N'Vũ Linh San', N'vlinhsan', N'vlinhsan', N'Số 161X, Huyện Phú Tân', N'Nữ', N'0901883849', CAST(N'2002-01-15T00:00:00.000' AS DateTime), N'vlinhsan@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH73', N'Lê Quang Hòa', N'lquangha', N'lquangha', N'Số 128H, Huyện Phú Tân', N'Nam', N'0985276645', CAST(N'2006-09-10T00:00:00.000' AS DateTime), N'lquangha@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH74', N'Đặng Ðức Tâm', N'ngctm', N'ngctm', N'Số 105R, Huyện Phú Tân', N'Nam', N'0965791437', CAST(N'2000-07-10T00:00:00.000' AS DateTime), N'ngctm@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH75', N'Hồ Ngọc Lan', N'hngclan', N'hngclan', N'Số 137E, Huyện Ngọc Hiển', N'Nữ', N'0952091255', CAST(N'2006-06-29T00:00:00.000' AS DateTime), N'hngclan@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH76', N'Đỗ Nam Thanh', N'namthanh', N'namthanh', N'Số 100F, Huyện Ngọc Hiển', N'Nam', N'0949313797', CAST(N'2000-09-29T00:00:00.000' AS DateTime), N'namthanh@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH77', N'Trần Quang Linh', N'trnquanglinh', N'trnquanglinh', N'Số 189G, Huyện Ngọc Hiển', N'Nam', N'0954892555', CAST(N'2003-03-03T00:00:00.000' AS DateTime), N'trnquanglinh@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH78', N'Phan Thế Vinh', N'phanthvinh', N'phanthvinh', N'Số 128O, Huyện Phú Tân', N'Nam', N'0938100230', CAST(N'2001-02-28T00:00:00.000' AS DateTime), N'phanthvinh@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH79', N'Lý Hoàng Mai', N'lhongmai', N'lhongmai', N'Số 176E, Huyện Ngọc Hiển', N'Nữ', N'0991867806', CAST(N'2000-08-23T00:00:00.000' AS DateTime), N'lhongmai@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH80', N'Trần Ý Bình', N'trnbnh', N'trnbnh', N'Số 170R, Huyện Ngọc Hiển', N'Nữ', N'0919464293', CAST(N'2003-01-06T00:00:00.000' AS DateTime), N'trnbnh@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH81', N'Võ Minh Quân', N'vminhqun', N'vminhqun', N'Số 101Q, Huyện Ngọc Hiển', N'Nam', N'0993870297', CAST(N'2003-01-11T00:00:00.000' AS DateTime), N'vminhqun@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH82', N'Lê Quyết Thắng', N'lquytthng', N'lquytthng', N'Số 106N, Huyện Phú Tân', N'Nam', N'0981267058', CAST(N'2001-06-23T00:00:00.000' AS DateTime), N'lquytthng@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH83', N'Vũ Xuân Lan', N'vxunlan', N'vxunlan', N'Số 128Y, Huyện Phú Tân', N'Nữ', N'0963016142', CAST(N'2003-09-20T00:00:00.000' AS DateTime), N'vxunlan@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH84', N'Phan Mai Ly', N'phanmaily', N'phanmaily', N'Số 154U, Huyện Ngọc Hiển', N'Nữ', N'0987360366', CAST(N'2008-05-13T00:00:00.000' AS DateTime), N'phanmaily@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH85', N'Trần Quang Thái', N'trnquangthi', N'trnquangthi', N'Số 104Y, Huyện Phú Tân', N'Nam', N'0950452966', CAST(N'2008-02-24T00:00:00.000' AS DateTime), N'trnquangthi@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH86', N'Nguyễn Ngọc Loan', N'nguynngcloan', N'nguynngcloan', N'Số 187A, Huyện Ngọc Hiển', N'Nữ', N'0972299492', CAST(N'2008-07-04T00:00:00.000' AS DateTime), N'nguynngcloan@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH87', N'Phạm Hiểu Minh', N'phmhiuminh', N'phmhiuminh', N'Số 145M, Huyện Ngọc Hiển', N'Nam', N'0962899694', CAST(N'2008-09-22T00:00:00.000' AS DateTime), N'phmhiuminh@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH88', N'Huỳnh Trọng Trí', N'hunhtrngtr', N'hunhtrngtr', N'Số 122B, Huyện Ngọc Hiển', N'Nam', N'0939392384', CAST(N'2004-11-03T00:00:00.000' AS DateTime), N'hunhtrngtr@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH89', N'Phạm Vân Anh', N'phmvnanh', N'phmvnanh', N'Số 157S, Huyện Phú Tân', N'Nữ', N'0990381665', CAST(N'2001-06-27T00:00:00.000' AS DateTime), N'phmvnanh@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH90', N'Dương Hải Thanh', N'dnghithanh', N'dnghithanh', N'Số 139H, Huyện Ngọc Hiển', N'Nữ', N'0981593744', CAST(N'2004-10-04T00:00:00.000' AS DateTime), N'dnghithanh@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH91', N'Phạm Khải Tuấn', N'phmkhitun', N'phmkhitun', N'Số 193S, Huyện Ngọc Hiển', N'Nam', N'0906892774', CAST(N'2004-05-04T00:00:00.000' AS DateTime), N'phmkhitun@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH92', N'Huỳnh Tấn Phát', N'hunhtnpht', N'hunhtnpht', N'Số 165B, Huyện Ngọc Hiển', N'Nam', N'0957042595', CAST(N'2006-06-23T00:00:00.000' AS DateTime), N'hunhtnpht@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH93', N'Hoàng Ngọc Cường', N'hongngccng', N'hongngccng', N'Số 146S, Huyện Phú Tân', N'Nam', N'0999838564', CAST(N'2001-10-05T00:00:00.000' AS DateTime), N'hongngccng@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH94', N'Hoàng Tiến Ðức', N'hongtinc', N'hongtinc', N'Số 105X, Huyện Phú Tân', N'Nam', N'0932695133', CAST(N'2003-09-26T00:00:00.000' AS DateTime), N'hongtinc@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH95', N'Lý Thủy Trang', N'lthytrang', N'lthytrang', N'Số 124Y, Huyện Phú Tân', N'Nữ', N'0901304945', CAST(N'2003-12-25T00:00:00.000' AS DateTime), N'lthytrang@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH96', N'Lê Thiên Thư', N'lthinth', N'lthinth', N'Số 161H, Huyện Ngọc Hiển', N'Nữ', N'0970921530', CAST(N'2000-07-03T00:00:00.000' AS DateTime), N'lthinth@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH97', N'Trần Bảo Thái', N'trnbothi', N'trnbothi', N'Số 181G, Huyện Ngọc Hiển', N'Nam', N'0903655720', CAST(N'2009-03-14T00:00:00.000' AS DateTime), N'trnbothi@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'KH98', N'Huỳnh Mỹ Phụng', N'hunhmphng', N'hunhmphng', N'Số 114E, Huyện Ngọc Hiển', N'Nữ', N'0982557899', CAST(N'2009-01-17T00:00:00.000' AS DateTime), N'hunhmphng@gmail.com')
GO
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV01', N'Nguyễn Hoàng Kha', N'admin', N'admin', N'Vĩnh Long', N'Nam', N'0922374863', CAST(N'2002-02-05T00:00:00.000' AS DateTime), N'hkit9x@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV02', N'Nguyễn Hoàng Phúc', N'hphuc', N'hphuc', N'Vĩnh Long', N'Nam', N'0385467389', CAST(N'2002-05-09T00:00:00.000' AS DateTime), N'hphuc@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV03', N'Đỗ Hoàng Phúc', N'phuc', N'phuc', N'Vĩnh Long', N'Nam', N'0983764788', CAST(N'2002-07-02T00:00:00.000' AS DateTime), N'hoangphuc@gmai.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV04', N'Ngô Trúc', N'ntruc', N'ntruc', N'Long Hồ', N'Nữ', N'0354655678', CAST(N'2002-05-09T00:00:00.000' AS DateTime), N'truc@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV05', N'Hồ Hồng Sơn', N'hhngsn', N'hhngsn', N'Số 155P, Huyện Ngọc Hiển', N'Nam', N'0930251761', CAST(N'2009-07-06T00:00:00.000' AS DateTime), N'hhngsn@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV06', N'Phan Nguyệt Cát', N'phannguytct', N'phannguytct', N'Số 107A, Huyện Phú Tân', N'Nữ', N'0929751696', CAST(N'2005-12-06T00:00:00.000' AS DateTime), N'phannguytct@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV07', N'Võ Bảo Lâm', N'vbolm', N'vbolm', N'Số 130F, Huyện Ngọc Hiển', N'Nam', N'0954730357', CAST(N'2002-04-17T00:00:00.000' AS DateTime), N'vbolm@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV08', N'Phan Quang Hùng', N'phanquanghng', N'phanquanghng', N'Số 140N, Huyện Phú Tân', N'Nam', N'0914738411', CAST(N'2004-12-13T00:00:00.000' AS DateTime), N'phanquanghng@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV09', N'Lý Gia Phong', N'lgiaphong', N'lgiaphong', N'Số 100E, Huyện Phú Tân', N'Nam', N'0971675421', CAST(N'2006-10-28T00:00:00.000' AS DateTime), N'lgiaphong@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV10', N'Đặng Bá Thịnh', N'ngbthnh', N'ngbthnh', N'Số 150Y, Huyện Ngọc Hiển', N'Nam', N'0999168774', CAST(N'2001-09-24T00:00:00.000' AS DateTime), N'ngbthnh@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV11', N'Hồ Phước An', N'hphcan', N'hphcan', N'Số 133T, Huyện Ngọc Hiển', N'Nam', N'0955410460', CAST(N'2008-05-17T00:00:00.000' AS DateTime), N'hphcan@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV12', N'Hoàng Tuấn Tú', N'hongtunt', N'hongtunt', N'Số 167V, Huyện Ngọc Hiển', N'Nam', N'0961491829', CAST(N'2009-02-15T00:00:00.000' AS DateTime), N'hongtunt@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV13', N'Nguyễn Việt Quyết', N'nguynvitquyt', N'nguynvitquyt', N'Số 167M, Huyện Ngọc Hiển', N'Nam', N'0909874392', CAST(N'2001-01-05T00:00:00.000' AS DateTime), N'nguynvitquyt@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV14', N'Huỳnh Quế Lâm', N'hunhqulm', N'hunhqulm', N'Số 133A, Huyện Ngọc Hiển', N'Nữ', N'0964300729', CAST(N'2006-03-14T00:00:00.000' AS DateTime), N'hunhqulm@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV15', N'Đỗ Thanh Thiên', N'thanhthin', N'thanhthin', N'Số 183R, Huyện Ngọc Hiển', N'Nam', N'0923383432', CAST(N'2001-12-04T00:00:00.000' AS DateTime), N'thanhthin@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV16', N'Phạm Minh Nhật', N'phmminhnht', N'phmminhnht', N'Số 169E, Huyện Phú Tân', N'Nam', N'0990836238', CAST(N'2008-05-17T00:00:00.000' AS DateTime), N'phmminhnht@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV17', N'Hoàng Quang Lộc', N'hongquanglc', N'hongquanglc', N'Số 129H, Huyện Ngọc Hiển', N'Nam', N'0966399579', CAST(N'2009-04-12T00:00:00.000' AS DateTime), N'hongquanglc@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV18', N'Lý Hữu Ðạt', N'lhut', N'lhut', N'Số 139X, Huyện Ngọc Hiển', N'Nam', N'0988103261', CAST(N'2003-06-06T00:00:00.000' AS DateTime), N'lhut@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV19', N'Phan Ðức Tường', N'phanctng', N'phanctng', N'Số 117M, Huyện Ngọc Hiển', N'Nam', N'0999146050', CAST(N'2008-07-04T00:00:00.000' AS DateTime), N'phanctng@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV20', N'Hoàng Hồng Quế', N'honghngqu', N'honghngqu', N'Số 122Y, Huyện Phú Tân', N'Nữ', N'0984765101', CAST(N'2004-03-17T00:00:00.000' AS DateTime), N'honghngqu@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV21', N'Võ Minh Thúy', N'vminhthy', N'vminhthy', N'Số 129E, Huyện Ngọc Hiển', N'Nữ', N'0949820389', CAST(N'2006-09-15T00:00:00.000' AS DateTime), N'vminhthy@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV22', N'Bùi Ái Khanh', N'biikhanh', N'biikhanh', N'Số 111Q, Huyện Ngọc Hiển', N'Nữ', N'0926531689', CAST(N'2005-04-22T00:00:00.000' AS DateTime), N'biikhanh@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV23', N'Lý Bạch Loan', N'lbchloan', N'lbchloan', N'Số 165H, Huyện Ngọc Hiển', N'Nữ', N'0976344468', CAST(N'2009-01-27T00:00:00.000' AS DateTime), N'lbchloan@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV24', N'Đỗ Hồng Sơn', N'hngsn', N'hngsn', N'Số 147D, Huyện Phú Tân', N'Nam', N'0991800315', CAST(N'2007-01-13T00:00:00.000' AS DateTime), N'hngsn@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV25', N'Dương Xuân Hiếu', N'dngxunhiu', N'dngxunhiu', N'Số 103O, Huyện Ngọc Hiển', N'Nam', N'0965713710', CAST(N'2005-06-08T00:00:00.000' AS DateTime), N'dngxunhiu@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV26', N'Lê Thu Hiền', N'lthuhin', N'lthuhin', N'Số 154Q, Huyện Ngọc Hiển', N'Nữ', N'0973873099', CAST(N'2003-02-14T00:00:00.000' AS DateTime), N'lthuhin@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV27', N'Đặng Thụy Trâm', N'ngthytrm', N'ngthytrm', N'Số 172F, Huyện Phú Tân', N'Nữ', N'0993707863', CAST(N'2008-07-05T00:00:00.000' AS DateTime), N'ngthytrm@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV28', N'Hồ Thanh Tuyền', N'hthanhtuyn', N'hthanhtuyn', N'Số 144O, Huyện Phú Tân', N'Nữ', N'0933751379', CAST(N'2008-03-14T00:00:00.000' AS DateTime), N'hthanhtuyn@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV29', N'Võ Trung Dũng', N'vtrungdng', N'vtrungdng', N'Số 100P, Huyện Ngọc Hiển', N'Nam', N'0967992239', CAST(N'2008-03-04T00:00:00.000' AS DateTime), N'vtrungdng@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV30', N'Đặng Văn Minh', N'ngvnminh', N'ngvnminh', N'Số 190E, Huyện Ngọc Hiển', N'Nam', N'0960762328', CAST(N'2004-12-22T00:00:00.000' AS DateTime), N'ngvnminh@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV31', N'Trần Quang Mạnh', N'tanvo', N'tanvo', N'Số 120I, Huyện Ngọc Hiển', N'Nam', N'0987542541', CAST(N'2001-12-15T00:00:00.000' AS DateTime), N'trnquangmnh@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV32', N'Nguyễn Hải Sinh', N'nguynhisinh', N'nguynhisinh', N'Số 149M, Huyện Phú Tân', N'Nữ', N'0985063874', CAST(N'2009-06-07T00:00:00.000' AS DateTime), N'nguynhisinh@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV33', N'Nguyễn An Cơ', N'nguynanc', N'nguynanc', N'Số 120Y, Huyện Phú Tân', N'Nam', N'0973019147', CAST(N'2007-08-19T00:00:00.000' AS DateTime), N'nguynanc@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV34', N'Phạm Ðức Khang', N'phmckhang', N'phmckhang', N'Số 114G, Huyện Ngọc Hiển', N'Nam', N'0912256290', CAST(N'2009-08-07T00:00:00.000' AS DateTime), N'phmckhang@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV35', N'Bùi Thúy Ngân', N'bithyngn', N'bithyngn', N'Số 162P, Huyện Ngọc Hiển', N'Nữ', N'0963272066', CAST(N'2007-09-11T00:00:00.000' AS DateTime), N'bithyngn@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV36', N'Đặng Thúy Hường', N'ngthyhng', N'ngthyhng', N'Số 130D, Huyện Ngọc Hiển', N'Nữ', N'0989505729', CAST(N'2009-10-13T00:00:00.000' AS DateTime), N'ngthyhng@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV37', N'Lý Ðông Nhi', N'lngnhi', N'lngnhi', N'Số 126B, Huyện Phú Tân', N'Nữ', N'0950091353', CAST(N'2001-12-01T00:00:00.000' AS DateTime), N'lngnhi@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV38', N'Võ Hồng Ðăng', N'vhngng', N'vhngng', N'Số 137T, Huyện Ngọc Hiển', N'Nam', N'0936305426', CAST(N'2009-05-29T00:00:00.000' AS DateTime), N'vhngng@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV39', N'Vũ Hương Mai', N'vhngmai', N'vhngmai', N'Số 124X, Huyện Phú Tân', N'Nữ', N'0951363207', CAST(N'2000-09-22T00:00:00.000' AS DateTime), N'vhngmai@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV40', N'Lê Thiện Giang', N'lthingiang', N'lthingiang', N'Số 127M, Huyện Ngọc Hiển', N'Nam', N'0971144356', CAST(N'2000-07-11T00:00:00.000' AS DateTime), N'lthingiang@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV41', N'Hoàng Diệu Linh', N'hongdiulinh', N'hongdiulinh', N'Số 138B, Huyện Phú Tân', N'Nữ', N'0948648003', CAST(N'2009-08-06T00:00:00.000' AS DateTime), N'hongdiulinh@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV42', N'Hoàng Hữu Long', N'honghulong', N'honghulong', N'Số 164L, Huyện Ngọc Hiển', N'Nam', N'0928598541', CAST(N'2003-10-07T00:00:00.000' AS DateTime), N'honghulong@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV43', N'Bùi Thiên Ân', N'bithinn', N'bithinn', N'Số 159O, Huyện Ngọc Hiển', N'Nam', N'0909948028', CAST(N'2001-11-15T00:00:00.000' AS DateTime), N'bithinn@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV44', N'Hồ Hồng Quang', N'hhngquang', N'hhngquang', N'Số 139O, Huyện Ngọc Hiển', N'Nam', N'0978681896', CAST(N'2007-03-15T00:00:00.000' AS DateTime), N'hhngquang@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV45', N'Phạm Bá Kỳ', N'phmbk', N'phmbk', N'Số 112Y, Huyện Phú Tân', N'Nam', N'0994079666', CAST(N'2006-12-02T00:00:00.000' AS DateTime), N'phmbk@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV46', N'Huỳnh Anh Minh', N'hunhanhminh', N'hunhanhminh', N'Số 177I, Huyện Phú Tân', N'Nam', N'0969902605', CAST(N'2000-12-15T00:00:00.000' AS DateTime), N'hunhanhminh@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV47', N'Phạm Thế Hùng', N'phmthhng', N'phmthhng', N'Số 127I, Huyện Ngọc Hiển', N'Nam', N'0932123476', CAST(N'2007-07-06T00:00:00.000' AS DateTime), N'phmthhng@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV48', N'Phạm Kim Ngân', N'phmkimngn', N'phmkimngn', N'Số 165M, Huyện Phú Tân', N'Nữ', N'0955004038', CAST(N'2002-07-17T00:00:00.000' AS DateTime), N'phmkimngn@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV49', N'Huỳnh Vy Lan', N'hunhvylan', N'hunhvylan', N'Số 111X, Huyện Phú Tân', N'Nữ', N'0943569645', CAST(N'2009-10-20T00:00:00.000' AS DateTime), N'hunhvylan@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV50', N'Bùi Linh Chi', N'bilinhchi', N'bilinhchi', N'Số 163A, Huyện Ngọc Hiển', N'Nữ', N'0981174167', CAST(N'2001-10-09T00:00:00.000' AS DateTime), N'bilinhchi@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV51', N'Đặng Thế Doanh', N'ngthdoanh', N'ngthdoanh', N'Số 159P, Huyện Phú Tân', N'Nam', N'0937260865', CAST(N'2003-06-11T00:00:00.000' AS DateTime), N'ngthdoanh@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV52', N'Nguyễn Bạch Loan', N'nguynbchloan', N'nguynbchloan', N'Số 116E, Huyện Phú Tân', N'Nữ', N'0935690783', CAST(N'2000-04-21T00:00:00.000' AS DateTime), N'nguynbchloan@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV53', N'Trần Bích Thủy', N'trnbchthy', N'trnbchthy', N'Số 196K, Huyện Phú Tân', N'Nữ', N'0939965363', CAST(N'2007-05-22T00:00:00.000' AS DateTime), N'trnbchthy@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV54', N'Lê Nam Tú', N'lnamt', N'lnamt', N'Số 135Y, Huyện Ngọc Hiển', N'Nam', N'0900530727', CAST(N'2006-03-11T00:00:00.000' AS DateTime), N'lnamt@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV55', N'Võ Diệu Hoa', N'vdiuhoa', N'vdiuhoa', N'Số 126X, Huyện Ngọc Hiển', N'Nữ', N'0973047952', CAST(N'2003-08-13T00:00:00.000' AS DateTime), N'vdiuhoa@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV56', N'Phan Bá Kỳ', N'phanbk', N'phanbk', N'Số 111U, Huyện Phú Tân', N'Nam', N'0933347037', CAST(N'2002-01-27T00:00:00.000' AS DateTime), N'phanbk@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV57', N'Vũ Tuyết Mai', N'vtuytmai', N'vtuytmai', N'Số 167Y, Huyện Phú Tân', N'Nữ', N'0989691264', CAST(N'2007-08-28T00:00:00.000' AS DateTime), N'vtuytmai@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV58', N'Phan Thiện Luân', N'phanthinlun', N'phanthinlun', N'Số 117U, Huyện Phú Tân', N'Nam', N'0927370491', CAST(N'2007-09-21T00:00:00.000' AS DateTime), N'phanthinlun@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV59', N'Vũ Thiên Lam', N'vthinlam', N'vthinlam', N'Số 179A, Huyện Ngọc Hiển', N'Nữ', N'0905133116', CAST(N'2005-07-08T00:00:00.000' AS DateTime), N'vthinlam@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV60', N'Lý Mai Linh', N'lmailinh', N'lmailinh', N'Số 140G, Huyện Ngọc Hiển', N'Nữ', N'0942399100', CAST(N'2003-03-03T00:00:00.000' AS DateTime), N'lmailinh@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV61', N'Đỗ Ðức Sinh', N'csinh', N'csinh', N'Số 131Q, Huyện Ngọc Hiển', N'Nam', N'0944535777', CAST(N'2008-10-15T00:00:00.000' AS DateTime), N'csinh@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV62', N'Bùi Minh Kỳ', N'biminhk', N'biminhk', N'Số 194O, Huyện Phú Tân', N'Nam', N'0952682235', CAST(N'2008-05-19T00:00:00.000' AS DateTime), N'biminhk@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV63', N'Đỗ Bích Thủy', N'bchthy', N'bchthy', N'Số 181Y, Huyện Ngọc Hiển', N'Nữ', N'0997048738', CAST(N'2005-06-02T00:00:00.000' AS DateTime), N'bchthy@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV64', N'Huỳnh Tất Hòa', N'hunhttha', N'hunhttha', N'Số 156S, Huyện Phú Tân', N'Nam', N'0998743716', CAST(N'2003-02-05T00:00:00.000' AS DateTime), N'hunhttha@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV65', N'Phạm Đăng Quang', N'phmngquang', N'phmngquang', N'Số 118P, Huyện Ngọc Hiển', N'Nam', N'0974870987', CAST(N'2002-01-21T00:00:00.000' AS DateTime), N'phmngquang@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV66', N'Vũ Trung Thành', N'vtrungthnh', N'vtrungthnh', N'Số 168V, Huyện Phú Tân', N'Nam', N'0928493156', CAST(N'2001-02-08T00:00:00.000' AS DateTime), N'vtrungthnh@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV67', N'Hồ Ðắc Di', N'hcdi', N'hcdi', N'Số 189G, Huyện Ngọc Hiển', N'Nam', N'0905096498', CAST(N'2007-01-14T00:00:00.000' AS DateTime), N'hcdi@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV68', N'Vũ Thuận Thành', N'vthunthnh', N'vthunthnh', N'Số 150D, Huyện Ngọc Hiển', N'Nam', N'0996261802', CAST(N'2002-05-12T00:00:00.000' AS DateTime), N'vthunthnh@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV69', N'Hồ Hạnh Chi', N'hhnhchi', N'hhnhchi', N'Số 135Y, Huyện Ngọc Hiển', N'Nữ', N'0922001925', CAST(N'2009-12-15T00:00:00.000' AS DateTime), N'hhnhchi@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV70', N'Hồ Mộng Thu', N'hmngthu', N'hmngthu', N'Số 146U, Huyện Ngọc Hiển', N'Nữ', N'0933822194', CAST(N'2002-03-04T00:00:00.000' AS DateTime), N'hmngthu@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV71', N'Dương Tuấn Tài', N'dngtunti', N'dngtunti', N'Số 166Q, Huyện Ngọc Hiển', N'Nam', N'0914412422', CAST(N'2003-09-11T00:00:00.000' AS DateTime), N'dngtunti@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV72', N'Võ Gia Linh', N'vgialinh', N'vgialinh', N'Số 129Q, Huyện Ngọc Hiển', N'Nữ', N'0911158999', CAST(N'2005-12-18T00:00:00.000' AS DateTime), N'vgialinh@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV73', N'Đỗ Phú Ân', N'phn', N'phn', N'Số 138S, Huyện Phú Tân', N'Nam', N'0947162892', CAST(N'2007-06-12T00:00:00.000' AS DateTime), N'phn@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV74', N'Đỗ Thu Linh', N'thulinh', N'thulinh', N'Số 118G, Huyện Phú Tân', N'Nữ', N'0907430148', CAST(N'2006-02-12T00:00:00.000' AS DateTime), N'thulinh@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV75', N'Nguyễn Thu Hằng', N'nguynthuhng', N'nguynthuhng', N'Số 173H, Huyện Ngọc Hiển', N'Nữ', N'0946385967', CAST(N'2000-06-04T00:00:00.000' AS DateTime), N'nguynthuhng@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV76', N'Lý Ðình Hợp', N'lnhhp', N'lnhhp', N'Số 133U, Huyện Ngọc Hiển', N'Nam', N'0993915937', CAST(N'2001-10-26T00:00:00.000' AS DateTime), N'lnhhp@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV77', N'Đặng Hồng Lâm', N'nghnglm', N'nghnglm', N'Số 176O, Huyện Ngọc Hiển', N'Nữ', N'0931321659', CAST(N'2003-09-27T00:00:00.000' AS DateTime), N'nghnglm@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV78', N'Lê Thục Ðình', N'lthcnh', N'lthcnh', N'Số 113T, Huyện Phú Tân', N'Nữ', N'0967574613', CAST(N'2001-05-02T00:00:00.000' AS DateTime), N'lthcnh@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV79', N'Bùi Minh Hoàng', N'biminhhong', N'biminhhong', N'Số 177D, Huyện Ngọc Hiển', N'Nam', N'0929786406', CAST(N'2005-05-29T00:00:00.000' AS DateTime), N'biminhhong@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV80', N'Phan Tiến Hiệp', N'phantinhip', N'phantinhip', N'Số 133R, Huyện Phú Tân', N'Nam', N'0970067810', CAST(N'2008-10-08T00:00:00.000' AS DateTime), N'phantinhip@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV81', N'Dương Chí Kiên', N'dngchkin', N'dngchkin', N'Số 192E, Huyện Ngọc Hiển', N'Nam', N'0976242693', CAST(N'2003-08-27T00:00:00.000' AS DateTime), N'dngchkin@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV82', N'Đặng Hà Phương', N'nghphng', N'nghphng', N'Số 123C, Huyện Ngọc Hiển', N'Nữ', N'0980739537', CAST(N'2001-01-09T00:00:00.000' AS DateTime), N'nghphng@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV83', N'Huỳnh Hồng Lĩnh', N'hunhhnglnh', N'hunhhnglnh', N'Số 156P, Huyện Phú Tân', N'Nam', N'0999544122', CAST(N'2001-06-08T00:00:00.000' AS DateTime), N'hunhhnglnh@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV84', N'Trần Mỹ Huyền', N'trnmhuyn', N'trnmhuyn', N'Số 116P, Huyện Ngọc Hiển', N'Nữ', N'0931337835', CAST(N'2002-11-27T00:00:00.000' AS DateTime), N'trnmhuyn@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV85', N'Phan Tâm Hiền', N'phantmhin', N'phantmhin', N'Số 117L, Huyện Ngọc Hiển', N'Nữ', N'0956980412', CAST(N'2006-10-10T00:00:00.000' AS DateTime), N'phantmhin@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV86', N'Đỗ Ngọc Cảnh', N'ngccnh', N'ngccnh', N'Số 192D, Huyện Ngọc Hiển', N'Nam', N'0935360645', CAST(N'2009-05-08T00:00:00.000' AS DateTime), N'ngccnh@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV87', N'Dương Phụng Việt', N'dngphngvit', N'dngphngvit', N'Số 162P, Huyện Ngọc Hiển', N'Nam', N'0910980062', CAST(N'2003-05-08T00:00:00.000' AS DateTime), N'dngphngvit@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV88', N'Phạm Hữu Hoàng', N'phmhuhong', N'phmhuhong', N'Số 190F, Huyện Ngọc Hiển', N'Nam', N'0917143680', CAST(N'2008-06-10T00:00:00.000' AS DateTime), N'phmhuhong@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV89', N'Bùi Phương Hoa', N'biphnghoa', N'biphnghoa', N'Số 178E, Huyện Ngọc Hiển', N'Nữ', N'0995297187', CAST(N'2000-02-02T00:00:00.000' AS DateTime), N'biphnghoa@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV90', N'Huỳnh Hữu Lễ', N'hunhhul', N'hunhhul', N'Số 199K, Huyện Ngọc Hiển', N'Nam', N'0923823790', CAST(N'2008-12-17T00:00:00.000' AS DateTime), N'hunhhul@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV91', N'Hoàng Phượng Nga', N'hongphngnga', N'hongphngnga', N'Số 140C, Huyện Phú Tân', N'Nữ', N'0974343297', CAST(N'2002-05-26T00:00:00.000' AS DateTime), N'hongphngnga@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV92', N'Ngô Bảo An', N'ngboan', N'ngboan', N'Số 105F, Huyện Ngọc Hiển', N'Nam', N'0963548021', CAST(N'2005-02-27T00:00:00.000' AS DateTime), N'ngboan@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV93', N'Dương Xuân Cao', N'dngxuncao', N'dngxuncao', N'Số 194A, Huyện Ngọc Hiển', N'Nam', N'0950460076', CAST(N'2009-09-13T00:00:00.000' AS DateTime), N'dngxuncao@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV94', N'Dương Hương Nhi', N'dnghngnhi', N'dnghngnhi', N'Số 152L, Huyện Phú Tân', N'Nữ', N'0912602546', CAST(N'2003-12-25T00:00:00.000' AS DateTime), N'dnghngnhi@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV95', N'Trần Ý Bình', N'trnbnh', N'trnbnh', N'Số 104E, Huyện Ngọc Hiển', N'Nữ', N'0904572068', CAST(N'2007-11-27T00:00:00.000' AS DateTime), N'trnbnh@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV96', N'Đỗ Ngọc Khương', N'ngckhng', N'ngckhng', N'Số 141M, Huyện Ngọc Hiển', N'Nam', N'0922999408', CAST(N'2002-12-10T00:00:00.000' AS DateTime), N'ngckhng@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV97', N'Vũ Phú Hải', N'vphhi', N'vphhi', N'Số 118V, Huyện Phú Tân', N'Nam', N'0986841981', CAST(N'2000-09-15T00:00:00.000' AS DateTime), N'vphhi@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV98', N'Hoàng Tuấn Kiệt', N'hongtunkit', N'hongtunkit', N'Số 117E, Huyện Ngọc Hiển', N'Nam', N'0929161105', CAST(N'2004-03-22T00:00:00.000' AS DateTime), N'hongtunkit@gmail.com')
INSERT [dbo].[NhanVien] ([MaThanhVien], [HoVaTen], [TenDangNhap], [MatKhau], [DiaChi], [GioiTinh], [SoDienThoai], [NgaySinh], [Email]) VALUES (N'NV99', N'Hoàng Thu Hiền', N'hongthuhin', N'hongthuhin', N'Số 162M, Huyện Ngọc Hiển', N'Nữ', N'0906880013', CAST(N'2008-11-29T00:00:00.000' AS DateTime), N'hongthuhin@gmail.com')
GO
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [KieuDang], [GiaNhap], [GiaXuat], [TinhTrang], [NgayNhap], [SoLuongNhap], [DaBan], [ChatLieu], [HangSanXuat], [AnhSanPham]) VALUES (N'P02', N'Áo Thun Nữ', N'Nữ', 35000, 40000, N'Còn hàng', CAST(N'2022-10-22T00:00:00.000' AS DateTime), 60, 40, N'elastic', N'Cty Liên Hoa', N'D:\dotnet\QLBH\QLBH\HinhAnh\aothunu.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [KieuDang], [GiaNhap], [GiaXuat], [TinhTrang], [NgayNhap], [SoLuongNhap], [DaBan], [ChatLieu], [HangSanXuat], [AnhSanPham]) VALUES (N'P03', N'Áo Kaky Nam', N'Nam', 60000, 70000, N'Còn hàng', CAST(N'2022-10-22T00:00:00.000' AS DateTime), 80, 60, N'kaky', N'Cty Việt Tiến', N'D:\dotnet\QLBH\QLBH\HinhAnh\aokakynam.png')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [KieuDang], [GiaNhap], [GiaXuat], [TinhTrang], [NgayNhap], [SoLuongNhap], [DaBan], [ChatLieu], [HangSanXuat], [AnhSanPham]) VALUES (N'P04', N'Quần Kaky Nam', N'Nam', 90000, 115000, N'Hết hàng', CAST(N'2022-10-23T00:00:00.000' AS DateTime), 90, 40, N'kaky', N'Cty Việt Tiến', N'D:\dotnet\QLBH\QLBH\HinhAnh\quankakynam.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [KieuDang], [GiaNhap], [GiaXuat], [TinhTrang], [NgayNhap], [SoLuongNhap], [DaBan], [ChatLieu], [HangSanXuat], [AnhSanPham]) VALUES (N'P05', N'Áo Khoác', N'Nữ', 150000, 170000, N'Hết hàng', CAST(N'2022-10-05T00:00:00.000' AS DateTime), 30, 10, N'wool', N'Cty Việt Tiến', N'D:\dotnet\QLBH\QLBH\HinhAnh\aokhoac.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [KieuDang], [GiaNhap], [GiaXuat], [TinhTrang], [NgayNhap], [SoLuongNhap], [DaBan], [ChatLieu], [HangSanXuat], [AnhSanPham]) VALUES (N'P06', N'Quần lửng', N'Nam', 30000, 35000, N'Còn hàng', CAST(N'2022-10-23T00:00:00.000' AS DateTime), 30, 10, N'material', N'Cty Việt Tiến', N'D:\dotnet\QLBH\QLBH\HinhAnh\quanlung.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [KieuDang], [GiaNhap], [GiaXuat], [TinhTrang], [NgayNhap], [SoLuongNhap], [DaBan], [ChatLieu], [HangSanXuat], [AnhSanPham]) VALUES (N'P07', N'Váy', N'Nữ', 80000, 100000, N'Còn hàng', CAST(N'2022-10-25T00:00:00.000' AS DateTime), 20, 10, N'material', N'Cty Việt Á', N'D:\dotnet\QLBH\QLBH\HinhAnh\vay.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [KieuDang], [GiaNhap], [GiaXuat], [TinhTrang], [NgayNhap], [SoLuongNhap], [DaBan], [ChatLieu], [HangSanXuat], [AnhSanPham]) VALUES (N'P08', N'Chân Váy Chữ A Có Túi', N'Nữ', 399000, 439000, N'Còn hàng', CAST(N'2022-10-27T00:00:00.000' AS DateTime), 100, 12, N'Linen ', N'HoYang', N'F:\sharecode\QLBH_winform\QLBH\HinhAnh\vay-chu-a-mau-hong.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [KieuDang], [GiaNhap], [GiaXuat], [TinhTrang], [NgayNhap], [SoLuongNhap], [DaBan], [ChatLieu], [HangSanXuat], [AnhSanPham]) VALUES (N'P09', N'Set Váy Dạ Tiểu Thư Xinh Sang', N'Nữ', 70000, 749000, N'Còn hàng', CAST(N'2022-10-28T21:58:17.000' AS DateTime), 120, 53, N'Dạ cao cấp lót lụa', N'HoYang', N'F:\sharecode\QLBH_winform\QLBH\HinhAnh\set-vay-da-dep.jpg')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__KhachHan__55F68FC0ECADFFE3]    Script Date: 20/07/2022 7:53:01 CH ******/
ALTER TABLE [dbo].[KhachHang] ADD UNIQUE NONCLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NhanVien__55F68FC0C61B402C]    Script Date: 20/07/2022 7:53:01 CH ******/
ALTER TABLE [dbo].[NhanVien] ADD UNIQUE NONCLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD CHECK  (([TinhTrang]=N'Còn hàng' OR [TinhTrang]=N'Hết hàng'))
GO
USE [master]
GO
ALTER DATABASE [QLBH] SET  READ_WRITE 
GO
