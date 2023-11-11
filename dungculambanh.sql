-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 11, 2023 lúc 03:54 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dungculambanh`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `ID_BinhLuan` int(11) NOT NULL,
  `ID_ThanhVien` int(11) NOT NULL,
  `ID_SanPham` int(11) NOT NULL,
  `NoiDung` varchar(255) NOT NULL,
  `ThoiGianBinhLuan` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `ID_DonHang` int(11) NOT NULL,
  `ID_SanPham` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `CodeOrder` int(11) DEFAULT NULL,
  `GiaMua` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`ID_DonHang`, `ID_SanPham`, `SoLuong`, `CodeOrder`, `GiaMua`) VALUES
(110, 3021, 1, 5999, 150000),
(111, 3017, 2, 4544, 80000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietgiohang`
--

CREATE TABLE `chitietgiohang` (
  `ID_GioHang` int(11) NOT NULL,
  `ID_SanPham` int(11) NOT NULL,
  `SoLuong` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `ID_DanhMuc` int(11) NOT NULL,
  `TenDanhMuc` varchar(30) NOT NULL,
  `Mota` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`ID_DanhMuc`, `TenDanhMuc`, `Mota`) VALUES
(13, 'CÃ¢n Ä‘iá»‡n tá»­-MÃ¡y mÃ³c', '.'),
(14, 'Dá»¥ng cá»¥ cÃ¡n bá»™t', ''),
(15, 'LÃ² nÆ°á»›ng bÃ¡nh', '.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `ID_DonHang` int(11) NOT NULL,
  `ID_ThanhVien` int(11) NOT NULL,
  `ThoiGianLap` datetime NOT NULL,
  `DiaChi` varchar(30) NOT NULL,
  `GhiChu` varchar(255) NOT NULL,
  `GiaTien` float NOT NULL,
  `SoDienThoai` varchar(10) NOT NULL,
  `XuLy` tinyint(1) NOT NULL,
  `NguoiNhan` varchar(50) DEFAULT NULL,
  `HinhThucThanhToan` varchar(20) DEFAULT NULL,
  `CodeOrder` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`ID_DonHang`, `ID_ThanhVien`, `ThoiGianLap`, `DiaChi`, `GhiChu`, `GiaTien`, `SoDienThoai`, `XuLy`, `NguoiNhan`, `HinhThucThanhToan`, `CodeOrder`) VALUES
