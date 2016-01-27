-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jan 27, 2016 at 11:16 AM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `gcm_chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat_rooms`
--

CREATE TABLE `chat_rooms` (
  `chat_room_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat_rooms`
--

INSERT INTO `chat_rooms` (`chat_room_id`, `name`, `created_at`) VALUES
(1, 'Material Design', '2016-01-06 06:57:40'),
(2, 'SnackBar Tutorial', '2016-01-06 06:57:40'),
(3, 'GCM 3.0 Push notifications', '2016-01-06 06:57:40'),
(4, 'Swipe down to refresh List View', '2016-01-06 06:57:40'),
(5, 'Android WhatsApp Clone App', '2016-01-06 06:57:40'),
(6, 'Android wallpapers app', '2016-01-06 06:58:46'),
(7, 'When is next os is releasing', '2016-01-06 06:58:46'),
(8, 'What is the name of new android OS', '2016-01-06 06:58:46'),
(9, 'Working on GCM newer version', '2016-01-06 06:58:46');

-- --------------------------------------------------------

--
-- Table structure for table `chat_room_people`
--

CREATE TABLE `chat_room_people` (
  `chat_room_people_id` int(11) NOT NULL,
  `chat_room_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat_room_people`
--

INSERT INTO `chat_room_people` (`chat_room_people_id`, `chat_room_id`, `user_id`, `created_at`) VALUES
(16, 2, 1, '2016-01-06 07:31:41'),
(17, 2, 3, '2016-01-06 07:31:57');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `message_id` int(11) NOT NULL,
  `entity_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`message_id`, `entity_id`, `user_id`, `type`, `message`, `created_at`) VALUES
(1, 2, 3, 0, 'first comment', '2016-01-06 08:55:55'),
(2, 2, 3, 0, 'first comment 2', '2016-01-06 08:56:13'),
(3, 2, 3, 0, 'first comment 4', '2016-01-06 08:56:18'),
(4, 2, 3, 0, 'working on discussions ordering', '2016-01-06 08:56:57'),
(5, 2, 3, 0, 'This is a test comment', '2016-01-06 08:57:38'),
(6, 2, 1, 0, 'This is a test comment', '2016-01-06 08:59:40'),
(7, 2, 5, 0, 'This is a test comment xxxxx', '2016-01-06 08:59:46'),
(8, 3, 5, 0, 'This is a test comment xxxxx', '2016-01-06 09:01:03'),
(9, 3, 7, 0, 'This is a test comment xxxxx', '2016-01-06 09:01:06'),
(10, 3, 2, 0, 'This is a test comment xxxxx', '2016-01-06 09:01:09'),
(11, 2, 2, 0, 'first comment', '2016-01-07 16:31:08'),
(12, 2, 2, 0, 'first comment', '2016-01-07 16:31:13'),
(13, 2, 2, 0, 'first comment', '2016-01-07 16:32:21'),
(14, 2, 2, 0, 'This is self comment', '2016-01-07 16:32:36'),
(15, 2, 2, 0, 'Another self comment', '2016-01-07 16:32:41'),
(16, 2, 2, 0, 'Chat thread is working correctly. Now should design the app theme. Use the color theme of Hike messaging app', '2016-01-07 16:36:41'),
(17, 1, 5, 0, 'Hello GCM', '2016-01-27 06:39:04'),
(18, 1, 5, 0, 'Hello GCM', '2016-01-27 06:40:10'),
(19, 4, 5, 0, 'Hello GCM', '2016-01-27 06:42:09'),
(20, 4, 5, 0, 'Hello GCM', '2016-01-27 06:42:50'),
(21, 4, 5, 0, 'Hello GCM', '2016-01-27 06:43:18'),
(22, 4, 5, 0, 'Hello GCM', '2016-01-27 06:43:19'),
(23, 4, 5, 0, 'Hello GCM', '2016-01-27 06:43:19'),
(24, 4, 5, 0, 'Hello GCM', '2016-01-27 06:43:20'),
(25, 4, 5, 0, 'Hello GCM', '2016-01-27 06:43:20'),
(26, 4, 5, 0, 'Hello GCM', '2016-01-27 06:43:47'),
(27, 4, 5, 0, 'Hello GCM', '2016-01-27 06:43:50'),
(28, 4, 5, 0, 'Hello GCM', '2016-01-27 06:43:51'),
(29, 4, 5, 0, 'Hello GCM', '2016-01-27 06:43:54'),
(30, 4, 5, 0, 'Hello GCM', '2016-01-27 06:44:18'),
(31, 4, 5, 0, 'Hello GCM', '2016-01-27 06:44:19'),
(32, 4, 5, 0, 'Hello GCM', '2016-01-27 06:44:20'),
(33, 4, 5, 0, 'Hello GCM', '2016-01-27 06:44:20'),
(34, 4, 5, 0, 'Hello GCM', '2016-01-27 06:44:21'),
(35, 4, 5, 0, 'Hello GCM', '2016-01-27 06:44:22'),
(36, 4, 5, 0, 'Hello GCM', '2016-01-27 06:47:05'),
(37, 4, 5, 0, 'Hello GCM', '2016-01-27 06:47:20'),
(38, 4, 5, 0, 'Hello GCM', '2016-01-27 06:47:47'),
(39, 4, 5, 0, 'Hello GCM', '2016-01-27 06:48:16'),
(40, 4, 5, 0, 'Hello GCM', '2016-01-27 06:50:12'),
(41, 4, 5, 0, 'Hello GCM', '2016-01-27 06:52:17'),
(42, 4, 5, 0, 'Testing topic messaging via rest api', '2016-01-27 06:52:36'),
(43, 4, 5, 0, 'Testing topic messaging via rest api', '2016-01-27 06:59:23'),
(44, 4, 5, 0, 'Testing topic messaging via rest api', '2016-01-27 07:01:52'),
(45, 4, 5, 0, 'Testing topic messaging via rest api', '2016-01-27 07:02:17'),
(46, 4, 5, 0, 'Testing topic messaging via rest api', '2016-01-27 07:03:39'),
(47, 4, 5, 0, 'Testing topic messaging via rest api', '2016-01-27 07:06:42'),
(48, 4, 5, 0, 'Testing topic messaging via rest api', '2016-01-27 07:06:49'),
(49, 4, 5, 0, 'Testing topic messaging via rest api', '2016-01-27 07:07:06'),
(50, 4, 5, 0, 'Testing topic messaging via rest api', '2016-01-27 07:09:02'),
(51, 4, 5, 0, 'Testing topic messaging via rest api', '2016-01-27 07:15:50'),
(52, 4, 5, 0, 'Testing topic messaging via rest api', '2016-01-27 07:17:04'),
(53, 4, 5, 0, 'comment parameter changed to message', '2016-01-27 07:17:19'),
(54, 4, 5, 1, 'comment parameter changed to message', '2016-01-27 08:15:50'),
(55, 4, 5, 1, 'comment parameter changed to message', '2016-01-27 08:16:20'),
(56, 4, 5, 1, 'comment parameter changed to message', '2016-01-27 08:16:52'),
(57, 3, 5, 2, 'comment parameter changed to message', '2016-01-27 08:18:54'),
(58, 3, 5, 2, 'comment parameter changed to message', '2016-01-27 08:19:35'),
(59, 3, 5, 2, 'sending message to single user', '2016-01-27 08:19:53'),
(60, 17, 5, 2, 'sending message to single user', '2016-01-27 08:20:16'),
(61, 2, 5, 2, 'sending message to single user', '2016-01-27 08:25:22'),
(62, 2, 5, 2, 'sending message to single user', '2016-01-27 08:26:30'),
(63, 2, 5, 2, 'Hello Ravi Tamada', '2016-01-27 08:26:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gcm_registration_id` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `gcm_registration_id`, `created_at`) VALUES
(1, 'Mr Bean', 'admin@transganization.com', '', '2016-01-06 06:26:01'),
(2, 'Ravi Tamada', 'ravi8x@gmail.com', 'fD-BSuOtCv4:APA91bFE012eu9hJ_1oR4lQKfIm8YhxubB8bjR-KfEwzG3taLIEJjRkEfa1r7RTgi88ou2Br5GPv9X5D-fLwYREveRN4Rdhqk-wuOGpb4RUdJrxDGldvOYUpU8bT3WujsS0JG2O3yicR', '2016-01-06 06:51:08'),
(3, 'Tommy', 'tommy@gmail.com', 'PPPso3u3uoiuweoruwoiu lsjdflkjsflksjlfjsdlfjsldf1234567890poiuytrewasdfghjklzxcvbnm', '2016-01-06 07:10:21'),
(4, 'AndroidHive', 'androidhive@gmail.com', '', '2016-01-06 07:10:37'),
(5, 'Droid5 Informatics', 'droid5@gmail.com', '', '2016-01-06 07:10:52'),
(6, 'Karthik Tamada', 'xxx@gmail.com', '', '2016-01-06 07:11:08'),
(7, 'Satish Tamada', 'xxxx@gmail.com', '', '2016-01-06 07:11:14'),
(8, 'r', 'r@r.cc', '', '2016-01-06 18:01:44'),
(9, 'i', 'i@i.ii', '', '2016-01-07 04:27:57'),
(10, 'p', 'p@p.ppp', 'dfogzGMt_mM:APA91bEQD9YVKvgpqPJllWK0Gq_BdvhoymGahQUyNKPmn8XOwSggizwPjAYQxga5p7VERn5Guu6o3FwY2VJerUOluMEINf4wXnO62IVDovdzZfjKQlpA3ESavK6zHmL_kc6K5riL3CeK', '2016-01-07 04:42:34'),
(11, 'p', 'p@p.pp', '', '2016-01-07 05:01:49'),
(12, 'l', 'l@l.lll', '', '2016-01-07 05:06:34'),
(13, 'p', 'p@0.mm', '', '2016-01-07 05:13:21'),
(14, 'new', 'new@m.mmm', '', '2016-01-07 05:17:40'),
(15, 'p', 't@5.uuu', '', '2016-01-07 05:38:04'),
(16, 'x', 'x@x.xx', 'duFQf2M-BNo:APA91bGz86Js4rFf8ZHQWRgJRRfAPvblt_vVsDW_VJVJ9q7lsoh4KhCdOnjIVL-12jKmozXx1ZJizuzFKK_N5J1-eZI-zidJy72VNvlPbkZNt-lWX0OB5diXw5a_K6WRJyEMaQLMV3Fv', '2016-01-22 04:21:44'),
(17, 'xxx', 'x@x.xxx', 'dkV1_VgMhk8:APA91bH3lZ9sny3cbsAjN-Hj6jE5Z1MTkHTiFB1okn2WzAVcfLMwSVZLpcTlpuEE348dR1XuIoLLRuCwT6s3WeDfvw6SlQ87LXUIk0EM8hKylozPczEH_2Npu9yV3-H3bXQSQYIIkGG_', '2016-01-25 05:15:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat_rooms`
--
ALTER TABLE `chat_rooms`
  ADD PRIMARY KEY (`chat_room_id`);

--
-- Indexes for table `chat_room_people`
--
ALTER TABLE `chat_room_people`
  ADD PRIMARY KEY (`chat_room_people_id`),
  ADD KEY `chat_room_id` (`chat_room_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `chat_room_id` (`entity_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat_rooms`
--
ALTER TABLE `chat_rooms`
  MODIFY `chat_room_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `chat_room_people`
--
ALTER TABLE `chat_room_people`
  MODIFY `chat_room_people_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `chat_room_people`
--
ALTER TABLE `chat_room_people`
  ADD CONSTRAINT `chat_room_people_ibfk_1` FOREIGN KEY (`chat_room_id`) REFERENCES `chat_rooms` (`chat_room_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chat_room_people_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
