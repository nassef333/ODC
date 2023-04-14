-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2022 at 08:52 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `orange`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `reel_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `reel_id`, `user_id`, `restaurant_id`, `comment`, `time`) VALUES
(49, 82, 13, 1, 'Hello Ahmed', '2022-09-26 03:12:25'),
(50, 82, 1, 1, 'Hahahah', '2022-09-26 03:14:17'),
(51, 79, 13, 1, 'How much??', '2022-09-26 03:14:34'),
(52, 79, 9, 0, 'جامد جداااااا', '2022-09-26 03:20:41'),
(54, 84, 9, 0, 'جامد جداااااا', '2022-09-26 03:20:48'),
(55, 86, 13, 0, 'انا جربته وجامد اووووي الصراحة', '2022-09-26 03:37:05'),
(56, 88, 1, 10, 'تحفه', '2022-09-26 03:46:10'),
(57, 89, 13, 10, 'تفاصيل', '2022-09-26 03:46:31');

-- --------------------------------------------------------

--
-- Table structure for table `followers`
--

CREATE TABLE `followers` (
  `id` int(11) NOT NULL,
  `following_id` int(11) NOT NULL,
  `followed_id` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `followers`
--

INSERT INTO `followers` (`id`, `following_id`, `followed_id`, `state`) VALUES
(54, 6, 5, 1),
(55, 6, 1, 1),
(56, 6, 2, 1),
(63, 7, 2, 1),
(64, 7, 5, 1),
(65, 7, 6, 1),
(71, 8, 7, 1),
(72, 1, 8, 1),
(75, 8, 5, 1),
(85, 9, 1, 1),
(86, 9, 2, 1),
(87, 9, 5, 1),
(88, 1, 9, 1),
(89, 1, 5, 1),
(95, 11, 2, 1),
(96, 11, 5, 1),
(97, 11, 6, 1),
(100, 11, 9, 1),
(101, 11, 10, 1),
(102, 2, 1, 1),
(103, 1, 6, 1),
(104, 5, 8, 1),
(105, 5, 6, 1),
(106, 5, 2, 1),
(111, 13, 1, 1),
(112, 13, 2, 1),
(113, 13, 5, 1),
(115, 1, 13, 1),
(116, 1, 2, 1),
(118, 1, 7, 1),
(119, 13, 6, 1),
(120, 1, 11, 1),
(121, 1, 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `reel_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `reel_id`, `user_id`, `restaurant_id`) VALUES
(130, 82, 13, 1),
(131, 82, 1, 1),
(133, 84, 1, 1),
(135, 83, 1, 1),
(136, 83, 9, 0),
(138, 82, 9, 0),
(139, 84, 9, 0),
(140, 79, 9, 0),
(141, 86, 1, 1),
(142, 86, 13, 0),
(143, 88, 13, 1),
(144, 89, 11, 1),
(145, 88, 11, 1),
(146, 88, 1, 1),
(147, 89, 1, 1),
(148, 90, 1, 1),
(149, 87, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `reels`
--

CREATE TABLE `reels` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `video` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reels`
--

INSERT INTO `reels` (`id`, `user_id`, `restaurant_id`, `video`, `description`, `address`, `time`) VALUES
(79, 1, 9, '44.mp4', 'IPHONE 14 Pro Max', 'giza', '2022-09-26 02:33:25'),
(82, 13, 1, 'reel5.mp4', 'Tikka', 'giza', '2022-09-26 03:11:01'),
(83, 1, 5, '3.mp4', 'Morning', 'giza', '2022-09-26 03:17:33'),
(84, 1, 2, '2.mp4', 'Nice!!', 'cairo', '2022-09-26 03:18:22'),
(86, 1, 4, 'تعالو نشوف كبدة الفلاح لسه على وضعه ولا كده وكده 👌.mp4', 'تعالو نشوف الكبدة اي وضعها', 'fayoum', '2022-09-26 03:35:40'),
(87, 13, 2, 'كنتاكي انت و حظك انت و فرعك- kfc-مفاجأه.mp4', 'اكلت من كنتاكي مش هتصدقو ايه اللي حصل!!!!', 'cairo', '2022-09-26 03:38:52'),
(88, 13, 10, 'اجمل شاطئ فى العالم 😍.mp4', 'دهب وجمال دهب', 'سيناء', '2022-09-26 03:43:43'),
(89, 11, 10, 'اشيك كافية فى دهب 🏖.mp4', 'Dahab Egypt', 'سيناء', '2022-09-26 03:45:41'),
(90, 1, 10, 'ارخص سكن فى دهب.mp4', 'دهب-مصر', 'سيناء', '2022-09-26 03:47:00');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `cnt` int(11) NOT NULL DEFAULT 1,
  `rate` int(11) NOT NULL DEFAULT 1,
  `rateStatus` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`id`, `category`, `name`, `description`, `img`, `address`, `cnt`, `rate`, `rateStatus`) VALUES
(1, 'Restaurant', 'Tikka', 'Have A Look At Our Irresistible Offers! Order Online Now, Or Download Our App. Visit Our Website And Choose From Our Many Delicious Meals! Order Online In Egypt Now. Meals For Sharing. Full Menu Online. Super Dinner. Order Online. Dinner Combo. Chicken Buckets.', 'rest1.jpg', 'giza', 55, 50, 0),
(2, 'Restaurant', 'KFC', 'Have A Look At Our Irresistible Offers! Order Online Now, Or Download Our App. Visit Our Website And Choose From Our Many Delicious Meals! Order Online In Egypt Now. Meals For Sharing. Full Menu Online. Super Dinner. Order Online. Dinner Combo. Chicken Buckets.', 'KFC.png', 'cairo', 60, 52, 0),
(3, 'restaurant', 'بيتزا السلطان', 'Have A Look At Our Irresistible Offers! Order Online Now, Or Download Our App. Visit Our Website And Choose From Our Many Delicious Meals! Order Online In Egypt Now. Meals For Sharing. Full Menu Online. Super Dinner. Order Online. Dinner Combo. Chicken Buckets.', 'images.png', 'cairo', 200, 150, 0),
(4, 'عربية كبدة', 'كبدة الفلاح', 'اي سندوتش ب 10', 'fool.jpg', 'fayoum', 245, 210, 0),
(5, '', 'abo tareq', 'اصل الكشري ف مصررررررررر', 'koshary.jpg', 'giza', 200, 70, 0),
(6, 'Cafe`', 'COSTA', 'Cafe & Restaurant Lazort', 'ivancik.jpg', 'Cairo', 25, 21, 0),
(8, 'Cinema', 'El-Tahrir Cinema', 'سينيما لأداء جميع دور العرض واحدث الأفلام', 'home-decor-2.jpg', 'giza', 20, 15, 0),
(9, 'Mobile & Accessory', 'Mobile Shop', 'Mobileshop Is the Biggest Telecommunication Retail chain in Egypt since 2006. It is offering an extremely wide range of the best telecommunications ...\r\n', '4f54849fc1551750100e20e0e3585988.jpeg', 'giza', 20, 16, 0),
(10, 'منتجع سياحي', 'dahab', 'Simply everything! the location is just amazing in the middle of Dahab, 3 steps from the sea. The breakfast is amazing! they offer 6 different options including pancakes, French toast, English breakfast etc. But I would say the highlight are the people. The staff is simply the BEST! Everyone, so attentive, supportive, always available to help and assist you in everything you might need. they just go beyond! I was planning to stay 4 nights and ended up being 12! 😅 Can’t wait to be back and will! 💫🙏🏼\r\n\r\n', '382633359.jpg', 'سيناء', 11, 11, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `img`, `status`, `about`) VALUES
(1, 'ahmed', 'ahmed@gmail.com', '$2y$10$BQBw9h31m94gIuDUqQ625eLpWFWKsNFZsYkStz0d7BABQCFVcEpiu', 'bruce-mars.jpg', 0, 'Software Engineer'),
(2, 'fady', 'f@f.com', '$2y$10$BQBw9h31m94gIuDUqQ625eLpWFWKsNFZsYkStz0d7BABQCFVcEpiu', 'down-arrow.svg', NULL, 'assist'),
(5, 'nassef333', 'ahmednassef8111@gmail.com', '$2y$10$BQBw9h31m94gIuDUqQ625eLpWFWKsNFZsYkStz0d7BABQCFVcEpiu', '34387aec74a1b94a.jpg', NULL, 'software engineer'),
(6, 'ميدو', 'samar@gmail.com', '$2y$10$05yq2Ksc.HIiuWAUwx7SJe.EAakPRRJpRIUGNHx.PLPJDIpPTZuqq', 'team-1.jpg', NULL, 'Turkish live translator'),
(7, 'Florida', 'floria@gmail.com', '$2y$10$05yq2Ksc.HIiuWAUwx7SJe.EAakPRRJpRIUGNHx.PLPJDIpPTZuqq', 'ivana-square.jpg', NULL, 'Embeded Systems Developer'),
(8, 'ahmed', 'ahmedgamal@gmail.com', '$2y$10$BQBw9h31m94gIuDUqQ625eLpWFWKsNFZsYkStz0d7BABQCFVcEpiu', 'team-2.jpg', NULL, 'software engineer'),
(9, 'Omar', 'omar@gmail.com', '$2y$10$BQBw9h31m94gIuDUqQ625eLpWFWKsNFZsYkStz0d7BABQCFVcEpiu', 'team-3.jpg', NULL, 'Pharmacist'),
(10, 'TEST', 'test@test.com', '$2y$10$05yq2Ksc.HIiuWAUwx7SJe.EAakPRRJpRIUGNHx.PLPJDIpPTZuqq', 'ivancik.jpg', NULL, 'test'),
(11, 'wokixe', 'noqola@mailinator.com', '$2y$10$BQBw9h31m94gIuDUqQ625eLpWFWKsNFZsYkStz0d7BABQCFVcEpiu', 'bruce-mars.jpg', NULL, 'cipyki'),
(13, 'Ahmed Nassef', 'ahmednassef@gmail.com', '$2y$10$pdqKXANga7fCY4umN6pel.800Ln5Cb4ZSr/u/F2CBhhe3iXA.GXyy', '04.jpg', NULL, 'Software Engineer'),
(14, 'Eslam', 'esso@gmail.com', '$2y$10$BQBw9h31m94gIuDUqQ625eLpWFWKsNFZsYkStz0d7BABQCFVcEpiu', '07.jpg', 0, 'Graphic Designer'),
(15, 'Zuk4', 'Zuk4@hotmail.com', 'dgfb', '08.jpg', 0, 'Back-End Developer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `followers`
--
ALTER TABLE `followers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reels`
--
ALTER TABLE `reels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `video` (`video`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `followers`
--
ALTER TABLE `followers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `reels`
--
ALTER TABLE `reels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
