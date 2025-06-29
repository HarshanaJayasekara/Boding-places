-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2024 at 06:24 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myplaces`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `title` varchar(1000) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `start_date` varchar(1000) NOT NULL,
  `end_date` varchar(1000) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE `place` (
  `id` int(11) NOT NULL,
  `place_id` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `landlord` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `image_path` varchar(100) NOT NULL,
  `student_id` varchar(100) NOT NULL,
  `warden` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `place`
--

INSERT INTO `place` (`id`, `place_id`, `title`, `description`, `price`, `latitude`, `longitude`, `landlord`, `status`, `image_path`, `student_id`, `warden`) VALUES
(13, '6612a7aa80390', 'Heritance boys hostel', 'Boys hostel \r\n10 plus rooms are here \r\ncctv include', '10000', '6.824517333539661', '80.02934953612443', '660f80ea78ff6', '2', '../uploads/OIP.jpg', '', '660e6ebe65221'),
(14, '6612a84243de2', 'Green paradise', 'Girls hostel \r\nsafe place \r\ncctv include\r\nnice area', '10000', '6.824530807048149', '80.03000415475134', '660f80ea78ff6', '2', '../uploads/OIP (3).jpg', '', '660e6ebe65221'),
(15, '6612bf78c117f', 'green hostel', '100M to the university\r\n24-hour CCTV security\r\n', '10 000', '6.821324236576211', '80.03232952716644', '660f80ea78ff6', '1', '../uploads/OIP.jpg', '660e6e77df8c9', '660e6ebe65221'),
(16, '6612c0147b3ab', 'mambo garden', '500 to university\r\nAll facilities Available\r\ntwo beds for each room.\r\nsingle rooms can arrange', '15 000', '6.8257402755360905', '80.03389185512664', '660f80ea78ff6', '2', '../uploads/bamboo garden.jpg', '', '660e6ebe65221'),
(17, '6612c05f27d89', 'yellow hostel', '700 to university \r\n24- hours CCTV\r\n\r\n', '12 000', '6.8168858', '80.0126683', '660f80ea78ff6', '0', '../uploads/yellow hostel.jpg', '', ''),
(18, '6612c15075d28', 'girls hostel- pansala handiya', '1 km for the University\r\nAll facility available', '12 000', '6.827137919984751', '80.038998781091', '660f80ea78ff6', '0', '../uploads/luxcery.jpg', '', ''),
(19, '6612c1a76d526', 'SSG Hostel', '400 M for university\r\nperfect place ', '8000', '6.82321768778619', '80.0355226382077', '660f80ea78ff6', '0', '../uploads/the place.jpg', '', ''),
(20, '6612c1cf2eb27', 'bamboo garden ', '3km\r\nnear high-level road ', '7500', '6.824751695513204', '80.0323898180783', '660f80ea78ff6', '0', '../uploads/bamboo garden.jpg', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(11) NOT NULL,
  `place_id` int(11) NOT NULL,
  `student_id` varchar(1000) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `status` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `place_id`, `student_id`, `message`, `status`) VALUES
(0, 660, '660e6e77df8c9', 'thm thiyed', '2'),
(0, 660, '660e6e77df8c9', '', '2'),
(0, 66102, '660e6e77df8c9', '', '2'),
(0, 660, '660e6e77df8c9', '', '2'),
(0, 66102, '660e6e77df8c9', '', '2'),
(0, 66102, '660e6e77df8c9', '', '2'),
(0, 660, '660e6e77df8c9', '', '2'),
(0, 66102, '660e6e77df8c9', '', '2'),
(0, 660, '660e6e77df8c9', '', '2'),
(0, 66103000, '660e6e77df8c9', '', '2'),
(0, 66102, '660e6e77df8c9', '', '2'),
(0, 660, '660e6e77df8c9', '', '2'),
(0, 661030226, '660e6e77df8c9', '', '2'),
(0, 66102, '660e6e77df8c9', '', '2'),
(0, 66103000, '660e6e77df8c9', '', '2'),
(0, 66102, '660e6e77df8c9', '', '2'),
(0, 6610303, '660e6e77df8c9', '', '2'),
(0, 6612, '660e6e77df8c9', '', '2'),
(0, 6612, '660e6e77df8c9', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_id` varchar(1000) NOT NULL,
  `username` varchar(1000) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `role` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `username`, `email`, `password`, `role`) VALUES
(1, '660e6e5434e14', 'admin', 'admin@gmail.com', '$2y$10$rAOrrTUMowXA8YQ01VHCOeasXzm3U5/R00X3wc5mMPuGn/SxN8bU2', 'Admin'),
(2, '660e6e77df8c9', 'Yasiru', 'yasiru@gamil.com', '$2y$10$QZs.GM3Wj5r3EqZwGpHMD.PfcTjmnGqnnKlg8BvptOOU63eTOwjL6', 'Student'),
(3, '660e6e9ebace3', 'sachin', 'sachin@gmail.com', '$2y$10$b8rDZBJfzSciJ/Z1GJU2CO4E/eFMBx5EKYgHMrAJGMt9.UNICS8cu', 'Landlord'),
(4, '660e6ebe65221', 'aliya', 'aliya@gmail.com', '$2y$10$5rT9rC/wdJaQHOBOuumkNedZvrB7ZFO0Hhtm6UKAsEOFnIDMv4fg2', 'Warden'),
(5, '660e71ace8e9f', 'aliya', 'aliya@gmail.com', '$2y$10$kSas8De165GUmAh.kQ3H6e9V3yo3bB4tOgHyW0/.nc2DNWmMDrI7e', 'Warden'),
(6, '660f80ea78ff6', 'praveen', 'praveen@gmail.com', '$2y$10$LjcP260VgpjPEtSa5N29xurkwAUms0OOnfDfFj9KxB1AoV9bXXdOq', 'Landlord'),
(7, '6612a467c773b', 'praveen', 'praveen@gmail.com', '$2y$10$uAUqU79cA5OT43do7fY3o.Ao./9YsBuWtmZHkpqvvyOvTdFPCddju', 'Student'),
(8, '6612a4f9efa6d', 'praveen', 'praveen@gmail.com', '$2y$10$GV7r18mrhD.liqE53rVBquu2L9WmcowmT2HO5bY4IPgCQ3cIPWOne', 'Student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `place`
--
ALTER TABLE `place`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