(84, 1, '2022-09-24 16:21:42', 'Hà Nội', '', 31500, '0123456789', 1, 'Nguyễn Văn A', 'momo', 2045),
(85, 1, '2023-08-03 20:04:22', 'Hà Nội', '', 47500, '0123456789', 1, 'Nguyễn Văn A', 'cod', 443),
(86, 1, '2023-08-24 20:15:28', 'Hà Nội', '', 342000, '0123456789', 1, 'Nguyễn Văn A', 'momo', 7592),
(87, 1, '2023-08-24 20:24:56', 'Hà Nội', '', 209100, '0123456789', 1, 'Nguyễn Văn A', 'vnpay', 5970),
(88, 1, '2023-08-26 20:04:17', 'Hà Nội', '', 47500, '0123456789', 1, 'Nguyễn Văn A', 'momo', 3287),
(89, 1, '2023-08-26 20:56:17', 'Hà Nội', '', 356800, '0123456789', 1, 'Nguyễn Văn A', 'cod', 1846),
(90, 1, '2023-08-27 11:34:20', 'Hà Nội', '', 47500, '0123456789', 2, 'Nguyễn Văn A', 'vnpay', 4409),
(91, 1, '2023-08-28 20:17:45', 'Hà Nội', '', 47500, '0123456789', 1, 'Nguyễn Văn A', 'cod', 6713),
(92, 1, '2023-08-28 21:20:36', 'Hà Nội', '', 16200, '0123456789', 1, 'Nguyễn Văn A', 'cod', 9897),
(93, 1, '2023-08-28 21:21:51', 'Hà Nội', '', 171000, '0123456789', 1, 'Nguyễn Văn A', 'momo', 5646),
(94, 1, '2023-08-29 09:05:24', 'Hà Nội', '', 199500, '0123456789', 2, 'Nguyễn Văn A', 'cod', 8806),
(95, 1, '2023-08-29 09:07:13', 'Hà Nội', '', 76000, '0123456789', 1, 'Nguyễn Văn A', 'cod', 2596),
(96, 1, '2023-08-29 09:10:29', 'Hà Nội', '', 114000, '0123456789', 2, 'Nguyễn Văn A', 'bank', 8044),
(97, 1, '2023-08-29 09:12:25', 'Hà Nội', '', 152000, '0123456789', 2, 'Nguyễn Văn A', 'momo', 7176),
(98, 1, '2023-08-29 18:02:20', 'Hà Nội', '', 422750, '0362046866', 1, 'Nguyễn Văn A', 'momo', 6235),
(99, 1, '2023-08-29 19:37:06', 'Hà Nội', '', 1140000, '0362046866', 1, 'Nguyễn Văn A', 'momo', 7859),
(100, 1, '2023-08-30 08:54:17', 'Hà Nội', '', 14250, '0362046866', 1, 'Nguyễn Văn A', 'momo', 2624),
(101, 1, '2023-08-30 08:54:50', 'Hà Nội', '', 14250, '0362046866', 1, 'Nguyễn Văn A', 'vnpay', 2606),
(102, 1, '2023-09-08 21:47:52', 'Hà Nội', '', 108000, '0362046866', 1, 'Nguyễn Văn A', 'cod', 2927),
(103, 1, '2023-09-10 07:32:28', 'Hà Nội', '', 228000, '0362046866', 1, 'Nguyễn Văn A', 'bank', 2790),
(104, 1, '2023-09-10 07:35:35', 'Hà Nội', '', 380000, '0362046866', 1, 'Nguyễn Văn A', 'momo', 2823),
(105, 1, '2023-09-10 08:58:21', 'Hà Nội', '', 1078250, '0362046866', 1, 'Nguyễn Văn A', 'vnpay', 8373),
(106, 1, '2023-09-10 08:59:17', 'Hà Nội', '', 0, '0362046866', 2, 'Nguyễn Văn A', 'momo', 8404),
(107, 1, '2023-10-22 15:24:52', '294 LÄ©nh Nam HÃ  Ná»™i', '', 5085000, '0123456789', 1, 'Nguyá»…n VÄƒn A', 'cod', 5394),
(108, 1, '2023-10-22 15:32:05', 'HÃ  Ná»™i', '', 2061000, '0123456789', 1, 'Nguyá»…n VÄƒn A', 'cod', 5468),
(109, 1, '2023-10-22 15:32:14', 'HÃ  Ná»™i', '', 494000, '0123456789', 1, 'Nguyá»…n VÄƒn A', 'cod', 4676),
(110, 1, '2023-10-22 15:32:37', 'HÃ  Ná»™i', '', 150000, '0123456789', 1, 'Nguyá»…n VÄƒn A', 'cod', 5999),
(111, 1, '2023-10-22 15:32:49', 'HÃ  Ná»™i', '', 160000, '0123456789', 1, 'Nguyá»…n VÄƒn A', 'cod', 4544);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `ID_GioHang` int(11) NOT NULL,
  `ID_ThanhVien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `giohang`
--

INSERT INTO `giohang` (`ID_GioHang`, `ID_ThanhVien`) VALUES
(1, 1),
(4, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `momo`
--

CREATE TABLE `momo` (
  `ID_MoMo` int(11) NOT NULL,
  `PartnerCode` varchar(50) NOT NULL,
  `OrderId` int(11) NOT NULL,
  `Amount` varchar(50) NOT NULL,
  `OrderInfo` varchar(100) NOT NULL,
  `OrderType` varchar(50) NOT NULL,
  `TransId` int(11) NOT NULL,
  `payType` varchar(50) NOT NULL,
  `CodeOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `momo`
--

