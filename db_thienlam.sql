-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 16, 2020 lúc 11:25 AM
-- Phiên bản máy phục vụ: 10.4.13-MariaDB
-- Phiên bản PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_thienlam`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bangdiem`
--

CREATE TABLE `bangdiem` (
  `STT` int(11) NOT NULL,
  `MaSV` varchar(100) DEFAULT NULL,
  `Ten` varchar(100) DEFAULT NULL,
  `MaGv` varchar(100) DEFAULT NULL,
  `MaNH` varchar(100) DEFAULT NULL,
  `HocKy` varchar(20) DEFAULT NULL,
  `1.1` int(11) DEFAULT NULL,
  `1.2` int(11) DEFAULT NULL,
  `1.3` int(11) DEFAULT NULL,
  `1.4` int(11) DEFAULT NULL,
  `Tongdiem1` int(11) DEFAULT NULL,
  `2.1` int(11) DEFAULT NULL,
  `2.2` int(11) DEFAULT NULL,
  `2.3` int(11) DEFAULT NULL,
  `Tongdiem2` int(11) DEFAULT NULL,
  `3.1` int(11) DEFAULT NULL,
  `3.2` int(11) DEFAULT NULL,
  `Tongdiem3` int(11) DEFAULT NULL,
  `4.1` int(11) DEFAULT NULL,
  `4.2` int(11) DEFAULT NULL,
  `4.3` int(11) DEFAULT NULL,
  `Tongdiem4` int(11) DEFAULT NULL,
  `5.1` int(11) DEFAULT NULL,
  `5.2` int(11) DEFAULT NULL,
  `5.3` int(11) DEFAULT NULL,
  `Tongdiem5` int(11) DEFAULT NULL,
  `Tongdiem6` int(11) DEFAULT NULL,
  `Tongketqua` int(11) DEFAULT NULL,
  `Xeploai` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `covanhoctap`
--

CREATE TABLE `covanhoctap` (
  `MaGv` varchar(100) NOT NULL,
  `TenGv` varchar(100) DEFAULT NULL,
  `MaNH` varchar(100) DEFAULT NULL,
  `MaLop` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lop`
--

CREATE TABLE `lop` (
  `MaLop` varchar(100) NOT NULL,
  `TenLop` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `lop`
--

INSERT INTO `lop` (`MaLop`, `TenLop`) VALUES
('CNTTK39A', 'cong nghe thong tin k39a'),
('CNTTK39B', 'cong nghe thong tin k39b'),
('CNTTK39C', 'cong nghe thong tin k39c');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `namhoc`
--

CREATE TABLE `namhoc` (
  `MaNH` varchar(100) NOT NULL,
  `Namhoc` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `namhoc`
--

INSERT INTO `namhoc` (`MaNH`, `Namhoc`) VALUES
('nam1', '2016-2017'),
('nam2', '2017-2018'),
('nam3', '2018-2019'),
('nam4', '2019-2020');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinhvien`
--

CREATE TABLE `sinhvien` (
  `MaSV` varchar(100) NOT NULL,
  `MaLop` varchar(100) NOT NULL,
  `Ten` varchar(100) NOT NULL,
  `Password` int(11) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Sdt` int(11) DEFAULT NULL,
  `Quyen` varchar(100) DEFAULT NULL,
  `ma_lop` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `sinhvien`
--

INSERT INTO `sinhvien` (`MaSV`, `MaLop`, `Ten`, `Password`, `Email`, `Sdt`, `Quyen`, `ma_lop`) VALUES
('09510500', 'CNTTK39C', 'Nguyen Van Thien', 12345, 'thien@gmail.com', 2147483647, 'sv', NULL),
('0988676122', 'CNTTK39A', 'Giao Vien', 12345, NULL, NULL, 'gv', NULL),
('3951050012', 'CNTTK39B', 'Nguyen Le Thai Phong', 12345, 'phong@gmail.com', 2147483647, 'sv', NULL),
('3951050043', 'CNTTK39A', 'Nguyen Le hong', 12, 'hong@gmail.com', 2147483647, 'sv', NULL),
('3951050913', 'CNTTK39C', 'Le Hong Phong', 147, 'le@gmail.com', 1213133112, 'lt', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_account`
--

CREATE TABLE `tbl_account` (
  `id` bigint(20) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_date` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `malop` varchar(255) DEFAULT NULL,
  `masv` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `birthday` datetime(6) DEFAULT NULL,
  `gender` bit(1) NOT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_content`
--

CREATE TABLE `tbl_content` (
  `id` bigint(20) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_date` datetime(6) DEFAULT NULL,
  `level` int(11) NOT NULL,
  `max_score` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `school_year_id` bigint(20) DEFAULT NULL,
  `semester_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_detail_result`
--

CREATE TABLE `tbl_detail_result` (
  `id` bigint(20) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_date` datetime(6) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `content_id` bigint(20) DEFAULT NULL,
  `result_id` bigint(20) DEFAULT NULL,
  `score` int(11) NOT NULL,
  `sub_content_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_result`
--

CREATE TABLE `tbl_result` (
  `id` bigint(20) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_date` datetime(6) DEFAULT NULL,
  `account_id` bigint(20) DEFAULT NULL,
  `approve` bit(1) NOT NULL,
  `detail_president_rate_id` int(11) DEFAULT NULL,
  `detail_study_rate_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_role`
--

CREATE TABLE `tbl_role` (
  `id` bigint(20) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_date` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbl_role`
--

INSERT INTO `tbl_role` (`id`, `created_by`, `created_date`, `modified_by`, `modified_date`, `description`, `role_name`) VALUES
(1, 'ADMIN', '2020-08-29 02:56:48.000000', 'ADMIN', '2020-08-29 02:56:48.000000', 'Role for student', 'Student'),
(2, 'ADMIN', '2020-08-29 02:56:48.000000', 'ADMIN', '2020-08-29 02:56:48.000000', 'Role for teacher', 'Teacher'),
(3, 'ADMIN', '2020-08-29 02:56:48.000000', 'ADMIN', '2020-08-29 02:56:48.000000', 'Role for president', 'President');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_school_year`
--

CREATE TABLE `tbl_school_year` (
  `id` bigint(20) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_date` datetime(6) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbl_school_year`
--

INSERT INTO `tbl_school_year` (`id`, `created_by`, `created_date`, `modified_by`, `modified_date`, `title`) VALUES
(1, 'ADMIN', '2020-08-29 02:56:48.000000', 'ADMIN', '2020-08-29 02:56:48.000000', '2019-2020'),
(2, 'ADMIN', '2020-08-29 02:56:48.000000', 'ADMIN', '2020-08-29 02:56:48.000000', '2020-2021'),
(3, 'ADMIN', '2020-08-29 02:56:48.000000', 'ADMIN', '2020-08-29 02:56:48.000000', '2021-2022');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_semester`
--

CREATE TABLE `tbl_semester` (
  `id` bigint(20) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_date` datetime(6) DEFAULT NULL,
  `school_year_id` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbl_semester`
--

INSERT INTO `tbl_semester` (`id`, `created_by`, `created_date`, `modified_by`, `modified_date`, `school_year_id`, `title`) VALUES
(1, 'ADMIN', '2020-08-29 02:56:49.000000', 'ADMIN', '2020-08-29 02:56:49.000000', 1, 'H?c k? 1'),
(2, 'ADMIN', '2020-08-29 02:56:49.000000', 'ADMIN', '2020-08-29 02:56:49.000000', 1, 'H?c k? 2'),
(3, 'ADMIN', '2020-08-29 02:56:49.000000', 'ADMIN', '2020-08-29 02:56:49.000000', 2, 'H?c k? 1'),
(4, 'ADMIN', '2020-08-29 02:56:49.000000', 'ADMIN', '2020-08-29 02:56:49.000000', 2, 'H?c k? 2'),
(5, 'ADMIN', '2020-08-29 02:56:49.000000', 'ADMIN', '2020-08-29 02:56:49.000000', 3, 'H?c k? 1'),
(6, 'ADMIN', '2020-08-29 02:56:49.000000', 'ADMIN', '2020-08-29 02:56:49.000000', 3, 'H?c k? 2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sub_content`
--

CREATE TABLE `tbl_sub_content` (
  `id` bigint(20) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_date` datetime(6) DEFAULT NULL,
  `content_id` bigint(20) DEFAULT NULL,
  `level` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bangdiem`
--
ALTER TABLE `bangdiem`
  ADD PRIMARY KEY (`STT`),
  ADD KEY `MaSV` (`MaSV`),
  ADD KEY `MaNH` (`MaNH`),
  ADD KEY `MaGv` (`MaGv`);

--
-- Chỉ mục cho bảng `covanhoctap`
--
ALTER TABLE `covanhoctap`
  ADD PRIMARY KEY (`MaGv`),
  ADD KEY `MaLop` (`MaLop`),
  ADD KEY `MaNH` (`MaNH`);

--
-- Chỉ mục cho bảng `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`MaLop`);

--
-- Chỉ mục cho bảng `namhoc`
--
ALTER TABLE `namhoc`
  ADD PRIMARY KEY (`MaNH`);

--
-- Chỉ mục cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`MaSV`),
  ADD KEY `MaLop` (`MaLop`);

--
-- Chỉ mục cho bảng `tbl_account`
--
ALTER TABLE `tbl_account`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_content`
--
ALTER TABLE `tbl_content`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_detail_result`
--
ALTER TABLE `tbl_detail_result`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_result`
--
ALTER TABLE `tbl_result`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_role`
--
ALTER TABLE `tbl_role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_school_year`
--
ALTER TABLE `tbl_school_year`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_semester`
--
ALTER TABLE `tbl_semester`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_sub_content`
--
ALTER TABLE `tbl_sub_content`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bangdiem`
--
ALTER TABLE `bangdiem`
  MODIFY `STT` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_account`
--
ALTER TABLE `tbl_account`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_content`
--
ALTER TABLE `tbl_content`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_detail_result`
--
ALTER TABLE `tbl_detail_result`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_result`
--
ALTER TABLE `tbl_result`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_role`
--
ALTER TABLE `tbl_role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_school_year`
--
ALTER TABLE `tbl_school_year`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_semester`
--
ALTER TABLE `tbl_semester`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_sub_content`
--
ALTER TABLE `tbl_sub_content`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bangdiem`
--
ALTER TABLE `bangdiem`
  ADD CONSTRAINT `bangdiem_ibfk_1` FOREIGN KEY (`MaSV`) REFERENCES `sinhvien` (`MaSV`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bangdiem_ibfk_2` FOREIGN KEY (`MaNH`) REFERENCES `namhoc` (`MaNH`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bangdiem_ibfk_3` FOREIGN KEY (`MaGv`) REFERENCES `covanhoctap` (`MaGv`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `covanhoctap`
--
ALTER TABLE `covanhoctap`
  ADD CONSTRAINT `covanhoctap_ibfk_1` FOREIGN KEY (`MaLop`) REFERENCES `lop` (`MaLop`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `covanhoctap_ibfk_2` FOREIGN KEY (`MaNH`) REFERENCES `namhoc` (`MaNH`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD CONSTRAINT `sinhvien_ibfk_1` FOREIGN KEY (`MaLop`) REFERENCES `lop` (`MaLop`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
