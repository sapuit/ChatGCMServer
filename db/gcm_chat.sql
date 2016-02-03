-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Feb 02, 2016 at 08:50 AM
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
) ENGINE=InnoDB AUTO_INCREMENT=292 DEFAULT CHARSET=latin1;

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
(63, 2, 5, 2, 'Hello Ravi Tamada', '2016-01-27 08:26:42'),
(64, 1, 3, 1, 'We are skipping multiple message insertion', '2016-01-28 04:13:20'),
(65, 1, 3, 1, 'Great introduction to Material Design', '2016-01-28 04:13:36'),
(66, 1, 2, 1, 'Getting started with Material Design', '2016-01-28 04:13:58'),
(67, 1, 1, 1, 'pop', '2016-01-28 04:28:52'),
(68, 1, 1, 1, 'hello', '2016-01-28 04:30:54'),
(69, 1, 1, 1, 'adding message from admin panel', '2016-01-28 04:31:12'),
(70, 1, 1, 1, 'Another message', '2016-01-28 04:31:52'),
(71, 1, 1, 1, 'this is a self message', '2016-01-28 04:32:17'),
(72, 1, 1, 1, 'scroll to bottom test', '2016-01-28 04:34:09'),
(73, 1, 1, 1, 'pop', '2016-01-28 04:35:42'),
(74, 1, 1, 1, 'popp', '2016-01-28 04:35:54'),
(75, 1, 1, 1, 'hello', '2016-01-28 04:37:28'),
(76, 1, 1, 1, 'm', '2016-01-28 04:38:01'),
(77, 1, 1, 1, 'x', '2016-01-28 04:39:44'),
(78, 1, 1, 1, 'x', '2016-01-28 04:39:54'),
(79, 1, 1, 1, 'x', '2016-01-28 04:40:06'),
(80, 1, 1, 1, 'j', '2016-01-28 04:40:31'),
(81, 1, 1, 1, 'm', '2016-01-28 04:41:15'),
(82, 1, 1, 1, 'pop', '2016-01-28 04:41:22'),
(83, 1, 1, 1, 'scroll', '2016-01-28 04:41:31'),
(84, 1, 1, 1, 'scroll', '2016-01-28 04:41:34'),
(85, 1, 1, 1, 'scroll', '2016-01-28 04:41:37'),
(86, 1, 1, 1, 'scroll', '2016-01-28 04:41:40'),
(87, 1, 1, 1, 'scroll to bottom', '2016-01-28 04:43:16'),
(88, 1, 1, 1, 'scroll to bottom', '2016-01-28 04:43:21'),
(89, 1, 1, 1, 'scroll to bottom', '2016-01-28 04:43:25'),
(90, 1, 1, 1, 'l', '2016-01-28 04:43:48'),
(91, 1, 1, 1, 'l', '2016-01-28 04:43:53'),
(92, 1, 1, 1, 'l', '2016-01-28 04:44:00'),
(93, 1, 1, 1, 'l', '2016-01-28 04:44:06'),
(94, 1, 1, 1, 'l', '2016-01-28 04:44:11'),
(95, 1, 1, 1, 'hi', '2016-01-28 04:47:29'),
(96, 1, 1, 1, 'xxxx', '2016-01-28 04:47:37'),
(97, 1, 1, 1, 'xxxx', '2016-01-28 04:53:58'),
(98, 1, 1, 1, 'xxxx', '2016-01-28 04:54:08'),
(99, 1, 1, 1, 'ooooooooooooooooooooooooooooooooooooooooooooooooooooo', '2016-01-28 04:57:08'),
(100, 1, 1, 1, 'ooooooooooooooooooooooooooooooooooooooooooooooooooooo', '2016-01-28 04:57:10'),
(101, 1, 1, 1, 'ooooooooooooooooooooooooooooooooooooooooooooooooooooo', '2016-01-28 04:57:13'),
(102, 1, 1, 1, 'ooooooooooooooooooooooooooooooooooooooooooooooooooooo', '2016-01-28 04:57:15'),
(103, 1, 1, 1, 'It is really important sometime when you try to develop something like online chat where you want to display your message. its very simple to implement by using jquery.', '2016-01-28 04:57:31'),
(104, 1, 1, 1, 'It is really important sometime when you try to develop something like online chat where you want to display your message. its very simple to implement by using jquery. It is really important sometime when you try to develop something like online chat where you want to display your message. its very simple to implement by using jquery. It is really important sometime when you try to develop something like online chat where you want to display your message. its very simple to implement by using jquery.', '2016-01-28 04:57:40'),
(105, 1, 1, 1, 'hi', '2016-01-28 05:05:49'),
(106, 1, 1, 1, 'pop', '2016-01-28 05:06:25'),
(107, 1, 1, 1, 'yuyu', '2016-01-28 05:06:31'),
(108, 1, 1, 1, 'Now the scroll and message in chat room is fixed.', '2016-01-28 05:06:57'),
(109, 1, 1, 1, 'Should add the loader and sound', '2016-01-28 05:07:11'),
(110, 1, 1, 1, 'pop', '2016-01-28 06:20:32'),
(111, 1, 1, 1, 'pop', '2016-01-28 06:31:03'),
(112, 7, 1, 1, 'Hello', '2016-01-28 07:41:00'),
(113, 7, 1, 1, 'How are you doing?', '2016-01-28 07:41:15'),
(114, 1, 1, 1, 'hi', '2016-01-28 07:53:09'),
(115, 1, 1, 1, 'I got close using @lonesomeday''s answer, but I found that I had to calculate the relative position of the specific li from the first li because it changed depending on the current scroll position of the containing ul.', '2016-01-28 07:53:35'),
(116, 1, 1, 1, 'hi', '2016-01-29 05:09:11'),
(117, 1, 1, 1, 'added the loader', '2016-01-29 05:09:23'),
(118, 1, 1, 1, 'css bug', '2016-01-29 05:09:35'),
(119, 1, 1, 2, 'hello', '2016-01-29 05:15:14'),
(120, 1, 18, 1, 'Hello', '2016-01-29 06:54:24'),
(121, 1, 18, 1, 'Added dynamic admin user', '2016-01-29 06:54:38'),
(122, 2, 18, 2, 'Sending message to single user', '2016-01-29 06:55:10'),
(123, 2, 18, 2, 'Sending message to single user from admin panel!', '2016-01-29 06:55:50'),
(124, 1, 18, 2, 'loader test', '2016-01-29 06:56:05'),
(125, 1, 18, 2, 'hi', '2016-01-29 06:56:24'),
(126, 1, 18, 2, 'hello loader error is fixed now', '2016-01-29 06:56:48'),
(127, 2, 18, 2, 'loader error is fixed now', '2016-01-29 06:57:04'),
(128, 1, 18, 1, 'hi', '2016-01-29 08:10:15'),
(129, 1, 18, 1, 'added syntax highlighter', '2016-01-29 08:30:42'),
(130, 4, 18, 1, 'swipe down to refresh', '2016-01-29 09:55:47'),
(131, 4, 18, 1, 'json structure', '2016-01-30 03:05:34'),
(132, 4, 18, 1, 'flag', '2016-01-30 03:19:27'),
(133, 4, 18, 1, 'bug', '2016-01-30 03:20:35'),
(134, 4, 18, 1, 'bug test', '2016-01-30 03:21:05'),
(135, 4, 18, 1, 'int', '2016-01-30 03:23:33'),
(136, 4, 18, 1, 'iii', '2016-01-30 03:24:38'),
(137, 2, 18, 2, 'hello', '2016-01-30 03:25:43'),
(138, 4, 18, 1, 'receiver', '2016-01-30 04:40:30'),
(139, 4, 18, 1, 'recive', '2016-01-30 04:42:56'),
(140, 4, 18, 1, 'broadcast receiver', '2016-01-30 04:43:26'),
(141, 4, 18, 1, 'intent filter', '2016-01-30 04:52:45'),
(142, 4, 18, 1, 'background', '2016-01-30 04:53:01'),
(143, 4, 18, 1, 'hello', '2016-01-30 05:04:35'),
(144, 4, 18, 1, 'ij', '2016-01-30 05:06:56'),
(145, 4, 18, 1, 'test', '2016-01-30 05:16:17'),
(146, 4, 18, 1, 'hello', '2016-01-30 05:20:35'),
(147, 4, 18, 1, 'first message', '2016-01-30 05:24:35'),
(148, 1, 18, 1, 'Fucking working in first attempt', '2016-01-30 05:24:52'),
(149, 1, 18, 1, 'increment the unread count', '2016-01-30 05:25:03'),
(150, 1, 18, 1, 'working fucking awesome!', '2016-01-30 05:25:18'),
(151, 6, 18, 1, 'This article was written a long time back', '2016-01-30 05:25:51'),
(152, 6, 18, 1, '2', '2016-01-30 05:26:02'),
(153, 6, 18, 1, '3', '2016-01-30 05:26:04'),
(154, 6, 18, 1, '3', '2016-01-30 05:26:09'),
(155, 6, 18, 1, '4', '2016-01-30 05:26:11'),
(156, 6, 18, 1, '5', '2016-01-30 05:26:12'),
(157, 6, 18, 1, '6', '2016-01-30 05:26:14'),
(158, 6, 18, 1, '3', '2016-01-30 05:26:17'),
(159, 6, 18, 1, '4', '2016-01-30 05:26:19'),
(160, 6, 18, 1, '3', '2016-01-30 05:26:20'),
(161, 6, 18, 1, '3', '2016-01-30 05:26:24'),
(162, 6, 18, 1, 'first message', '2016-01-30 05:34:14'),
(163, 6, 18, 1, 'app is in background', '2016-01-30 05:34:26'),
(164, 6, 18, 1, 'sound', '2016-01-30 05:35:45'),
(165, 6, 18, 1, 'play', '2016-01-30 05:37:09'),
(166, 6, 18, 1, 'again', '2016-01-30 05:37:16'),
(167, 6, 18, 1, 'ji', '2016-01-30 05:37:51'),
(168, 6, 18, 1, 'ji', '2016-01-30 05:38:32'),
(169, 6, 18, 1, 'p', '2016-01-30 05:39:02'),
(170, 6, 18, 1, 'play sound', '2016-01-30 05:39:11'),
(171, 6, 18, 1, 'notification sound changed', '2016-01-30 05:41:45'),
(172, 6, 18, 1, 'sound', '2016-01-30 05:46:47'),
(173, 6, 18, 1, 'p', '2016-01-30 05:48:14'),
(174, 6, 18, 1, 'hello', '2016-01-30 07:01:58'),
(175, 6, 18, 1, 'single', '2016-01-30 07:02:12'),
(176, 6, 18, 1, 'hi', '2016-01-30 07:03:39'),
(177, 6, 18, 1, 'hhii', '2016-01-30 07:04:10'),
(178, 6, 18, 1, 'pop', '2016-01-30 07:04:52'),
(179, 6, 18, 1, 'pop', '2016-01-30 07:05:16'),
(180, 6, 18, 1, 'hi', '2016-01-30 07:08:58'),
(181, 6, 18, 1, 'po', '2016-01-30 07:09:08'),
(182, 6, 18, 1, 'klkl', '2016-01-30 07:10:31'),
(183, 6, 18, 1, 'kkj', '2016-01-30 07:10:42'),
(184, 6, 18, 1, 'min', '2016-01-30 07:10:59'),
(185, 6, 18, 1, 'mmm', '2016-01-30 07:11:14'),
(186, 6, 18, 1, 'mmm', '2016-01-30 07:11:25'),
(187, 4, 18, 1, 'append', '2016-01-30 07:56:17'),
(188, 4, 18, 1, 'scroll', '2016-01-30 07:58:31'),
(189, 4, 18, 1, 'pop', '2016-01-30 07:58:43'),
(190, 4, 18, 1, 'pop', '2016-01-30 08:03:19'),
(191, 4, 18, 1, 'bottom', '2016-01-30 08:15:14'),
(192, 4, 18, 1, 'auto scroll is working fine', '2016-01-30 08:15:24'),
(193, 4, 18, 1, 'play sound', '2016-01-30 08:16:48'),
(194, 4, 18, 1, 'pl', '2016-01-30 08:17:14'),
(195, 4, 18, 1, 'ddd', '2016-01-30 08:17:37'),
(196, 4, 18, 1, 'uiui', '2016-01-30 08:17:50'),
(197, 4, 18, 1, 'nn', '2016-01-30 08:18:02'),
(198, 4, 18, 1, 'nn', '2016-01-30 08:18:20'),
(199, 4, 18, 1, 'Now it should play the notification sound!', '2016-01-30 08:18:38'),
(200, 4, 18, 1, 'cool! Let''s go for lunch :D', '2016-01-30 08:18:56'),
(201, 2, 18, 2, 'pop', '2016-01-30 11:28:37'),
(202, 2, 18, 2, 'Hello', '2016-01-31 11:48:27'),
(203, 2, 18, 2, 'Append test', '2016-01-31 11:57:40'),
(204, 2, 18, 2, 'Append test', '2016-01-31 11:58:34'),
(205, 2, 18, 2, 'second line', '2016-01-31 11:58:42'),
(206, 2, 18, 2, 'Hello', '2016-01-31 11:58:52'),
(207, 4, 18, 1, 'Hi', '2016-01-31 12:15:39'),
(208, 2, 18, 2, 'hello', '2016-01-31 12:19:19'),
(209, 2, 18, 2, 'hi', '2016-01-31 12:19:25'),
(210, 2, 18, 2, 'ki', '2016-01-31 12:20:32'),
(211, 2, 18, 2, 'lkl', '2016-01-31 12:20:39'),
(212, 2, 18, 2, 'pop', '2016-01-31 12:20:43'),
(213, 4, 18, 1, 'Hello, you should complete the app by tonight.', '2016-01-31 12:23:34'),
(214, 4, 18, 1, 'Also test the app in all the devices', '2016-01-31 12:24:25'),
(215, 4, 18, 1, 'Hi', '2016-01-31 12:28:59'),
(216, 4, 18, 1, 'name and timestamp is fixed now', '2016-01-31 12:48:53'),
(217, 2, 18, 2, 'In a stunning run chase India won their third and final Twenty20 match against Australia off the last ball on Sunday to take the series 3-0. (Highlights | Scorecard)\nAustralia made a formidable 197 for five but India replied with 200 for three against an inexperienced attack and also claimed world No.1 ranking.\nThey needed 17 to win off the last over and Suresh Raina hit a boundary off the final ball for victory.\nStand-in Australian skipper Shane Watson, who had scored an unbeaten century and also claimed the vital wicket of Shikhar Dhawan, appeared to have won his side the match when he conceded just five runs from the 19th over.\nBut rookie bowler Andrew Tye (0-51) could not handle the pressure in the 20th. The first two balls went for a four and six from Yuvraj Singh (15 not out), paving the way for Raina''s last-ball heroics.\nRaina should have been stumped by debutant Cameron Bancroft off the first ball he faced from young spinner Cameron Boyce (2-28), and made the most of his good fortune to score 49 off 25 balls.\nRohit Sharma and Virat Kohli again led the Indian batting, both posting half-centuries', '2016-01-31 12:55:55'),
(218, 4, 18, 1, 'In a stunning run chase India won their third and final Twenty20 match against Australia off the last ball on Sunday to take the series 3-0. (Highlights | Scorecard)\nAustralia made a formidable 197 for five but India replied with 200 for three against an inexperienced attack and also claimed world No.1 ranking.\nThey needed 17 to win off the last over and Suresh Raina hit a boundary off the final ball for victory.\nStand-in Australian skipper Shane Watson, who had scored an unbeaten century and also claimed the vital wicket of Shikhar Dhawan, appeared to have won his side the match when he conceded just five runs from the 19th over.\nBut rookie bowler Andrew Tye (0-51) could not handle the pressure in the 20th. The first two balls went for a four and six from Yuvraj Singh (15 not out), paving the way for Raina''s last-ball heroics.\nRaina should have been stumped by debutant Cameron Bancroft off the first ball he faced from young spinner Cameron Boyce (2-28), and made the most of his good fortune to score 49 off 25 balls.\nRohit Sharma and Virat Kohli again led the Indian batting, both posting half-centuries', '2016-01-31 12:56:02'),
(219, 4, 18, 1, '\n"We wanted to finish off well and get a clean sweep and we''ve done it," he said', '2016-01-31 12:56:22'),
(220, 4, 18, 1, '"We wanted to finish off well and get a clean sweep and we''ve done it," he said', '2016-01-31 12:56:34'),
(221, 4, 18, 1, 'hi', '2016-01-31 13:06:45'),
(222, 4, 18, 1, 'pop', '2016-01-31 13:06:59'),
(223, 4, 18, 1, '<activity\n        android:name="com.example.myfirstapp.DisplayMessageActivity"\n        android:label="@string/title_activity_display_message"\n        android:parentActivityName="com.example.myfirstapp.MainActivity" >\n        <!-- Parent activity meta-data to support 4.0 and lower -->\n        <meta-data\n            android:name="android.support.PARENT_ACTIVITY"\n            android:value="com.example.myfirstapp.MainActivity" />\n    </activity>', '2016-01-31 13:09:42'),
(224, 4, 18, 1, 'hi', '2016-01-31 13:21:57'),
(225, 4, 18, 1, 'Hello', '2016-01-31 13:55:56'),
(226, 4, 18, 1, 's', '2016-01-31 13:56:06'),
(227, 4, 18, 1, 'hello', '2016-01-31 14:05:16'),
(228, 4, 18, 1, 'hello', '2016-01-31 14:05:19'),
(229, 4, 18, 1, 'hello', '2016-01-31 14:07:37'),
(230, 4, 18, 1, 'hello', '2016-01-31 14:07:57'),
(231, 4, 18, 1, 'p', '2016-01-31 14:10:42'),
(232, 4, 18, 1, 'p', '2016-01-31 14:10:44'),
(233, 4, 18, 1, 'hello', '2016-01-31 14:15:07'),
(234, 4, 18, 1, 'sending message from devixe', '2016-01-31 14:15:27'),
(235, 4, 19, 1, 'hi samsung is here', '2016-01-31 14:19:58'),
(236, 4, 18, 1, 'hello samsung', '2016-01-31 14:20:19'),
(237, 4, 18, 1, 'hi sam', '2016-01-31 14:22:20'),
(238, 4, 18, 1, 'hi sam', '2016-01-31 14:22:23'),
(239, 4, 19, 1, 'app is not crashing now', '2016-01-31 14:23:17'),
(240, 4, 19, 1, 'app is not crashing now', '2016-01-31 14:23:20'),
(241, 4, 18, 1, 'cool', '2016-01-31 14:23:22'),
(242, 4, 19, 1, 'what''s next?', '2016-01-31 14:23:44'),
(243, 4, 19, 1, 'what''s next?', '2016-01-31 14:23:47'),
(244, 4, 19, 1, 'is it scrolling?', '2016-01-31 14:24:24'),
(245, 4, 19, 1, 'is it scrolling?', '2016-01-31 14:24:27'),
(246, 4, 18, 1, 'ji', '2016-01-31 14:31:10'),
(247, 4, 18, 1, 'Append', '2016-01-31 14:31:22'),
(248, 4, 18, 1, 'now', '2016-01-31 14:31:45'),
(249, 4, 18, 1, 'hello', '2016-01-31 14:31:52'),
(250, 4, 18, 1, 'hi', '2016-01-31 14:31:58'),
(251, 4, 18, 1, 'hi', '2016-01-31 14:32:14'),
(252, 4, 18, 1, 'kio', '2016-01-31 14:32:19'),
(253, 4, 18, 1, 'i', '2016-01-31 14:32:34'),
(254, 4, 19, 1, 'y', '2016-01-31 14:32:45'),
(255, 4, 19, 1, 'o', '2016-01-31 14:32:48'),
(256, 4, 19, 1, 'ui', '2016-01-31 14:32:51'),
(257, 4, 19, 1, 'pop', '2016-01-31 14:33:12'),
(258, 4, 19, 1, 'l', '2016-01-31 14:33:15'),
(259, 4, 19, 1, 'pop', '2016-01-31 14:33:22'),
(260, 2, 19, 1, 'kikl', '2016-01-31 14:33:29'),
(261, 1, 19, 1, 'pop', '2016-01-31 14:33:37'),
(262, 1, 19, 1, 'j', '2016-01-31 14:33:42'),
(263, 1, 19, 1, 'p', '2016-01-31 14:33:43'),
(264, 1, 19, 1, 'u', '2016-01-31 14:33:44'),
(265, 1, 19, 1, 'k', '2016-01-31 14:33:45'),
(266, 1, 19, 1, 'l', '2016-01-31 14:33:46'),
(267, 1, 19, 1, 'p', '2016-01-31 14:33:47'),
(268, 1, 19, 1, 'j', '2016-01-31 14:33:48'),
(269, 1, 19, 1, 'k', '2016-01-31 14:33:49'),
(270, 1, 19, 1, '@', '2016-01-31 14:33:50'),
(271, 6, 18, 1, 'pop', '2016-01-31 14:40:12'),
(272, 6, 19, 1, 'hi', '2016-01-31 14:40:22'),
(273, 6, 19, 1, 'p', '2016-01-31 14:40:26'),
(274, 5, 19, 1, 'should create good topics', '2016-01-31 14:40:50'),
(275, 4, 2, 1, 'hi', '2016-01-31 17:25:35'),
(276, 4, 2, 1, 'looks good now', '2016-01-31 17:25:45'),
(277, 4, 19, 1, 'yeah', '2016-01-31 17:26:04'),
(278, 4, 19, 1, 'like', '2016-01-31 17:26:12'),
(279, 4, 19, 1, 'this is the last message', '2016-01-31 17:26:41'),
(280, 5, 2, 1, 'hello', '2016-01-31 17:48:25'),
(281, 5, 19, 1, 'hi', '2016-01-31 17:48:47'),
(282, 5, 19, 1, 'how are you', '2016-01-31 17:48:57'),
(283, 5, 19, 1, 'append', '2016-01-31 17:49:09'),
(284, 1, 18, 1, 'dot', '2016-01-31 17:49:59'),
(285, 1, 18, 1, 'Welcome to Google Cloud Messaging!', '2016-02-01 04:12:26'),
(286, 1, 18, 1, 'Now let''s refactor the php code and the admin panel', '2016-02-01 04:12:47'),
(287, 1, 18, 1, 'Welcome to Google Could Messaging!', '2016-02-01 06:39:20'),
(288, 1, 18, 1, 'Welcome to Google Cloud Messaging!', '2016-02-01 06:40:00'),
(289, 1, 18, 1, 'Welcome to Google Cloud Messaging!', '2016-02-01 06:40:26'),
(290, 2, 18, 2, 'Hello ravi', '2016-02-01 12:21:25'),
(291, 2, 18, 2, 'Hi ravi tamada', '2016-02-01 12:21:46');

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `gcm_registration_id`, `created_at`) VALUES
(1, 'Mr Bean', 'admin@transganization.com', '', '2016-01-06 06:26:01'),
(2, 'Ravi Tamada', 'ravi8x@gmail.com', 'fnFAQ_BA7pY:APA91bFOwrCw9LHhJKatfvMx-2XA7-NdUMUMF5c9RS0_JfWj80_AnfaTYVUUjnjiJSF0B4Wz8v52njkG8E-Lt80GaaB3BAJQ6r6AZupVHrBlrBmVDhkJQkBmuhmZ1tWH2Pa-MoWy_ztE', '2016-01-06 06:51:08'),
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
(17, 'xxx', 'x@x.xxx', 'dkV1_VgMhk8:APA91bH3lZ9sny3cbsAjN-Hj6jE5Z1MTkHTiFB1okn2WzAVcfLMwSVZLpcTlpuEE348dR1XuIoLLRuCwT6s3WeDfvw6SlQ87LXUIk0EM8hKylozPczEH_2Npu9yV3-H3bXQSQYIIkGG_', '2016-01-25 05:15:57'),
(18, 'AndroidHive', 'admin@androidhive.info', 'dLqnHGopCi0:APA91bEzNUQ39Xk-fX5j_2vBQdHca9d-CV4oyXXAn-O64j4jxdnEKdg82RQSX3nt-NUXmOjJfgsesZEC0nS8pRqx7_jlwhsfZAxKI2lgM5PFgJFrPgtf0uiqyRn5v84Pm1DHud3AWQHG', '2016-01-29 06:50:26'),
(19, 'samsung', 'user@Samsung.com', 'fIl1kP8S9SI:APA91bFKmgErpt16b1XOZX6hjnTXsGflW9KYNZ1EqQ6D_pXp_oujYqOf7aVIk_GrWX3Kpvu3ohJE1NXudExFHLV0wrjzI1b9d4_PSwS36Z44SwDjb31HkwKHC-IdC-GQO2crDVLxVlAu', '2016-01-31 14:19:45');

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
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=292;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
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