INSERT INTO `momo` (`ID_MoMo`, `PartnerCode`, `OrderId`, `Amount`, `OrderInfo`, `OrderType`, `TransId`, `payType`, `CodeOrder`) VALUES
(5, 'MOMOBKUN20180529', 1692868853, '31500', 'Thanh toán qua MoMo ATM', 'momo_wallet', 2147483647, 'napas', 2045),
(6, 'MOMOBKUN20180529', 1692882873, '342000', 'Thanh toán qua MoMo ATM', 'momo_wallet', 2147483647, 'napas', 7592),
(7, 'MOMOBKUN20180529', 1693055000, '47500', 'Thanh toán qua MoMo ATM', 'momo_wallet', 2147483647, 'napas', 3287),
(8, 'MOMOBKUN20180529', 1693232468, '171000', 'Thanh toán qua MoMo ATM', 'momo_wallet', 2147483647, 'napas', 5646),
(9, 'MOMOBKUN20180529', 1693275093, '152000', 'Thanh toán qua MoMo ATM', 'momo_wallet', 2147483647, 'napas', 7176),
(10, 'MOMOBKUN20180529', 1693306862, '422750', 'Thanh toán qua MoMo ATM', 'momo_wallet', 2147483647, 'napas', 6235),
(11, 'MOMOBKUN20180529', 1693312567, '1140000', 'Thanh toán qua MoMo ATM', 'momo_wallet', 2147483647, 'napas', 7859),
(12, 'MOMOBKUN20180529', 1693360388, '14250', 'Thanh toán qua MoMo ATM', 'momo_wallet', 2147483647, 'napas', 2624),
(13, 'MOMOBKUN20180529', 1694306029, '380000', 'Thanh toán qua MoMo ATM', 'momo_wallet', 2147483647, 'napas', 2823),
(14, 'MOMOBKUN20180529', 1694311095, '1078250', 'Thanh toán qua MoMo ATM', 'momo_wallet', 2147483647, 'napas', 8404);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `ID_NCC` int(11) NOT NULL,
  `TenNCC` varchar(50) NOT NULL,
  `MoTa` text NOT NULL,
  `Email` varchar(50) NOT NULL,
  `SoDienThoai` varchar(10) NOT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `Img` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhacungcap`
--

INSERT INTO `nhacungcap` (`ID_NCC`, `TenNCC`, `MoTa`, `Email`, `SoDienThoai`, `DiaChi`, `Img`) VALUES
(11, 'Blue Ocean', 'Blue Ocean lÃ  nhÃ  cung cáº¥p nguyÃªn liá»‡u lÃ m bÃ¡nh nÃ³i riÃªng vÃ  cÃ¡c sáº£n pháº©m dá»¥ng cá»¥, nguyÃªn váº­t liá»‡u cho ngÃ nh F&B nÃ³i chung. ÄÆ¡n vá»‹ nÃ y Ä‘Ã£ cÃ³ nhiá»u nÄƒm kinh nghiá»‡m trong ngÃ nh thá»±c pháº©m, lÃ  Ä‘á»‘i tÃ¡c tin cáº­y cá»§a cÃ¡c nhÃ  hÃ ng, khÃ¡ch sáº¡n cÃ³ tiáº¿ng. Blue Ocean sáº½ lÃ  nguá»“n cung uy tÃ­n cho doanh nghiá»‡p cá»§a báº¡n.', 'sales@blueoceanmart.com', '0906.434.6', '30/7 Tráº§n PhÃº â€“ ÄÃ  Náºµng', 'cc1.jpg'),
(13, 'Abby', 'Há»‡ thá»‘ng cá»­a hÃ ng Abby luÃ´n dá»“i dÃ o sáº£n pháº©m nguyÃªn phá»¥ liá»‡u lÃ m bÃ¡nh cho báº¡n lá»±a chá»n. ÄÆ¡n vá»‹ nÃ y Ä‘Ã£ cÃ³ máº·t táº¡i ÄÃ  Náºµng vá»›i 3 cÆ¡ sá»Ÿ uy tÃ­n. Báº¥t ká»ƒ báº¡n lÃ  ngÆ°á»i yÃªu bÃ¡nh hay lÃ  doanh nghiá»‡p, thÃ¬ cÃ¡c máº·t hÃ ng táº¡i Abby hoÃ n toÃ n lÃ  lá»±a chá»n Ä‘Ã¡ng tin cáº­y.', 'info@abby.vn', '093 463 97', '197 HÃ  Huy Táº­p, ÄÃ  Náºµng | 314 HoÃ ng Diá»‡u, Háº£i ChÃ¢u, ÄÃ  Náºµng', 'cc3.jpg'),
(14, 'Beemart', 'Vá»›i Ä‘Ãºng nghÄ©a \"Tháº¿ giá»›i Ä‘á»“ lÃ m bÃ¡nh\" ,Beemart lÃ  nÆ¡i cung cáº¥p hÆ¡n 1000 máº·t hÃ ng phá»¥c vá»¥ cho riÃªng lÄ©nh vá»±c lÃ m bÃ¡nh giÃºp nhá»¯ng bÃ  ná»™i trá»£ cÃ³ thá»ƒ yÃªn tÃ¢m mua sáº¯m vÃ  chá»n lá»±a cho mÃ¬nh nhá»¯ng máº·t hÃ ng phÃ¹ há»£p nháº¥t. BÃªn cáº¡nh Ä‘Ã³ siÃªu thá»‹ cÃ²n cung cáº¥p cho báº¡n cÃ¡c loáº¡i hÃ ng liÃªn quan Ä‘áº¿n gia Ä‘Ã¬nh, nhÃ  báº¿p Ä‘á»ƒ báº¡n cÃ³ thÃªm nhiá»u lá»±a chá»n. ', 'https://www.beemart.vn', '1900 636 5', 'Sá»‘ 5 ngÃµ 26 Nguyá»…n KhÃ¡nh ToÃ n, Q. Cáº§u Giáº¥y, HN', 'cc4.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quanly`
--

