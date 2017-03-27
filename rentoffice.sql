-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2017 at 05:35 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rentoffice`
--

-- --------------------------------------------------------

--
-- Table structure for table `articel`
--

CREATE TABLE `articel` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8_unicode_ci NOT NULL,
  `cate_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `articel`
--

INSERT INTO `articel` (`id`, `title`, `slug`, `description`, `remember_token`, `created_at`, `updated_at`, `status`, `desc`, `cate_id`) VALUES
(1, 'báo mới', 'bao-moi', '<p>&aacute;dfasd</p>\r\n', NULL, '2017-03-12 08:40:35', '2017-03-13 01:16:53', '0', '<p>&aacute;dfasd</p>\r\n', '1'),
(2, 'hồng hoa', 'hong-hoa', '<p>&aacute;dfasdf</p>\r\n', NULL, '2017-03-12 09:46:33', '2017-03-13 01:17:15', '0', '<p>sfasf</p>\r\n', '1'),
(3, 'barca - inter', 'barca-intermilan', '<p>thể thao</p>\r\n', NULL, '2017-03-12 10:09:22', '2017-03-13 02:15:19', '0', '<p>thể thao</p>\r\n', '5'),
(4, 'zing new - Đạo diễn ''Kong'': Tôi đến Sài Gòn sống không vì một cô gái', '-ao-dien-kong-toi-den-sai-gon-song-khong-vi-mot-co-gai', '<p><strong>Đạo diễn Kong: Skull Island đang trả lời những c&acirc;u hỏi của độc giả Zing.vn</strong>&nbsp;S&aacute;ng 13/3, đạo diễn Jordan Vogt-Roberts c&oacute; mặt tại t&ograve;a soạn Zing.vn ở H&agrave; Nội để giao lưu c&ugrave;ng độc giả về si&ecirc;u phẩm Hollywood được quay ở Việt Nam.</p>\r\n\r\n<table align="center">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="Dao dien ''Kong'': Toi den Sai Gon song khong vi mot co gai hinh anh 1" src="http://znews-photo.d.za.zdn.vn/w660/Uploaded/pcwvovbb/2017_03_13/DSC_9794_1.jpg" style="height:1181px; width:1920px" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đạo diễn Jordan Vogt-Robert s tại t&ograve;a soạn&nbsp;<em>Zing.vn&nbsp;</em>H&agrave; Nội. Ảnh:&nbsp;<em>Ho&agrave;ng H&agrave;.</em></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><img alt="Giao lưu trực tuyến với đạo diễn phim Kong: Skull Island" src="http://znews-photo.d.za.zdn.vn/Uploaded/Interview/phim_kong.jpg" /></p>\r\n\r\n<ul>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Bạn&nbsp;KONG THE KING&nbsp;hỏi:</p>\r\n\r\n	<p>Từ l&uacute;c quay Kong cho đến khi phim ra mắt, t&aacute;c phẩm nhận được sự quan t&acirc;m khổng lồ từ giới truyền th&ocirc;ng v&agrave; người d&acirc;n Việt Nam. Anh c&oacute; bất ngờ v&agrave; kể lại điều n&agrave;y cho bạn b&egrave; đồng nghiệp tại Hollywood kh&ocirc;ng?</p>\r\n\r\n	<p>JORDAN VOGT-ROBERTS</p>\r\n\r\n	<p>T&ocirc;i kh&ocirc;ng qu&aacute; bất ngờ bởi&nbsp;<em>Kong: Skull Island&nbsp;</em>l&agrave; một phim bom tấn. T&ocirc;i bất ngờ nhiều hơn về sự đ&oacute;n tiếp thịnh t&igrave;nh của c&aacute;c bạn. Khi về Mỹ, t&ocirc;i lu&ocirc;n kể về chuyện quay phim ở Việt Nam mỗi khi c&oacute; dịp. Đội ngũ người Việt thực sự l&agrave; những cộng sự tuyệt vời. Giờ t&ocirc;i thường xuy&ecirc;n khuyến kh&iacute;ch bạn b&egrave; h&atilde;y đến quay phim, hoặc thậm ch&iacute; l&agrave; đi du lịch th&ocirc;i, để kh&aacute;m ph&aacute; vẻ đẹp của quốc gia c&aacute;c bạn..</p>\r\n\r\n	<table align="center">\r\n		<tbody>\r\n			<tr>\r\n				<td><img alt="Dao dien ''Kong'': Toi den Sai Gon song khong vi mot co gai hinh anh 2" src="http://znews-photo.d.za.zdn.vn/w660/Uploaded/ymnuc/2017_03_13/TMK_1013_zing.jpg" style="height:1920px; width:1359px" /></td>\r\n			</tr>\r\n			<tr>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n	<li>\r\n	<p>Bạn&nbsp;NGUY&Ecirc;N T&Aacute;C&nbsp;hỏi:</p>\r\n\r\n	<p>Nếu t&ocirc;i l&agrave; một diễn vi&ecirc;n, l&agrave;m sao để t&ocirc;i c&oacute; thể lọt v&agrave;o mắt xanh của đạo diễn v&agrave; tham gia bộ phim tiếp theo của anh?</p>\r\n\r\n	<p>JORDAN VOGT-ROBERTS</p>\r\n\r\n	<p>D&ugrave; bạn l&agrave; diễn vi&ecirc;n, đạo diễn hay tham gia bất cứ ng&agrave;nh nghệ thuật n&agrave;o, h&atilde;y cứ tiếp tục nỗ lực, trau dồi v&agrave; x&acirc;y dựng bản th&acirc;n. Đừng ngần ngại nếu c&oacute; gặp thất bại, bởi ch&uacute;ng sẽ đem đến cho bạn rất nhiều b&agrave;i học. C&ograve;n nếu bạn l&agrave; diễn vi&ecirc;n, h&atilde;y đ&oacute;ng phim rồi gửi l&ecirc;n mạng hoặc gửi n&oacute; cho t&ocirc;i, t&ocirc;i sẽ xem x&eacute;t.</p>\r\n	</li>\r\n</ul>\r\n', NULL, '2017-03-13 01:30:30', '2017-03-13 01:30:30', '0', '<p><strong>Đạo diễn Kong: Skull Island đang trả lời những c&acirc;u hỏi của độc giả Zing.vn</strong>&nbsp;S&aacute;ng 13/3, đạo diễn Jordan Vogt-Roberts c&oacute; mặt tại t&ograve;a soạn Zing.vn ở H&agrave; Nội để giao lưu c&ugrave;ng độc giả về si&ecirc;u phẩm Hollywood được quay ở Việt Nam.</p>\r\n', '1');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_cate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title_cate`, `slug`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'tin tức', 'tin-tuc', NULL, '2017-03-12 07:37:43', '2017-03-12 07:37:43'),
(4, 'giới thiệu', 'gioi-thieu', NULL, '2017-03-12 08:20:22', '2017-03-12 08:20:22'),
(5, 'thể thao', 'the-thao', NULL, '2017-03-13 02:14:49', '2017-03-13 02:14:49'),
(6, 'trang chủ', 'home', NULL, '2017-03-13 02:15:02', '2017-03-13 02:15:02');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_01_13_034728_create_jobs_table', 2),
(4, '2017_02_09_055732_create_search_table', 3),
(5, '2017_02_13_102624_create_location_table', 3),
(6, '2017_02_13_102851_create_job_location_table', 3),
(7, '2014_10_12_000000_create_rooms_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `acreage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `chair` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `chair_total` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `print` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `projectors` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tivi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `penSlideshow` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `board` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `penwrite` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `park` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `wifi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `views` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'donghuyviet', 'donghuyviet@gmail.com', '$2y$10$ZdEIp0Yf62bX2aBrKA4DCOp.wRZ3hw.CEP2yqmZspPKdY/v0polJi', 'G9rmNWgVx86kIQirgkXf63ROnoWo0nlEyVLtNWkQa1LxqILb7w6T7fegYz7x', '2017-01-11 00:44:52', '2017-03-13 01:13:31'),
(2, 'vietdh', 'vietdh@gmail.com', '$2y$10$Ex4P/K9LjjDJaxmOc8L3bONhhqeLaylU7CWGq7Q3MO2kgcPvR.sRe', 'vhzFbLJpiL6vZ0Nb04LQGBLeZYDHn8EdBZhggGQP3NEqnn1AEe8dKMROjHjK', '2017-01-15 06:30:51', '2017-01-15 19:12:30'),
(3, 'HuyVietDong', 'huyvietdong@gmail.com', '$2y$10$blXXev5c143qNiQkExnUHeReFXIh3UU5xob6i//NAXamoBkUSp9nK', 'YjXY1D1bMTyXtKH8pfGjrIJcAb5STvdFi0lbrvhVVCxLzpHbTKxYlAxNan45', '2017-01-15 19:12:50', '2017-01-16 00:33:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articel`
--
ALTER TABLE `articel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articel_slug_unique` (`slug`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_slug_unique` (`slug`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rooms_email_unique` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articel`
--
ALTER TABLE `articel`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
