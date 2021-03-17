-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 24, 2020 lúc 08:10 PM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web1shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `categoryId` int(11) NOT NULL,
  `categoryName` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`categoryId`, `categoryName`) VALUES
(25, 'CÃ¢y thÃ´ng'),
(26, 'DÃ¢y Ä‘Ã¨n'),
(27, 'Trang trÃ­'),
(30, 'CÃ´ng cá»¥');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `username` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `address` varchar(150) COLLATE utf8_vietnamese_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `permission` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`username`, `password`, `address`, `phone`, `email`, `permission`) VALUES
('admin', '202cb962ac59075b964b07152d234b70', 'Online', '1800', 'admin@navosi.com', 1),
('user', '202cb962ac59075b964b07152d234b70', '113/3', '0778171871', 'user123@gmail.com', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `productId` int(11) NOT NULL,
  `productName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `categoryId` int(11) NOT NULL,
  `productDes` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `productPrice` int(11) NOT NULL,
  `productType` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `productImg` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`productId`, `productName`, `categoryId`, `productDes`, `productPrice`, `productType`, `productImg`) VALUES
(9, 'ÄÃ¨n LED trang trÃ­ bÃ³ng trÃ²n mÃ u vÃ ng áº¥m khÃ´ng nháº¥p nhÃ¡y', 26, 'ÄÃ¨n nhÃ¡y trang trÃ­ dÃ nh cho cÃ¡c báº¡n Ä‘am mÃª Decor  - Chiá»u dÃ i: 3m vÃ  5m - Äáº§u cáº¯m usb - MÃ u sáº¯c: mÃ u vÃ ng áº¥m, khÃ´ng nhÃ¡y - Sá»­ dá»¥ng Ä‘iá»‡n 220v - DÃ¢y dáº«n báº±ng cháº¥t liá»‡u nhá»±a trong nÃªn ráº¥t cháº¯c cháº¯n. - Sá»­ dá»¥ng Ä‘á»ƒ trang trÃ­ cÃ¡c tiá»‡c trong vÃ  ngoÃ i trá»i. VÃ­ dá»¥ nhÆ° tiá»‡c sinh nháº­t, cÆ°á»›i há»i, Noel, táº¥t niÃªn, trung thu, táº¿t,... - NgoÃ i ra Ä‘Ã¢y lÃ  má»™t váº­t trang trÃ­ khÃ´ng thá»ƒ thiáº¿u cho cÃ¡c quÃ¡n cÃ  phÃª, nhÃ  hÃ ng, cÄƒn há»™, studio,... - Hoáº·c Ä‘Æ¡n giáº£n báº¡n cÃ³ thá»ƒ DÃ¹ng trang trÃ­ cho phÃ²ng khÃ¡ch, phÃ²ng ngá»§, hoáº·c cÃ¡c giÃ¡ sÃ¡ch, ká»‡ tá»§ gÆ°Æ¡ng, ban cÃ´ng Ä‘á»u Ä‘áº¹p nhÃ©.', 31000, 'CÃ¡i', 'c4674efc938f6c20795fd72d906d8f4d.jpg'),
(10, 'DÃ¢y Ä‘Ã¨n Led fairylight ,dÃ¢y Ä‘Ã¨n Ä‘om Ä‘Ã³m 3 mÃ©t dÃ¹ng pin', 26, 'DÃ¢y Ä‘Ã¨n led Ä‘om Ä‘Ã³m cá»§a shop lÃ  loáº¡i dÃ i 3m nhÃ© ( loáº¡i thÃ´ng thÆ°á»ng chá»‰ 2met thÃ´i) , cÃ¡c báº¡n thoáº£i mÃ¡i uá»‘n hÃ¬nh trang trÃ­ , cho vÃ o trong chai lá» , trang trÃ­ bÃ n tiá»‡c decor . DÃ¹ng pin  nÃªn ráº¥t an toÃ n , quáº¥n quanh ngÆ°á»i Ä‘á»ƒ chá»¥p áº£nh tá»± sÆ°á»›ng vÃ´ tÆ° nhÃ© .', 9000, 'CÃ¡i', '5aa6f6c5618f783fbca6aa0d46fa7fd3.jpg'),
(12, 'Cuá»™n Ä‘Ã¨n Led dÃ¢y dÃ¡n 5m Ä‘á»•i nhiá»u mÃ u (RGB) cÃ³ remote Ä‘iá»u khiá»ƒn', 26, 'Giá»›i thiá»‡u Cuá»™n Ä‘Ã¨n Led dÃ¢y dÃ¡n 5m Ä‘á»•i nhiá»u mÃ u (RGB) cÃ³ remote Ä‘iá»u khiá»ƒn - ÄÃ¨n led trang trÃ­ loáº¡i bÃ³ng 3528, 60 bÃ³ng/1 mÃ©t dÃ i. - KÃ­ch thÆ°á»›c: 8mmx5000mm/1 cuá»™n - Äiá»‡n Ã¡p hoáº¡t Ä‘á»™ng: 12V - 2 loáº¡i: dÃ¹ng trong nhÃ  + táº·ng kÃ¨m keo 2 máº·t, dÃ¹ng ngoÃ i trá»i cÃ³ máº·t sau lÃ  lá»›p bÄƒng dÃ­nh 2 máº·t, tiá»‡n lá»£i cho viá»‡c thi cÃ´ng. - CÃ³ cháº¿ Ä‘á»™ Ä‘á»•i mÃ u Ä‘a cÃ¡ch tá»« 1 mÃ u Ä‘Æ¡n, 2 cáº·p mÃ u phá»‘i cháº¡y Ä‘uá»•i nhau, 3 mÃ u cÃ¹ng phá»‘i há»£p ', 106590, 'Bá»™', '8d4a657eb4832d4d23a531726a8ed796.jpg'),
(13, 'Bá»™ Ä‘Ã¨n LED dÃ¢y dÃ¡n 5050 phá»§ keo silicon Ä‘Ã´Ì‰i 7 maÌ€u V-L-D-RGB (RGB)+Nguá»“n+Khiá»ƒn', 26, 'ÄÃ¨n led trang trÃ­ 5050 RGB, 60 bÃ³ng/1 mÃ©t dÃ i. KÃ­ch thÆ°á»›c: 8mmx5000mm/1 cuá»™n Äiá»‡n Ã¡p hoáº¡t Ä‘á»™ng: 12V 2 loáº¡i: DÃ¹ng trong nhÃ  + táº·ng kÃ¨m keo 2 máº·t, dÃ¹ng ngoÃ i trá»i cÃ³ lá»›p vá» nhá»±a Silicon báº£o vá»‡ chá»‘ng va Ä‘áº­p, chá»‘ng nÆ°á»›c. Máº·t sau lÃ  lá»›p bÄƒng dÃ­nh 2 máº·t, tiá»‡n lá»£i cho viá»‡c thi cÃ´ng.', 158900, 'Bá»™', 'd428f1b4cbcfcc8144b6c6aada025340.jpg'),
(14, '[DÃ¢y Cáº¯m 220V] 5m /10m Äiá»‡n ÄÃ¨n Fairy Light, Ä‘Ã¨n led dÃ¢y Ä‘á»“ng/ ÄÃ¨n led Ä‘om Ä‘Ã³m', 26, 'DÃ¢y gá»“m  cháº¿ Ä‘á»™ sÃ¡ng tÄ©nh + 3 cháº¿ Ä‘á»™ nhÃ¡y khÃ¡c nhau DÃ¢y Ä‘Ã¨n trang trÃ­ bÃ n tiá»‡c sinh nháº­t, GiÃ¡ng Sinh/ Noel, Táº¿t 2019 sáº½ lÃ m cho buá»•i tiá»‡c cá»§a báº¡n lung linh thÃªm ngÃ n láº§n, nháº¥t lÃ  cÃ¡c buá»•i tiá»‡c vá» Ä‘Ãªm,  cÃ³ thá»ƒ bÃ y dáº¡ng rÃ¨m backdrop, chÃ¢n bÃ n, hay bÃ y trÃªn bÃ n náº¿u nhÆ° bÃ i trÃ­ á»Ÿ khÃ´ng gian thiáº¿u sÃ¡ng. MÃ u sáº¯c: VÃ ng náº¯ng / Nhiá»u  mÃ u. BÃ³ng led cháº¡y Ä‘iá»‡n cá»±c tiáº¿t kiá»‡m, an toÃ n. NgÃ¢m Ä‘Æ°á»£c dÆ°á»›i nÆ°á»›c', 79200, 'DÃ¢y', 'de226e51a574230184ce8cc96a192979.jpg'),
(15, 'ÄÃ¨n led dÃ¢y Ä‘Ã´i 2835 5M loáº¡i tá»‘t ( mÃ u tráº¯ng, vÃ ng, há»“ng, xanh dÆ°Æ¡ng, xanh lÃ¡ )', 26, 'ÄÃ¨n led dÃ¢y Ä‘Ã´i 2835 5M loáº¡i tá»‘t. Chip led: SMD 2835. Máº­t Ä‘á»™: 120 chip / 1m. Äiá»‡n Ã¡p: 220V. Chiá»u dÃ i cuá»™n: 5m. MÃ u: tráº¯ng,vÃ ng,há»“ng,lÃ¡,xanh dÆ°Æ¡ng. Cáº¥u táº¡o: chip led trÃªn báº£n máº¡ch má»m, bao phá»§ ngoÃ i báº±ng lá»›p plastic má»m, trong suáº¥t, cháº¯c cháº¯n giÃºp dÃ¢y cÃ³ Ä‘á»™ bá»n cao, cÃ³ thá»ƒ uá»‘n cong, co kÃ©o dá»… dÃ ng tiá»‡n dá»¥ng.Sá»­ dá»¥ng kÃ¨m: Äáº§u cáº¯m náº¯n dÃ²ng xoay chiá»u sang dÃ²ng 1 chiá»u, Ä‘iá»‡n Ã¡p 220V', 90000, 'Cuá»™n', '16cd86633a6237153efeed28cf097514.jpg'),
(16, 'DÃ¢y Ä‘Ã¨n led 7.5m 50 bÃ³ng Ä‘Ã¨n Ä‘om Ä‘Ã³m khÃ´ng chá»›p nhÃ¡y trang trÃ­ tiá»‡c lá»… táº¿t noel', 26, 'Sáº£n pháº©m gá»“m: 1 dÃ¢y Ä‘Ã¨n led dÃ i 7.5 mÃ©t, 50 bÃ³ng Ä‘Ã¨n led (2*0.5cm).  Ãnh sÃ¡ng Ä‘Ã¨n vÃ ng náº¯ng, khÃ´ng chá»›p nhÃ¡y.   Nguá»“n Ä‘iá»‡n: 12V-240V. á»ž ViÃªt Nam thÃ¬ cá»© cáº¯m dÃ¢y vÃ o nguá»“n Ä‘iá»‡n 220V lÃ  Ä‘Ã¨n sÃ¡ng (khÃ´ng cÃ³ cÃ´ng táº¯t báº­t/táº¯t nha)  PhÃ­ch cáº¯m chá»“ng nhiá»u chuÃ´i cáº¯m Ä‘iá»‡n lÃªn vá»›i nhau sá»­ dá»¥ng 1 á»• Ä‘iá»‡n duy nháº¥t lÃ  sÃ¡ng háº¿t táº¥t cáº£ dÃ¢y Ä‘Ã¨n.  Chá»‘ng nÆ°á»›c 100% nÃªn giÄƒng ngoÃ i trá»i Ä‘Æ°á»£c.(Giá»¯ phÃ­ch cáº¯m Ä‘iá»‡n khÃ´ng vÃ o nÆ°á»›c)  BÃ³ng Ä‘Ã¨n tuá»•i thá» : 20.000h  CÃ´ng suáº¥t : 1.8w Ä‘áº¿n 4,8w cho 1 bá»™ dÃ¢y Ä‘Ã¨n.', 25000, 'DÃ¢y', 'ad2bef4cf6be7d5ae8f2b73a1ebce366.jpg'),
(17, '(XÃ i pin AA) ÄÃ¨n led dÃ¢y trang trÃ­ tiá»‡c 3m 20 bÃ³ng Ä‘Ã¨n trÃ²n cherry ball', 26, 'Äáº£m báº£o giao hÃ ng loáº¡i 1. BÃ³ng Ä‘Ã¨n led khÃ´ng toáº£ nhiá»‡t, khÃ´ng Ä‘á»©t bÃ³ng. Cháº¥p nháº­n cho khÃ¡ch Tráº£ hÃ ng/ HoÃ n tiá»n theo chÃ­nh sÃ¡ch cá»§a Shopee.  DÃ¢y Ä‘Ã¨n led dÃ i 3 mÃ©t, 20 bÃ³ng Ä‘Ã¨n led hÃ¬nh trÃ²n cherry ball 2cm.  XÃ i 2pin AA (xÃ i Ä‘Æ°á»£c 100 giá» háº¿t pin mua thay)  Ãnh sÃ¡ng vÃ ng náº¯ng . CÃ³ cÃ´ng táº¯c báº­t/táº¯t Ä‘Ã¨n, 1 cháº¿ Ä‘á»™ khÃ´ng chá»›p nhÃ¡y.   Cháº¿ Ä‘á»™ chá»‘ng nÆ°á»›c an toÃ n khi sá»­ dá»¥ng ngoÃ i trá»i. ', 45000, 'Bá»™', '35b6a78ebb11a22c45cda1ae7201e729.jpg'),
(18, '  Chia sáº»:  ÄÃ£ thÃ­ch (220) DÃ¢y Ä‘Ã¨n trang trÃ­ Ä‘om Ä‘Ã³m, fairy light tráº¯ng, vÃ ng, nhiá»u mÃ u cháº¡y pin AA decor nhÃ  cá»­a, phÃ²ng ngá»§, giÃ¡ng sinh há»™p quÃ ', 26, 'Kiá»ƒu Ä‘Ã¨n: LED Sáº£n pháº©m cÃ³ thá»ƒ sá»­ dá»¥ng trong nhÃ  hoáº·c ngoÃ i trá»i á»¨ng dá»¥ng: Ä‘a nÄƒng, dÃ¹ng Ä‘á»ƒ trang trÃ­ táº¡i cÃ¡c bá»¯a tiá»‡c, tiá»‡c cÆ°á»›i, nÄƒm má»›i, trang trÃ­ sinh nháº­t... Máº«u sáº£n pháº©m: Ä‘Ã¨n LED  Sá»‘ lÆ°á»£ng bÃ³ng Ä‘Ã¨n: 10-100 chiáº¿c/dÃ¢y', 3900, 'DÃ¢y', 'e67bc1baaf20d094fe23e3b72e4cfe6a.jpg'),
(19, 'DÃ¢y Ä‘Ã¨n bÃ´ng tuyáº¿t 10m 100 bÃ³ng cáº¯m Ä‘iá»‡n', 26, '- DÃ¢y Ä‘Ã¨n nhÃ¡y led dÃ¹ng Ä‘á»ƒ trang trÃ­ noel, táº¿t, ná»™i ngoáº¡i tháº¥t nhÃ  cá»­a, quÃ¡n cafe, quÃ¡n karaoke, quÃ¡n bar, khÃ¡ch sáº¡n, nhÃ  hÃ ng, cá»­a hÃ ng, shop, siÃªu thá»‹, trung tÃ¢m thÆ°Æ¡ng máº¡i,... - DÃ¢y 10m-100 Ä‘Ã¨n - KÃ­ch thÆ°á»›c bÃ³ng: 3,3cm; 4,4cm - ÄÃ¨n Cáº®M ÄIá»†N, cÃ³ cÃ´ng táº¯c Ä‘iá»u chá»‰nh nhiá»u cháº¿ Ä‘á»™ nhÃ¡y khÃ¡c nhau  - MÃ u sáº¯c: Tráº¯ng, VÃ ng, Nhiá»u mÃ u - CÃ³ Ä‘uÃ´i ná»‘i 2 dÃ¢y Ä‘Ã¨n thÃ nh 1 dÃ¢y', 89100, 'DÃ¢y', 'bf31ebb5306097e4173dfebb347ef612.jpg'),
(20, 'CÃ¢y ThÃ´ng Noel NhÃ¢n Táº¡o Dá»… ThÆ°Æ¡ng DÃ¹ng Äá»ƒ Trang TrÃ­', 25, 'Chiá»u cao: 60cm   Sá»‘ lÆ°á»£ng: 1   Cháº¥t liá»‡u: PVC   MÃ u sáº¯c: Xanh lÃ¡ cÃ¢y   GÃ³i hÃ ng bao gá»“m: 1 * CÃ¢y thÃ´ng Noel loáº¡i nhá».   KÃ­ch thÆ°á»›c - CÃ¢y thÃ´ng Noel cao khoáº£ng 24 inch / 60cm, cÃ³ 50 cÃ nh. PhÃ¹ há»£p cho má»i nÆ¡i, cÃ¢y thÃ´ng Noel lÃ  má»™t phá»¥ kiá»‡n trang trÃ­ báº¯t máº¯t cho báº¥t ká»³ cÄƒn phÃ²ng nÃ o trong nhá»¯ng ngÃ y lá»….   Sáº£n pháº©m nÃ y Ä‘Æ°á»£c sá»­ dá»¥ng nhÆ° má»™t phá»¥ kiá»‡n trang trÃ­ trÃªn bÃ n hoáº·c nhÆ° trong phÃ²ng, phÃ¹ há»£p cho nhÃ , vÄƒn phÃ²ng, v.v.', 51900, 'CÃ¢y', '473d3de0b09296e632c948cb8b90ff0d.jpg'),
(21, 'GiÃ¡ sá»‘c cÃ¢y thÃ´ng Noel cao 2MÃ©t1 vÃ  2MÃ©t4 táº·ng kÃ¨m kim tuyáº¿n vÃ  ngÃ´i sao', 25, 'KhÃ´ng khÃ­ Noel Ä‘ang Ä‘áº¿n gáº§n. Báº¡n Ä‘Ã£ lÃ m gÃ¬ Ä‘á»ƒ Ä‘Ã³n chÃ o má»™t trong nhá»¯ng ngÃ y lá»… lá»›n nháº¥t trong nÄƒm? HÃ£y báº¯t tay vÃ o', 559000, 'CÃ¢y', '03b82024435cc4198b0da5a6d1e68e8e.jpg'),
(22, 'cÃ¢y thÃ´ng Noel cao 1m5 táº·ng kÃ¨m 3 sá»£i dÃ¢y kim tuyáº¿n vÃ  1 ngÃ´i sao', 25, 'cÃ¢y thÃ´ng Noel cao 1m5 táº·ng kÃ¨m 3 sá»£i dÃ¢y kim tuyáº¿n vÃ  1 ngÃ´i sao KhÃ´ng khÃ­ Noel Ä‘ang Ä‘áº¿n gáº§n. Báº¡n Ä‘Ã£ lÃ m gÃ¬ Ä‘á»ƒ Ä‘Ã³n chÃ o má»™t trong nhá»¯ng ngÃ y lá»… lá»›n nháº¥t trong nÄƒm? HÃ£y báº¯t tay vÃ o trang trÃ­ phÃ²ng khÃ¡ch hay sáº£nh vÄƒn phÃ²ng tháº­t trang hoÃ ng vÃ  lá»™ng láº«y vá»›i nhá»¯ng Ä‘á»“ váº­t trang trÃ­ Noel sinh Ä‘á»™ng nhÆ° bÃ´ng tuyáº¿t, Ã´ng giÃ  Noel, cÃ¢y thÃ´ng Noel hay nhá»¯ng chiáº¿c chuÃ´ng xinh xáº¯n.', 309000, 'CÃ¢y', '1ef477a9a81810895a9e89be59ee53a1.jpg'),
(23, 'Há»™p bÃ³ng treo trang trÃ­ cÃ¢y thÃ´ng Noel chá»‘ng vá»¡ dÃ nh cho GiÃ¡ng Sinh/ tiá»‡c cÆ°á»›i/ tiá»‡c tÃ¹ng', 27, ' Quáº£ bÃ³ng GiÃ¡ng Sinh báº±ng nhá»±a nÃ y sá»­ dá»¥ng cháº¥t liá»‡u nhá»±a. KhÃ´ng dá»… bá»‹ vá»¡ vÃ  khÃ´ng cáº§n lo láº¯ng vá» viá»‡c cÃ¡c máº£nh kÃ­nh lÃ m tá»•n thÆ°Æ¡ng bÃ n tay cá»§a báº¡n vÃ  tráº» nhá».', 40000, 'Há»™p', 'dde3ee97d72fc60707c9df8e43369ad7.jpg'),
(24, 'Bá»™ quáº£ chÃ¢u chá»‘ng vá»¡ treo trang trÃ­ cÃ¢y thÃ´ng Noel dá»‹p GiÃ¡ng Sinh/Ä‘Ã¡m cÆ°á»›i/tiá»‡c tÃ¹ng', 27, 'Quáº£ chÃ¢u GiÃ¡ng Sinh báº±ng nhá»±a nÃ y sá»­ dá»¥ng cháº¥t liá»‡u nhá»±a. KhÃ´ng dá»… bá»‹ vá»¡ vÃ  khÃ´ng cáº§n lo láº¯ng vá» viá»‡c cÃ¡c máº£nh kÃ­nh lÃ m bá»‹ thÆ°Æ¡ng tay cá»§a báº¡n vÃ  cá»§a tráº» nhá».', 41000, 'Há»™p', '74396fc046c36958ba41c324e61e0181.jpg'),
(25, 'RÃ¨m kim tuyáº¿n trang trÃ­ sinh nháº­t, thÃ´i nÃ´i, Ä‘áº§y thÃ¡ng cho bÃ© trai, bÃ© gÃ¡i, trang trÃ­ phÃ²ng cÆ°á»›i, phÃ²ng ngá»§ R01', 27, 'RÃˆM KIM TUYáº¾N trang trÃ­ sinh nháº­t , Ä‘Ã¡m cÆ°á»›i ,khai trÆ°Æ¡ng,...KÃ­ch thÆ°á»›c: Ngang 1m, dÃ i 2m.', 13900, 'CÃ¡i', '804d290c2f51fdbf4bc98411f0c99a86.jpg'),
(26, 'Sá»‰ 10 DÃ¢y kim tuyáº¿n 15k', 27, 'Nhá»¯ng chiáº¿c dÃ¢y kim khÃ´ng bao giá» lÃ  lá»—i thá»i , luÃ´n giÃºp Ä‘á»ƒ trang trÃ­ nhÃ  vá»«a , nÆ¡i lÃ m viá»‡c , cÃ´ng ty. Phá»¥ kiá»‡n Ä‘Æ°á»£c dÃ¹ng nhiá»u nháº¥t vÃ o dá»‹p giÃ¡ng sinh. Chá»‰ vá»›i 120k báº¡n Ä‘Ã£ sá»Ÿ Há»¯u 100 dÃ¢y kim tuyáº¿n máº·c sá»©c sÃ¡ng táº¡i. Má»—i dÃ¢y dÃ i hÆ¡n 1m.', 15000, 'Bá»™', '63fabaafc3622411b59b1f1065f059a0.jpg'),
(27, 'DÃ¢y kim tuyáº¿n dÃ i 2M cho trang trÃ­ cÃ¢y thÃ´ng Noel', 27, '100% brand new and high quality', 8000, 'DÃ¢y', 'f6cbc02cc3157c4ee1bfe07e40d0824d.jpg'),
(28, 'DÃ¡n GiÃ¡ng sinh NOEL Cá»­a sá»• trang trÃ­ L1016', 27, '*Decal trang trÃ­ cháº¥t liá»‡u PVC cÃ³ thá»ƒ lau chÃ¹i báº±ng nÆ°á»›c, cÃ´ng nghá»‡ in sáº¯c nÃ©t, cháº¥t lÆ°á»£ng cao, khÃ´ng bay mÃ u.  *Decal cÃ³ sáºµn keo á»Ÿ máº·t sau, chá»‰ cáº§n lá»™t ra vÃ  dÃ¡n lÃªn. *Decal dÃ¡n tá»«ng chi tiáº¿t rá»i, chá»‰ cáº§n tham kháº£o hÃ¬nh máº«u vÃ  dÃ¡n lÃªn theo Ä‘Ãºng vá»‹ trÃ­. CÃ³ thá»ƒ thay Ä‘á»•i vá»‹ trÃ­ hoáº·c cáº¯t bá» bá»›t chi tiáº¿t tÃ¹y vÃ o Ã½ thÃ­ch riÃªng má»—i ngÆ°á»i.  *Decal thÃ­ch há»£p dÃ¡n trÃªn tÆ°á»ng pháº³ng, tÆ°á»ng sÆ¡n, tÆ°á»ng vÃ´i pháº³ng, bá» máº·t kÃ­nh, vÃ¡n, tháº¡ch cao, gáº¡ch men, vÃ  bá» máº·t kÃ­nh.. khÃ´ng bá»n khi dÃ¡n trÃªn tÆ°á»ng nhÃ¡m, tÆ°á»ng bong trÃ³c, áº©m má»‘c.', 49500, 'CÃ¡i', '669b4eda70426e93233d0982bed62581.jpg'),
(29, '50 chiáº¿c cÃºt ná»‘i dÃ¢y Ä‘iá»‡n co nhiá»‡t, chá»‘ng tháº¥m nÆ°á»›c dÃ¹ng ngoÃ i trá»i', 30, 'Nhiá»‡t Ä‘á»™ hoáº¡t Ä‘á»™ng: -55 Â° C -125 Â° C  Báº¯t Ä‘áº§u co nhiá»‡t Ä‘á»™: 80 Â° C  Nhiá»‡t Ä‘á»™ co hoÃ n toÃ n: 130 Â° C  Cháº¥t liá»‡u vá»: PE Äá»“ng thau: Äá»“ng GB dÃ y 0.8 / 0.8 / 1.0mm KÃ­n nÆ°á»›c: IP67', 125000, 'Bá»™', 'ea86e23fc6294a85fa54769f23d89861.jpg'),
(30, 'Led Äá»¥c Ã˜5 ( GÃ³i 10 Con)', 30, 'Led Äá»¥c Ã˜5 ( GÃ³i 10 Con) - Cháº¥t lÆ°á»£ng cao Nguá»“n hoáº¡t Ä‘á»™ng: 3.3-5V ( nÃªn ná»‘i thÃªm trá»Ÿ ) Nhiá»u mÃ u sáº¯c tÃ¹y chá»n: tráº¯ng, Ä‘á», vÃ ng, xanh dÆ°Æ¡ng, xanh lÃ¡.', 3000, 'Bá»™', '3fa80f3a037db8898b2e9542cca5d3bd.jpg'),
(31, 'Thiáº¿c HÃ n SOLDER-Ok 0.8mm Cuá»™n To 100g', 30, 'I. Sáº£n pháº©m thiáº¿c hÃ n : SOLDER-Ok 0.8mm - cuá»™n to Thiáº¿c hÃ n lÃ  má»™t sáº£n pháº©m khÃ´ng thá»ƒ thiáº¿u trong cÃ¡c ngÃ nh Ä‘iá»‡n tá»­, thiáº¿c hÃ n Ä‘Ã³ng vai trÃ² quan trá»ng Ä‘á»ƒ táº¡o nÃªn má»™t máº¡ch Ä‘iá»‡n tá»­ hoáº¡t Ä‘á»™ng tá»‘t vÃ  cÃ³ váº» ngoÃ i chuyÃªn nghiá»‡p. NgoÃ i ra thiáº¿c hÃ n cÃ²n cÃ³ má»™t sá»‘ á»©ng dá»¥ng tuyá»‡t vá»i khÃ¡c,... Táº§m quan trá»ng cá»§a thiáº¿c hÃ n Ä‘Æ°á»£c nháº¯c Ä‘áº¿n ráº¥t nhiá»u nÃªn cÃ¡c yÃªu cáº§u kÄ© thuáº­t cÅ©ng ráº¥t kháº¯t khe. ChÃºng tÃ´i xin giá»›i thiá»‡u má»™t sáº£n pháº©m Ä‘Ã¡p á»©ng Ä‘Æ°á»£c háº§u háº¿t táº¥t cáº£ cÃ¡c yÃªu cáº§u mÃ  ngÆ°á»i dÃ¹ng mong muá»‘n.', 24250, 'Cuá»™n', '4e69cc6cdda5d6cbb09eb1a595cac359.jpg'),
(32, 'Má» hÃ n chÃ¬ Ä‘iá»u chá»‰nh nhiá»‡t Ä‘á»™ No.907 60W ( táº·ng 01 thiáº¿c sunchi vÃ  nhá»±a thÃ´ng há»™p )', 30, 'Má» hÃ n chÃ¬ Ä‘iá»u chá»‰nh nhiá»‡t Ä‘á»™ 907 - 60W, táº·ng 01 thiáº¿c sunchi + 01 há»™p nhá»±a thÃ´ng Má» hÃ n chÃ¬ Ä‘iá»u chá»‰nh nhiá»‡t Ä‘á»™ 907 60W lÃ  tay hÃ n chuyÃªn dÃ¹ng cho viá»‡c sá»­a chá»¯a cÃ¡c thiáº¿t bá»‹ Ä‘iá»‡n tá»­, thÃ­ch há»£p cho sá»­ dá»¥ng cÃ¡ nhÃ¢n.  Má» hÃ n 907 cÃ³ nÃºm Ä‘iá»u chá»‰nh nhiá»‡t Ä‘á»™ trÃªn thÃ¢n vá»›i khoáº£ng nhiá»‡t Ä‘á»™ tá»« 200 Ä‘áº¿n 450 Ä‘á»™ C. Má» hÃ n Ä‘iá»u chá»‰nh nhiá»‡t Ä‘á»™ cÃ³ cÃ´ng suáº¥t 60W, lÃªn nhiá»‡t nhanh, thiáº¿t káº¿ Ä‘áº¹p máº¯t, dá»… dÃ ng sá»­ dá»¥ng ...  Äá»ƒ cho ra cÃ¡c má»‘i hÃ n Ä‘áº¹p máº¯t, bÃ³ng ... quÃ½ khÃ¡ch nÃªn sá»­ dá»¥ng thiáº¿c hÃ n cháº¥t lÆ°á»£ng tá»‘t vÃ  bá»t biá»ƒn Ä‘á»ƒ vá»‡ sinh mÅ©i hÃ n, giÃºp tuá»•i thá» cá»§a má» hÃ n chÃ¬ 60W lÃ  tá»‘t nháº¥t.', 135800, 'CÃ¡i', 'ae578f19bf0f9ff55745d910e944f81e.jpg'),
(33, 'DÃ¢y Äiá»‡n ÄÃ´i 2x16 VCmd2x0.5 - Láº» 1 MÃ©t', 30, '[CADIVI] DÃ¢y Äiá»‡n ÄÃ´i 2x16 VCmd2x0.5 - Láº» 1 MÃ©t 1.  DÃ‚Y ÄIá»†N ÄÃ”I 2X0.5 MM2 CADIVI cÃ³ thiáº¿t diá»‡n 2X0.5 mm2, hoáº¡t Ä‘á»™ng á»Ÿ Ä‘iá»‡n Ã¡p 0.6/1KV, dÃ¢y dÃ i 100m/cuá»™n. 2.  Lá»›p vá» báº£o vá»‡ lÃ m báº±ng nhá»±a Polyevynly Clorua cÃ¡ch Ä‘iá»‡n, thanh dáº«n bÃªn trong sá»­ dá»¥ng cháº¥t liá»‡u Ä‘á»“ng cao cáº¥p. 3.  Sáº£n pháº©m Ä‘Ã¡p á»©ng yÃªu cáº§u tiÃªu chuáº©n quá»‘c táº¿ IEC, ASTM, UL, JIS, AS, BS, DIN... vÃ  Ä‘Æ°á»£c ngÆ°á»i tiÃªu dÃ¹ng cÃ´ng nháº­n lÃ  sáº£n pháº©m cháº¥t lÆ°á»£ng.', 2733, 'MÃ©t', '4f4a59ba1eaa345e773f0102108002d6.jpg'),
(34, 'BÄƒng DÃ­nh 1Kg ', 30, 'MÃ´ táº£ sáº£n pháº©m BÄƒng DÃ­nh: Trá»ng lÆ°á»£ng: 1 kg/ 1 cuá»™n  (6kg / 1 cÃ¢y = 6 cuá»™n)  LÃµi: 2,4-12 mm, dÃ i ~ 200 yard Khá»• rá»™ng: 47 mm Äá»™ dÃ y mÃ ng: 56 mic MÃ u: Tráº¯ng trong, VÃ ng chanh, Äá»¥c Khá»‘i lÆ°á»£ng sáº£n xuáº¥t 1 lÃ´ : 54 cuá»™n / 9 cÃ¢y.', 55000, 'Bá»™', 'ecfc67414dc7ea0c6e2692634c30acc6.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`categoryId`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`productId`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `categoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