CREATE TABLE `quanly` (
  `ID_QuanLy` int(11) NOT NULL,
  `TenDangNhap` varchar(50) NOT NULL,
  `MatKhau` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `quanly`
--

INSERT INTO `quanly` (`ID_QuanLy`, `TenDangNhap`, `MatKhau`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `ID_SanPham` int(11) NOT NULL,
  `ID_DanhMuc` int(11) NOT NULL,
  `ID_NhaCungCap` int(11) NOT NULL,
  `TenSanPham` varchar(30) NOT NULL,
  `MoTa` text NOT NULL,
  `GiaBan` float NOT NULL,
  `SoLuong` float NOT NULL,
  `Img` varchar(20) NOT NULL,
  `GiamGia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`ID_SanPham`, `ID_DanhMuc`, `ID_NhaCungCap`, `TenSanPham`, `MoTa`, `GiaBan`, `SoLuong`, `Img`, `GiamGia`) VALUES
(3016, 13, 14, 'CÃ¢n Ä‘iá»‡n tá»­ Unopan UN001', 'ThÆ°Æ¡ng hiá»‡u: Unopan\r\nXuáº¥t xá»©: Malaysia\r\nKÃ­ch thÆ°á»›c: 180 x 140 x 19mm \r\nCháº¥t liá»‡u: MÃ n hÃ¬nh LCD, nhá»±a cao cáº¥p\r\nMá»©c cÃ¢n nhá» nháº¥t: 1g\r\nMá»©c cÃ¢n lá»›n nháº¥t: 5kg\r\nBáº£o hÃ nh: 6 thÃ¡ng', 305000, 10, 'can1.jpg', 5),
(3017, 13, 14, 'CÃ¢n Ä‘iá»‡n tá»­ Electronic K', 'KÃ­ch thÆ°á»›c cÃ¢n : 16,5 x12,5 x3,3 cm\r\nCÃ¡c thÃ´ng sá»‘ Ä‘o cÆ¡ báº£n: gram, oz, lb, tl\r\nÄiá»‡n Ã¡p: 2,4 V - 3,5 V\r\n\r\nBáº£o hÃ nh 3 thÃ¡ng\r\nKÃ­ch thÆ°á»›c báº£ng Ä‘á»“ng há»“ hiá»‡n sá»‘ : 11x11cm \r\nTrá»ng lÆ°á»£ng: 230g (cáº£ há»™p)', 80000, 8, 'can2.jpg', 0),
(3018, 13, 14, 'CÃ¢n Ä‘iá»‡n tá»­ Tiross TS817', 'ThÆ°Æ¡ng hiá»‡u: Ba Lan\r\nCháº¥t liá»‡u vá»: Inox.\r\nThÃ¢n mÃ¡y vÃ  Ä‘Ä©a cÃ¢n: lÃ m báº±ng thÃ©p khÃ´ng gá»‰\r\nMÃ n hÃ¬nh hiá»ƒn thá»‹: LCD 13 mm\r\nPháº¡m vi Ä‘o: 2g - 5.000g\r\nSai sá»‘: +/-2g. \r\nNguá»“n Ä‘iá»‡n: TiÃªu thá»¥ nguá»“n tháº¥p, sá»­ dá»¥ng nguá»“n pin 1x19V\r\nXuáº¥t xá»©: Trung Quá»‘c\r\nBáº£o hÃ nh: 6 thÃ¡ng', 700000, 10, 'can3.jpg', 10),
(3019, 13, 13, 'CÃ¢n Ä‘iá»‡n tá»­ Unitech SU-3', 'ThÆ°Æ¡ng hiá»‡u: Unitech\r\nXuáº¥t xá»©: Viá»‡t Nam\r\nMá»©c cÃ¢n: 1-5000g; Ä‘á»™ chia: 1g\r\nKÃ­ch thÆ°á»›c: 245*165*15mm\r\nNguá»“n pin: 2 viÃªn AAA\r\nCháº¥t liá»‡u: nhá»±a + kÃ­nh\r\nÄÆ¡n vá»‹ Ä‘o: g, kg, ml, lb:oz, fl oz\r\nMÃ u sáº¯c: Äen\r\nCÃ´ng dá»¥ng: cÃ¢n cÃ¡c thá»±c pháº©m, nguyÃªn liá»‡u trong lÃ m bÃ¡nh, náº¥u Äƒn\r\nBáº£o hÃ nh: 6 thÃ¡ng', 290000, 10, 'can4.jpg', 5),
(3020, 13, 11, 'MÃ¡y Ä‘Ã¡nh trá»©ng Tiross - T', 'Äiá»‡n Ã¡p 220-240V\r\nTáº§n sá»‘ 50Hz\r\nCÃ´ng suáº¥t 300W\r\nKÃ­ch thÆ°á»›c: 17.5 x 11 x 23 cm\r\nMá»©c tá»‘c Ä‘á»™: 5 tá»‘c Ä‘á»™\r\nTá»‘c Ä‘á»™ Turbo siÃªu khá»e\r\nSá»‘ que nhá»“i vÃ  trá»™n : 4\r\nBáº£o hÃ nh 12 thÃ¡ng\r\nChá»©c nÄƒng: Ä‘Ã¡ng trá»©ng, trá»™n thá»±c pháº©m, nhÃ o bá»™t.', 650000, 10, 'dt1.jpg', 10),
(3021, 13, 13, 'MÃ¡y Ä‘Ã¡nh trá»©ng Scarlett H', 'ThÆ°Æ¡ng hiá»‡u: Scarlett\r\nXuáº¥t xá»©: Anh\r\nCháº¥t liá»‡u: Vá» nhá»±a, que inox\r\nCÃ´ng suáº¥t: Cá»±c tiá»ƒu 100W , Cá»±c Äáº¡i lÃªn tá»›i 180W\r\nÄiá»‡n Ã¡p: 220V~240V.\r\nMÃ u sáº¯c: Tráº¯ng\r\nCÃ´ng dá»¥ng: 7 Cháº¿ Ä‘á»™ hoáº¡t Ä‘á»™ng: Ä‘Ã¡nh trá»©ng, nhÃ o bá»™t,...\r\nBáº£o hÃ nh: 3 thÃ¡ng', 150000, 9, 'dt2.jpg', 0),
(3022, 14, 13, 'CÃ¢y cÃ¡n bá»™t gá»— nÃ¢u', 'CÃ¢y cÃ¡n bá»™t gá»— nÃ¢u trá»¥c xoay 45cm\r\nCháº¥t liá»‡u: 100% gá»— tá»± nhiÃªn\r\nKÃ­ch thÆ°á»›c: Chiá»u dÃ i 45cm, Ä‘Æ°á»ng kÃ­nh 4cm\r\nSá»­ dá»¥ng: Ä‘á»ƒ cÃ¡n bá»™t lÃ m pizza, bÃ¡nh má»³, bÃ¡nh bao,â€¦', 90000, 10, 'canbot1.jpg', 0),
(3023, 14, 13, 'CÃ¢y cÃ¡n bá»™t gá»— nÃ¢u', 'CÃ¢y cÃ¡n bá»™t gá»— nÃ¢u 33cm\r\nCháº¥t liá»‡u: 100% gá»— tá»± nhiÃªn\r\nKÃ­ch thÆ°á»›c: Chiá»u dÃ i 33cm, Ä‘Æ°á»ng kÃ­nh 2,8cm\r\nSá»­ dá»¥ng: Ä‘á»ƒ cÃ¡n bá»™t lÃ m pizza, bÃ¡nh má»³, bÃ¡nh bao,â€¦', 40000, 10, 'canbot2.jpg', 0),
(3024, 14, 14, 'CÃ¢y lÄƒn bá»™t silicon', 'CÃ¢y lÄƒn bá»™t silicon 30cm\r\nXuáº¥t xá»©: Viá»‡t Nam\r\nCháº¥t liá»‡u: gá»—, silicon cao cáº¥p, chá»‘ng dÃ­nh bá»™t.\r\nKÃ­ch thÆ°á»›c:  chiá»u dÃ i 30cm x Ä‘Æ°á»ng kÃ­nh 4.0cm\r\nSá»­ dá»¥ng Ä‘á»ƒ lÃ m pizza, bÃ¡nh má»³, bÃ¡nh bao,â€¦', 65000, 10, 'canbot3.jpg', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhvien`
--

CREATE TABLE `thanhvien` (
  `ID_ThanhVien` int(11) NOT NULL,
  `TenDangNhap` varchar(50) NOT NULL,
  `MatKhau` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `HoVaTen` varchar(50) NOT NULL,
  `DiaChi` varchar(50) NOT NULL,
  `SoDienThoai` varchar(12) NOT NULL,
  `NgayDangKi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `thanhvien`
--

INSERT INTO `thanhvien` (`ID_ThanhVien`, `TenDangNhap`, `MatKhau`, `Email`, `HoVaTen`, `DiaChi`, `SoDienThoai`, `NgayDangKi`) VALUES
(1, 'a', '202cb962ac59075b964b07152d234b70', 'nva@gmail.com', 'Nguyá»…n VÄƒn A', 'HÃ  Ná»™i', '0123456789', '2023-07-18'),
(4, 'b', '202cb962ac59075b964b07152d234b70', 'nvb@gmail.com', 'Nguyá»…n VÄƒn B', 'HÃ  Ná»™i', '0123456789', '2023-08-29'),
(5, 'Dung Phan', '202cb962ac59075b964b07152d234b70', 'dunghay9@gmail.com', 'Phan Tiáº¿n DÅ©ng', 'Sá»‘ 7 ngÃµ 294 ngÃ¡ch 49 LÄ©nh Nam', '0382903298', '2023-10-22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vnpay`
--

CREATE TABLE `vnpay` (
  `Amount` varchar(50) NOT NULL,
  `BankCode` varchar(50) NOT NULL,
  `BankTranNo` varchar(50) NOT NULL,
  `CardType` varchar(50) NOT NULL,
  `OrderInfo` varchar(100) NOT NULL,
  `PayDate` varchar(50) NOT NULL,
  `TmnCode` varchar(50) NOT NULL,
  `TransactionNo` varchar(50) NOT NULL,
  `ID_VNPay` int(11) NOT NULL,
  `CodeOrder` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `vnpay`
--

INSERT INTO `vnpay` (`Amount`, `BankCode`, `BankTranNo`, `CardType`, `OrderInfo`, `PayDate`, `TmnCode`, `TransactionNo`, `ID_VNPay`, `CodeOrder`) VALUES
('20910000', 'NCB', 'VNP14100978', 'ATM', 'Thanh toan GD:5970', '20230824202533', '6448J9KM', '14100978', 10, 5970),
('4750000', 'NCB', 'VNP14102267', 'ATM', 'Thanh toan GD:4409', '20230827113508', '6448J9KM', '14102267', 11, 4409),
('1425000', 'NCB', 'VNP14104554', 'ATM', 'Thanh toan GD:2606', '20230830085601', '6448J9KM', '14104554', 12, 2606);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`ID_BinhLuan`),
  ADD KEY `ID_ThanhVien` (`ID_ThanhVien`),
  ADD KEY `ID_SanPham` (`ID_SanPham`);

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`ID_DonHang`,`ID_SanPham`),
  ADD KEY `ID_DonHang` (`ID_DonHang`),
  ADD KEY `ID_SanPham` (`ID_SanPham`);

--
-- Chỉ mục cho bảng `chitietgiohang`
--
ALTER TABLE `chitietgiohang`
  ADD PRIMARY KEY (`ID_GioHang`,`ID_SanPham`),
  ADD KEY `ID_GioHang` (`ID_GioHang`),
  ADD KEY `ID_SanPham` (`ID_SanPham`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`ID_DanhMuc`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`ID_DonHang`),
  ADD KEY `ID_ThanhVien` (`ID_ThanhVien`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`ID_GioHang`),
  ADD KEY `ID_ThanhVien` (`ID_ThanhVien`);

--
-- Chỉ mục cho bảng `momo`
--
ALTER TABLE `momo`
  ADD PRIMARY KEY (`ID_MoMo`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`ID_NCC`);

--
-- Chỉ mục cho bảng `quanly`
--
ALTER TABLE `quanly`
  ADD PRIMARY KEY (`ID_QuanLy`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`ID_SanPham`),
  ADD KEY `ID_NhaCungCap` (`ID_NhaCungCap`),
  ADD KEY `ID_DanhMuc` (`ID_DanhMuc`);

--
-- Chỉ mục cho bảng `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD PRIMARY KEY (`ID_ThanhVien`);

--
-- Chỉ mục cho bảng `vnpay`
--
ALTER TABLE `vnpay`
  ADD PRIMARY KEY (`ID_VNPay`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `ID_BinhLuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `ID_DanhMuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `ID_DonHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `ID_GioHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `momo`
--
ALTER TABLE `momo`
  MODIFY `ID_MoMo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `ID_NCC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `quanly`
--
ALTER TABLE `quanly`
  MODIFY `ID_QuanLy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `ID_SanPham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3029;

--
-- AUTO_INCREMENT cho bảng `thanhvien`
--
ALTER TABLE `thanhvien`
  MODIFY `ID_ThanhVien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `vnpay`
--
ALTER TABLE `vnpay`
  MODIFY `ID_VNPay` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`ID_ThanhVien`) REFERENCES `thanhvien` (`ID_ThanhVien`),
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`ID_SanPham`) REFERENCES `sanpham` (`ID_SanPham`);

