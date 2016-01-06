-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jan 06, 2016 at 10:54 AM
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
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `chat_room_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `chat_room_id`, `user_id`, `comment`, `created_at`) VALUES
(1, 2, 3, 'first comment', '2016-01-06 08:55:55'),
(2, 2, 3, 'first comment 2', '2016-01-06 08:56:13'),
(3, 2, 3, 'first comment 4', '2016-01-06 08:56:18'),
(4, 2, 3, 'working on discussions ordering', '2016-01-06 08:56:57'),
(5, 2, 3, 'This is a test comment', '2016-01-06 08:57:38'),
(6, 2, 1, 'This is a test comment', '2016-01-06 08:59:40'),
(7, 2, 5, 'This is a test comment xxxxx', '2016-01-06 08:59:46'),
(8, 3, 5, 'This is a test comment xxxxx', '2016-01-06 09:01:03'),
(9, 3, 7, 'This is a test comment xxxxx', '2016-01-06 09:01:06'),
(10, 3, 2, 'This is a test comment xxxxx', '2016-01-06 09:01:09');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `gcm_registration_id`, `created_at`) VALUES
(1, 'Mr Bean', 'admin@transganization.com', '', '2016-01-06 06:26:01'),
(2, 'Ravi Tamada', 'ravi8x@gmail.com', 'PPPso3u3uoiuweoruwoiu lsjdflkjsflksjlfjsdlfjsldf1234567890poiuytrewasdfghjklzxcvbnm', '2016-01-06 06:51:08'),
(3, 'Tommy', 'tommy@gmail.com', 'PPPso3u3uoiuweoruwoiu lsjdflkjsflksjlfjsdlfjsldf1234567890poiuytrewasdfghjklzxcvbnm', '2016-01-06 07:10:21'),
(4, 'AndroidHive', 'androidhive@gmail.com', '', '2016-01-06 07:10:37'),
(5, 'Droid5 Informatics', 'droid5@gmail.com', '', '2016-01-06 07:10:52'),
(6, 'Karthik Tamada', 'xxx@gmail.com', '', '2016-01-06 07:11:08'),
(7, 'Satish Tamada', 'xxxx@gmail.com', '', '2016-01-06 07:11:14');

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
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `chat_room_id` (`chat_room_id`),
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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `chat_room_people`
--
ALTER TABLE `chat_room_people`
  ADD CONSTRAINT `chat_room_people_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chat_room_people_ibfk_1` FOREIGN KEY (`chat_room_id`) REFERENCES `chat_rooms` (`chat_room_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`chat_room_id`) REFERENCES `chat_rooms` (`chat_room_id`) ON DELETE CASCADE ON UPDATE CASCADE;