--
-- Các ràng buộc cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `chitietdonhang_ibfk_1` FOREIGN KEY (`ID_DonHang`) REFERENCES `donhang` (`ID_DonHang`),
  ADD CONSTRAINT `chitietdonhang_ibfk_2` FOREIGN KEY (`ID_SanPham`) REFERENCES `sanpham` (`ID_SanPham`);

--
-- Các ràng buộc cho bảng `chitietgiohang`
--
ALTER TABLE `chitietgiohang`
  ADD CONSTRAINT `chitietgiohang_ibfk_1` FOREIGN KEY (`ID_GioHang`) REFERENCES `giohang` (`ID_GioHang`),
  ADD CONSTRAINT `chitietgiohang_ibfk_2` FOREIGN KEY (`ID_SanPham`) REFERENCES `sanpham` (`ID_SanPham`);

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`ID_ThanhVien`) REFERENCES `thanhvien` (`ID_ThanhVien`);

--
-- Các ràng buộc cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `giohang_ibfk_1` FOREIGN KEY (`ID_ThanhVien`) REFERENCES `thanhvien` (`ID_ThanhVien`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`ID_NhaCungCap`) REFERENCES `nhacungcap` (`ID_NCC`),
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`ID_DanhMuc`) REFERENCES `danhmuc` (`ID_DanhMuc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
