-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2026 at 06:48 AM
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
-- Database: `batch 70`
--
CREATE DATABASE IF NOT EXISTS `batch 70` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `batch 70`;

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `result_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `batch` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(260) NOT NULL,
  `address` varchar(260) NOT NULL,
  `contact` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `address`, `contact`) VALUES
(1, 'Ridu', 'dhanmoni', 'xxxx'),
(3, 'ridoy', 'dhanmoni', '01618049034'),
(4, 'ridoy', 'dhanmoni', '01618049034'),
(5, 'Reday Gamer', 'dhanmoni', '01618049034'),
(6, 'ridoy', 'dhanmoni', '01618049034'),
(7, 'ridoy', 'dhanmoni', '01618049034');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`result_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
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
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `result_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);
--
-- Database: `bdshop`
--
CREATE DATABASE IF NOT EXISTS `bdshop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bdshop`;

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE `manufacturer` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact_no` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manufacturer`
--

INSERT INTO `manufacturer` (`id`, `name`, `address`, `contact_no`) VALUES
(1, 'ridoy', 'dhanmoni', '01618049034'),
(2, 'Reday Gamer', 'dhanmoni', '01618049034');

-- --------------------------------------------------------

--
-- Stand-in structure for view `manufacturer_viwe`
-- (See below for the actual view)
--
CREATE TABLE `manufacturer_viwe` (
`name` varchar(50)
,`address` varchar(100)
,`contact_no` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(5) NOT NULL,
  `manufacturer_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure for view `manufacturer_viwe`
--
DROP TABLE IF EXISTS `manufacturer_viwe`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `manufacturer_viwe`  AS SELECT `manufacturer`.`name` AS `name`, `manufacturer`.`address` AS `address`, `manufacturer`.`contact_no` AS `contact_no` FROM `manufacturer` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `manufacturer`
--
ALTER TABLE `manufacturer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `crud`
--
CREATE DATABASE IF NOT EXISTS `crud` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `crud`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `contact` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `contact`) VALUES
(51, 'madhuri', '03215565'),
(52, 'madhuri', '03215565'),
(53, 'madhuri', '03215565'),
(55, 'neha', '0123654'),
(56, 'malaysia', '01618049034');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- Database: `exam`
--
CREATE DATABASE IF NOT EXISTS `exam` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `exam`;

-- --------------------------------------------------------

--
-- Table structure for table `manufacture`
--

CREATE TABLE `manufacture` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact no` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` double(10,2) NOT NULL,
  `manufacturer_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `product_view`
-- (See below for the actual view)
--
CREATE TABLE `product_view` (
`id` int(11)
,`name` varchar(50)
,`address` varchar(100)
,`contact no` varchar(50)
);

-- --------------------------------------------------------

--
-- Structure for view `product_view`
--
DROP TABLE IF EXISTS `product_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `product_view`  AS SELECT `manufacture`.`id` AS `id`, `manufacture`.`name` AS `name`, `manufacture`.`address` AS `address`, `manufacture`.`contact no` AS `contact no` FROM `manufacture` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `manufacture`
--
ALTER TABLE `manufacture`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `manufacture`
--
ALTER TABLE `manufacture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `hasu`
--
CREATE DATABASE IF NOT EXISTS `hasu` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hasu`;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(11) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `email`, `contact`, `address`) VALUES
(1, 'Md Reday', 'redayboss7@gmail.com', '01618049034', 'dhanmoni'),
(4, 'Md Reday', 'redayboss7@gmail.com', '01618049034', 'dhanmoni'),
(5, 'Md Reday', 'redayboss7@gmail.com', '01618049034', 'dhanmoni');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `medicore_pms`
--
CREATE DATABASE IF NOT EXISTS `medicore_pms` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `medicore_pms`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`) VALUES
(1, 'Antibiotic', NULL, '2026-04-29 03:45:25'),
(2, 'Analgesic', NULL, '2026-04-29 03:45:25'),
(3, 'Antacid', NULL, '2026-04-29 03:45:25'),
(4, 'Antidiabetic', NULL, '2026-04-29 03:45:25'),
(5, 'Cardiac', NULL, '2026-04-29 03:45:25'),
(6, 'Vitamin', NULL, '2026-04-29 03:45:25'),
(7, 'Antiviral', NULL, '2026-04-29 03:45:25'),
(8, 'Antihistamine', NULL, '2026-04-29 03:45:25');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `total_purchase` decimal(12,2) DEFAULT 0.00,
  `loyalty_points` int(11) DEFAULT 0,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `generic_name` varchar(200) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `company` varchar(150) DEFAULT NULL,
  `dosage_form` enum('Tablet','Capsule','Syrup','Injection','Cream','Drops','Powder','Other') DEFAULT 'Tablet',
  `strength` varchar(50) DEFAULT NULL,
  `batch_no` varchar(50) DEFAULT NULL,
  `stock_qty` int(11) DEFAULT 0,
  `min_stock_alert` int(11) DEFAULT 10,
  `buy_price` decimal(10,2) DEFAULT 0.00,
  `sell_price` decimal(10,2) DEFAULT 0.00,
  `mrp` decimal(10,2) DEFAULT 0.00,
  `expiry_date` date DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `prescription_required` tinyint(4) DEFAULT 0,
  `description` text DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prescriptions`
--

CREATE TABLE `prescriptions` (
  `id` int(11) NOT NULL,
  `patient_name` varchar(150) NOT NULL,
  `patient_phone` varchar(20) DEFAULT NULL,
  `patient_age` int(11) DEFAULT NULL,
  `doctor_name` varchar(150) NOT NULL,
  `doctor_phone` varchar(20) DEFAULT NULL,
  `hospital` varchar(200) DEFAULT NULL,
  `prescribed_medicines` text DEFAULT NULL,
  `rx_date` date NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `status` enum('Pending','Dispensed','Partial','Cancelled') DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(11) NOT NULL,
  `invoice_no` varchar(50) DEFAULT NULL,
  `supplier_id` int(11) NOT NULL,
  `medicine_id` int(11) NOT NULL,
  `batch_no` varchar(50) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `unit_cost` decimal(10,2) NOT NULL,
  `total_cost` decimal(12,2) GENERATED ALWAYS AS (`qty` * `unit_cost`) STORED,
  `expiry_date` date DEFAULT NULL,
  `purchase_date` date NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `status` enum('Pending','Received','Cancelled') DEFAULT 'Received',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `invoice_no` varchar(50) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_name` varchar(150) DEFAULT 'Walk-in Customer',
  `subtotal` decimal(12,2) NOT NULL,
  `discount_percent` decimal(5,2) DEFAULT 0.00,
  `discount_amount` decimal(10,2) DEFAULT 0.00,
  `tax_percent` decimal(5,2) DEFAULT 0.00,
  `tax_amount` decimal(10,2) DEFAULT 0.00,
  `grand_total` decimal(12,2) NOT NULL,
  `paid_amount` decimal(12,2) DEFAULT 0.00,
  `change_amount` decimal(10,2) DEFAULT 0.00,
  `payment_method` enum('Cash','Card','bKash','Nagad','Rocket','Credit') DEFAULT 'Cash',
  `user_id` int(11) DEFAULT NULL,
  `prescription_id` int(11) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `status` enum('Paid','Pending','Cancelled') DEFAULT 'Paid',
  `sale_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sale_items`
--

CREATE TABLE `sale_items` (
  `id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `medicine_id` int(11) NOT NULL,
  `medicine_name` varchar(200) DEFAULT NULL,
  `batch_no` varchar(50) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `discount` decimal(5,2) DEFAULT 0.00,
  `total` decimal(12,2) GENERATED ALWAYS AS (`qty` * `unit_price` * (1 - `discount` / 100)) STORED
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `setting_key` varchar(100) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `setting_key`, `setting_value`, `updated_at`) VALUES
(1, 'pharmacy_name', 'MediCore Pharmacy', '2026-04-29 03:45:25'),
(2, 'address', '123 Main Road, Dhaka-1207', '2026-04-29 03:45:25'),
(3, 'phone', '+880 1700-000000', '2026-04-29 03:45:25'),
(4, 'email', 'info@medicore.com.bd', '2026-04-29 03:45:25'),
(5, 'drug_license', 'DL-2024-001234', '2026-04-29 03:45:25'),
(6, 'low_stock_alert', '10', '2026-04-29 03:45:25'),
(7, 'expiry_alert_days', '30', '2026-04-29 03:45:25'),
(8, 'loyalty_points_enabled', '1', '2026-04-29 03:45:25'),
(9, 'auto_backup', '1', '2026-04-29 03:45:25'),
(10, 'print_receipt', '1', '2026-04-29 03:45:25'),
(11, 'currency_symbol', '৳', '2026-04-29 03:45:25');

-- --------------------------------------------------------

--
-- Table structure for table `stock_log`
--

CREATE TABLE `stock_log` (
  `id` int(11) NOT NULL,
  `medicine_id` int(11) NOT NULL,
  `medicine_name` varchar(200) DEFAULT NULL,
  `change_type` enum('Purchase','Sale','Return','Adjustment','Expired') NOT NULL,
  `qty_before` int(11) DEFAULT NULL,
  `qty_change` int(11) NOT NULL,
  `qty_after` int(11) DEFAULT NULL,
  `reference_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `contact_person` varchar(100) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `balance` decimal(12,2) DEFAULT 0.00,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `contact_person`, `phone`, `email`, `address`, `balance`, `status`, `created_at`) VALUES
(1, 'Beximco Pharmaceuticals', NULL, '01700-100001', 'sales@beximco.com', 'Dhaka, Bangladesh', 0.00, 1, '2026-04-29 03:45:25'),
(2, 'Square Pharma Dist.', NULL, '01700-200002', 'dist@square-pharma.com', 'Manikganj', 0.00, 1, '2026-04-29 03:45:25'),
(3, 'ACI Healthcare', NULL, '01700-300003', 'aci@healthcare.com.bd', 'Narayanganj', 0.00, 1, '2026-04-29 03:45:25'),
(4, 'Opsonin Pharma', NULL, '01700-400004', 'opsonin@pharma.com', 'Dhaka', 0.00, 1, '2026-04-29 03:45:25'),
(5, 'Renata Limited', NULL, '01700-500005', 'renata@renata.com', 'Mirpur, Dhaka', 0.00, 1, '2026-04-29 03:45:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','pharmacist','cashier') DEFAULT 'cashier',
  `phone` varchar(20) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `phone`, `status`, `created_at`) VALUES
(1, 'Admin User', 'admin@medicore.com', '0192023a7bbd73250516f069df18b500', 'admin', '01700-000001', 1, '2026-04-29 03:45:25'),
(2, 'Pharmacist Karim', 'karim@medicore.com', '86daa7cd600c9817465d4fde34446278', 'pharmacist', '01700-000002', 1, '2026-04-29 03:45:25');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_daily_sales`
-- (See below for the actual view)
--
CREATE TABLE `view_daily_sales` (
`sale_day` date
,`total_invoices` bigint(21)
,`total_revenue` decimal(34,2)
,`total_discount` decimal(32,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_expiring_soon`
-- (See below for the actual view)
--
CREATE TABLE `view_expiring_soon` (
`id` int(11)
,`name` varchar(200)
,`batch_no` varchar(50)
,`company` varchar(150)
,`stock_qty` int(11)
,`expiry_date` date
,`days_left` int(7)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_low_stock`
-- (See below for the actual view)
--
CREATE TABLE `view_low_stock` (
`id` int(11)
,`name` varchar(200)
,`generic_name` varchar(200)
,`company` varchar(150)
,`stock_qty` int(11)
,`min_stock_alert` int(11)
,`sell_price` decimal(10,2)
,`expiry_date` date
);

-- --------------------------------------------------------

--
-- Structure for view `view_daily_sales`
--
DROP TABLE IF EXISTS `view_daily_sales`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_daily_sales`  AS SELECT cast(`sales`.`sale_date` as date) AS `sale_day`, count(0) AS `total_invoices`, sum(`sales`.`grand_total`) AS `total_revenue`, sum(`sales`.`discount_amount`) AS `total_discount` FROM `sales` WHERE `sales`.`status` = 'Paid' GROUP BY cast(`sales`.`sale_date` as date) ORDER BY cast(`sales`.`sale_date` as date) DESC ;

-- --------------------------------------------------------

--
-- Structure for view `view_expiring_soon`
--
DROP TABLE IF EXISTS `view_expiring_soon`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_expiring_soon`  AS SELECT `medicines`.`id` AS `id`, `medicines`.`name` AS `name`, `medicines`.`batch_no` AS `batch_no`, `medicines`.`company` AS `company`, `medicines`.`stock_qty` AS `stock_qty`, `medicines`.`expiry_date` AS `expiry_date`, to_days(`medicines`.`expiry_date`) - to_days(curdate()) AS `days_left` FROM `medicines` WHERE `medicines`.`expiry_date` <= curdate() + interval 90 day AND `medicines`.`status` = 1 ORDER BY `medicines`.`expiry_date` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `view_low_stock`
--
DROP TABLE IF EXISTS `view_low_stock`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_low_stock`  AS SELECT `medicines`.`id` AS `id`, `medicines`.`name` AS `name`, `medicines`.`generic_name` AS `generic_name`, `medicines`.`company` AS `company`, `medicines`.`stock_qty` AS `stock_qty`, `medicines`.`min_stock_alert` AS `min_stock_alert`, `medicines`.`sell_price` AS `sell_price`, `medicines`.`expiry_date` AS `expiry_date` FROM `medicines` WHERE `medicines`.`stock_qty` <= `medicines`.`min_stock_alert` AND `medicines`.`status` = 1 ORDER BY `medicines`.`stock_qty` ASC ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invoice_no` (`invoice_no`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `medicine_id` (`medicine_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invoice_no` (`invoice_no`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `sale_items`
--
ALTER TABLE `sale_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `medicine_id` (`medicine_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting_key` (`setting_key`);

--
-- Indexes for table `stock_log`
--
ALTER TABLE `stock_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medicine_id` (`medicine_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prescriptions`
--
ALTER TABLE `prescriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sale_items`
--
ALTER TABLE `sale_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `stock_log`
--
ALTER TABLE `stock_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `medicines`
--
ALTER TABLE `medicines`
  ADD CONSTRAINT `medicines_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `medicines_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD CONSTRAINT `prescriptions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`),
  ADD CONSTRAINT `purchases_ibfk_2` FOREIGN KEY (`medicine_id`) REFERENCES `medicines` (`id`),
  ADD CONSTRAINT `purchases_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `sale_items`
--
ALTER TABLE `sale_items`
  ADD CONSTRAINT `sale_items_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sale_items_ibfk_2` FOREIGN KEY (`medicine_id`) REFERENCES `medicines` (`id`);

--
-- Constraints for table `stock_log`
--
ALTER TABLE `stock_log`
  ADD CONSTRAINT `stock_log_ibfk_1` FOREIGN KEY (`medicine_id`) REFERENCES `medicines` (`id`),
  ADD CONSTRAINT `stock_log_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;
--
-- Database: `pharmacy_db`
--
CREATE DATABASE IF NOT EXISTS `pharmacy_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `pharmacy_db`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`) VALUES
(1, 'Antibiotics', 'Medicines used to treat bacterial infections', '2026-05-03 04:45:42'),
(2, 'Analgesics', 'Pain relief medications', '2026-05-03 04:45:42'),
(3, 'Antacids', 'Medicines for acidity and heartburn', '2026-05-03 04:45:42'),
(4, 'Vitamins', 'Vitamin and mineral supplements', '2026-05-03 04:45:42'),
(5, 'Antihistamines', 'Allergy relief medications', '2026-05-03 04:45:42'),
(6, 'Cardiovascular', 'Heart and blood pressure medicines', '2026-05-03 04:45:42'),
(7, 'Diabetes', 'Medicines for diabetes management', '2026-05-03 04:45:42'),
(8, 'Antiseptics', 'Wound cleaning and infection prevention', '2026-05-03 04:45:42');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `email`, `address`, `created_at`) VALUES
(1, 'Walk-in Customer', '0000000000', NULL, 'N/A', '2026-05-03 04:45:42'),
(2, 'Md. Abdullah', '01711111111', NULL, 'Mirpur, Dhaka', '2026-05-03 04:45:42'),
(3, 'Fatema Akter', '01811111111', NULL, 'Gulshan, Dhaka', '2026-05-03 04:45:42'),
(4, 'Hasan Ali', '01911111111', NULL, 'Mohammadpur, Dhaka', '2026-05-03 04:45:42');

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `generic_name` varchar(150) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `unit` varchar(50) DEFAULT 'pcs',
  `purchase_price` decimal(10,2) DEFAULT 0.00,
  `sale_price` decimal(10,2) DEFAULT 0.00,
  `stock_qty` int(11) DEFAULT 0,
  `min_stock` int(11) DEFAULT 10,
  `batch_number` varchar(50) DEFAULT NULL,
  `manufacture_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`id`, `name`, `generic_name`, `category_id`, `supplier_id`, `unit`, `purchase_price`, `sale_price`, `stock_qty`, `min_stock`, `batch_number`, `manufacture_date`, `expiry_date`, `description`, `status`, `created_at`) VALUES
(1, 'Napa 500mg', 'Paracetamol', 2, 1, 'tablet', 0.50, 1.00, 489, 50, NULL, NULL, '2026-12-31', NULL, 'active', '2026-05-03 04:45:42'),
(2, 'Amoxil 500mg', 'Amoxicillin', 1, 2, 'capsule', 5.00, 8.00, 200, 30, NULL, NULL, '2026-06-30', NULL, 'active', '2026-05-03 04:45:42'),
(3, 'Ranitidine 150mg', 'Ranitidine', 3, 3, 'tablet', 1.50, 3.00, 300, 40, NULL, NULL, '2025-12-31', NULL, 'active', '2026-05-03 04:45:42'),
(4, 'Vitamin C 500mg', 'Ascorbic Acid', 4, 1, 'tablet', 2.00, 4.00, 400, 50, NULL, NULL, '2027-03-31', NULL, 'active', '2026-05-03 04:45:42'),
(5, 'Cetirizine 10mg', 'Cetirizine HCl', 5, 4, 'tablet', 2.50, 5.00, 150, 25, NULL, NULL, '2026-09-30', NULL, 'active', '2026-05-03 04:45:42'),
(6, 'Metformin 500mg', 'Metformin HCl', 7, 2, 'tablet', 3.00, 6.00, 250, 30, NULL, NULL, '2026-12-31', NULL, 'active', '2026-05-03 04:45:42'),
(7, 'Amlodipine 5mg', 'Amlodipine', 6, 3, 'tablet', 4.00, 8.00, 180, 20, NULL, NULL, '2026-08-31', NULL, 'active', '2026-05-03 04:45:42'),
(8, 'Dettol 100ml', 'Chloroxylenol', 8, 1, 'bottle', 25.00, 45.00, 80, 15, NULL, NULL, '2027-01-31', NULL, 'active', '2026-05-03 04:45:42'),
(9, 'Flagyl 400mg', 'Metronidazole', 1, 4, 'tablet', 3.50, 7.00, 220, 30, NULL, NULL, '2026-05-31', NULL, 'active', '2026-05-03 04:45:42'),
(10, 'Vitamin B Complex', 'B-Vitamins', 4, 2, 'tablet', 1.50, 3.50, 350, 50, NULL, NULL, '2027-06-30', NULL, 'active', '2026-05-03 04:45:42');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(11) NOT NULL,
  `invoice_no` varchar(20) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT 0.00,
  `paid_amount` decimal(10,2) DEFAULT 0.00,
  `status` enum('received','pending','partial') DEFAULT 'received',
  `notes` text DEFAULT NULL,
  `purchase_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_items`
--

CREATE TABLE `purchase_items` (
  `id` int(11) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `medicine_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `total_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `invoice_no` varchar(20) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT 0.00,
  `discount` decimal(10,2) DEFAULT 0.00,
  `tax` decimal(10,2) DEFAULT 0.00,
  `total` decimal(10,2) DEFAULT 0.00,
  `paid_amount` decimal(10,2) DEFAULT 0.00,
  `change_amount` decimal(10,2) DEFAULT 0.00,
  `payment_method` enum('cash','card','mobile') DEFAULT 'cash',
  `notes` text DEFAULT NULL,
  `sale_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `invoice_no`, `customer_id`, `user_id`, `subtotal`, `discount`, `tax`, `total`, `paid_amount`, `change_amount`, `payment_method`, `notes`, `sale_date`) VALUES
(1, 'INV-20260503-FB629C', 3, 1, 6.00, 0.00, 0.00, 6.00, 50.00, 44.00, 'cash', '', '2026-05-03 04:46:55'),
(2, 'INV-20260503-27DCF6', 3, 1, 5.00, 0.00, 0.00, 5.00, 10.00, 5.00, 'cash', '', '2026-05-03 06:57:06');

-- --------------------------------------------------------

--
-- Table structure for table `sale_items`
--

CREATE TABLE `sale_items` (
  `id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `medicine_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `total_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sale_items`
--

INSERT INTO `sale_items` (`id`, `sale_id`, `medicine_id`, `quantity`, `unit_price`, `total_price`) VALUES
(1, 1, 1, 6, 1.00, 6.00),
(2, 2, 1, 5, 1.00, 5.00);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `contact_person` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `contact_person`, `phone`, `email`, `address`, `status`, `created_at`) VALUES
(1, 'Square Pharmaceuticals', 'Karim Uddin', '01700000001', 'karim@square.com', 'Dhaka, Bangladesh', 'active', '2026-05-03 04:45:42'),
(2, 'Beximco Pharma', 'Rina Khatun', '01700000002', 'rina@beximco.com', 'Gazipur, Bangladesh', 'active', '2026-05-03 04:45:42'),
(3, 'ACI Limited', 'Shafiq Islam', '01700000003', 'shafiq@aci.com', 'Narayanganj, Bangladesh', 'active', '2026-05-03 04:45:42'),
(4, 'Incepta Pharma', 'Nadia Begum', '01700000004', 'nadia@incepta.com', 'Savar, Bangladesh', 'active', '2026-05-03 04:45:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `role` enum('admin','pharmacist','cashier') DEFAULT 'cashier',
  `status` enum('active','inactive') DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `full_name`, `email`, `phone`, `role`, `status`, `created_at`) VALUES
(1, 'admin', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Admin-Ridu', 'redayh8888@gmail.com', '01319478114', 'admin', 'active', '2026-05-03 04:45:42'),
(2, 'pharmacist1', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ridoy', 'rahman@pharmacy.com', '01618049034', 'pharmacist', 'active', '2026-05-03 04:45:42'),
(3, 'cashier1', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'polok', 'hasibulpolokbdn@pharmacy.com', '01765697395', 'cashier', 'active', '2026-05-03 04:45:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invoice_no` (`invoice_no`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_id` (`purchase_id`),
  ADD KEY `medicine_id` (`medicine_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invoice_no` (`invoice_no`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `sale_items`
--
ALTER TABLE `sale_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `medicine_id` (`medicine_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_items`
--
ALTER TABLE `purchase_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sale_items`
--
ALTER TABLE `sale_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `medicines`
--
ALTER TABLE `medicines`
  ADD CONSTRAINT `medicines_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `medicines_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `purchases_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD CONSTRAINT `purchase_items_ibfk_1` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchase_items_ibfk_2` FOREIGN KEY (`medicine_id`) REFERENCES `medicines` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `sale_items`
--
ALTER TABLE `sale_items`
  ADD CONSTRAINT `sale_items_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sale_items_ibfk_2` FOREIGN KEY (`medicine_id`) REFERENCES `medicines` (`id`) ON DELETE CASCADE;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"batch 70\",\"table\":\"users\"},{\"db\":\"ridu\",\"table\":\"manufacture\"},{\"db\":\"ridu\",\"table\":\"product\"},{\"db\":\"student_reg\",\"table\":\"users\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2026-04-19 04:59:20', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"en_GB\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `portfolio_db`
--
CREATE DATABASE IF NOT EXISTS `portfolio_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `portfolio_db`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `email`, `full_name`, `created_at`) VALUES
(1, 'admin', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'redayh8888@gmail.com', 'Shamim Hossain Ridoy', '2026-05-03 04:47:30');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(200) NOT NULL,
  `subject` varchar(300) DEFAULT NULL,
  `message` text NOT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `email`, `subject`, `message`, `is_read`, `created_at`) VALUES
(1, 'ridu', 'redayboss7@gmail.com', 'test', 'polok biy korca', 0, '2026-05-03 04:53:13');

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE `experience` (
  `id` int(11) NOT NULL,
  `job_title` varchar(200) NOT NULL,
  `company` varchar(200) NOT NULL,
  `location` varchar(200) DEFAULT NULL,
  `start_date` varchar(50) DEFAULT NULL,
  `end_date` varchar(50) DEFAULT NULL,
  `is_current` tinyint(1) DEFAULT 0,
  `description` text DEFAULT NULL,
  `sort_order` int(11) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`id`, `job_title`, `company`, `location`, `start_date`, `end_date`, `is_current`, `description`, `sort_order`, `is_active`, `created_at`) VALUES
(1, 'Senior Full Stack Developer', 'Freelance / Remote', 'Dhaka, Bangladesh', 'Jan 2022', 'Present', 1, 'Working with international clients on e-commerce, management systems, and custom web apps using PHP, Laravel, React JS, and MySQL.', 1, 1, '2026-05-03 04:47:30'),
(2, 'Web Developer', 'Digital Agency BD', 'Dhaka, Bangladesh', 'Jan 2021', 'Dec 2021', 0, 'Developed and maintained client websites. Implemented pixel-perfect responsive interfaces with Bootstrap and jQuery.', 2, 1, '2026-05-03 04:47:30'),
(3, 'Junior PHP Developer', 'SoftTech Bangladesh', 'Dhaka, Bangladesh', 'Jan 2020', 'Dec 2020', 0, 'Built custom PHP applications, MySQL databases, Bootstrap frontends and learned Laravel framework fundamentals.', 3, 1, '2026-05-03 04:47:30');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `full_description` text DEFAULT NULL,
  `technologies` varchar(500) DEFAULT NULL,
  `category` varchar(50) DEFAULT 'web',
  `live_url` varchar(300) DEFAULT NULL,
  `github_url` varchar(300) DEFAULT NULL,
  `thumbnail` varchar(300) DEFAULT NULL,
  `is_featured` tinyint(1) DEFAULT 0,
  `sort_order` int(11) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `short_description`, `full_description`, `technologies`, `category`, `live_url`, `github_url`, `thumbnail`, `is_featured`, `sort_order`, `is_active`, `created_at`) VALUES
(1, 'PharmaCare PMS', 'Complete pharmacy management system — POS, medicine inventory, expiry alerts, purchase tracking & detailed chart-based reports', 'PharmaCare PMS is a full-featured Pharmacy Management System built with PHP 8 & MySQL. It includes a powerful Point of Sale (POS) module, medicine inventory management, supplier & purchase tracking, full sales history, customer management with loyalty tracking, medicine expiry alerts with dashboard notifications, detailed Chart.js-powered reports, and a secure multi-user admin panel with role-based access control. The responsive UI is built with Bootstrap 5 and Bootstrap Icons for a clean, professional dashboard experience.', 'PHP 8, MySQL, Bootstrap 5, Bootstrap Icons, Chart.js, JavaScript, Ajax', 'web', 'http://localhost/php_project_updated/files/PharmaCare_PMS_Ridoy/pharmcare_final/', 'https://github.com/sh-ridoy', NULL, 1, 0, 1, '2026-05-03 04:47:30'),
(2, 'E-Commerce Platform', 'Full-featured store with payment gateway & inventory', NULL, 'Laravel, MySQL, React JS, Bootstrap, Stripe', 'web', NULL, NULL, NULL, 1, 1, 1, '2026-05-03 04:47:30'),
(3, 'Hospital Management System', 'Complete HMS with patient & appointment management', NULL, 'PHP, MySQL, Bootstrap, jQuery, Ajax', 'web', NULL, NULL, NULL, 1, 2, 1, '2026-05-03 04:47:30'),
(4, 'Real Estate Portal', 'Property listings with advanced search & filters', NULL, 'Laravel, Vue JS, MySQL, Bootstrap', 'web', NULL, NULL, NULL, 1, 3, 1, '2026-05-03 04:47:30'),
(5, 'School Management System', 'Digital ERP for students, teachers & parents', NULL, 'PHP, MySQL, Bootstrap, jQuery', 'web', NULL, NULL, NULL, 0, 4, 1, '2026-05-03 04:47:30'),
(6, 'Inventory Management App', 'Stock tracking and inventory control system', NULL, 'Laravel, MySQL, React JS, Bootstrap', 'web', NULL, NULL, NULL, 0, 5, 1, '2026-05-03 04:47:30'),
(7, 'Restaurant POS System', 'Point of sale with billing & detailed reports', NULL, 'PHP, MySQL, Bootstrap, JavaScript', 'web', NULL, NULL, NULL, 0, 6, 1, '2026-05-03 04:47:30');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `sort_order` int(11) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `description`, `icon`, `sort_order`, `is_active`, `created_at`) VALUES
(1, 'Web Development', 'Full-stack web apps using PHP, Laravel & React JS with clean architecture and scalable code.', 'fas fa-code', 1, 1, '2026-05-03 04:47:30'),
(2, 'E-Commerce Solutions', 'Custom online stores with payment gateway, inventory management and order tracking.', 'fas fa-shopping-cart', 2, 1, '2026-05-03 04:47:30'),
(3, 'REST API Development', 'Robust, secure APIs for mobile apps and third-party integrations.', 'fas fa-plug', 3, 1, '2026-05-03 04:47:30'),
(4, 'Database Design', 'MySQL architecture, optimization, normalization and complex query performance tuning.', 'fas fa-database', 4, 1, '2026-05-03 04:47:30'),
(5, 'Frontend Development', 'Pixel-perfect, responsive UIs with Bootstrap, React JS and modern CSS.', 'fas fa-paint-brush', 5, 1, '2026-05-03 04:47:30'),
(6, 'Website Maintenance', 'Ongoing support, bug fixing, performance optimization and feature additions.', 'fas fa-tools', 6, 1, '2026-05-03 04:47:30');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `setting_key` varchar(100) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `setting_key`, `setting_value`, `updated_at`) VALUES
(1, 'hero_name', 'Shamim Ridoy', '2026-05-03 04:47:30'),
(2, 'hero_role', 'Full Stack Web Developer', '2026-05-03 04:47:30'),
(3, 'hero_subtitle', 'Building powerful, scalable web applications using PHP, Laravel, React JS & MySQL. Turning your ideas into real, stunning digital products.', '2026-05-03 04:47:30'),
(4, 'hero_badge', 'Available for Freelance & Remote Work', '2026-05-03 04:47:30'),
(5, 'hero_stat_years', '3+', '2026-05-03 04:47:30'),
(6, 'hero_stat_projects', '50+', '2026-05-03 04:47:30'),
(7, 'hero_stat_clients', '30+', '2026-05-03 04:47:30'),
(8, 'hero_stat_tech', '7+', '2026-05-03 04:47:30'),
(9, 'about_name', 'Md Shamim Hossain Ridoy', '2026-05-03 04:47:30'),
(10, 'about_bio1', 'I am <strong>Md Shamim Hossain Ridoy</strong>, a passionate Full Stack Web Developer based in Dhaka, Bangladesh. I build dynamic, scalable web applications from the ground up — from database architecture to polished frontends.', '2026-05-03 04:47:30'),
(11, 'about_bio2', 'My core stack includes PHP, Laravel, React JS, MySQL, HTML5/CSS3, JavaScript & Bootstrap. I\'ve delivered e-commerce platforms, management systems, REST APIs, and custom web solutions for clients locally and internationally.', '2026-05-03 04:47:30'),
(12, 'about_bio3', 'I take pride in writing clean, maintainable code and delivering projects on time. Whether it\'s a small business website or a large enterprise system — I bring the same passion to every project.', '2026-05-03 04:47:30'),
(13, 'contact_email', 'redayh8888@gmail.com', '2026-05-03 04:47:30'),
(14, 'contact_phone', '+880 1319478114', '2026-05-03 04:47:30'),
(15, 'contact_whatsapp', '8801319478114', '2026-05-03 04:47:30'),
(16, 'contact_location', 'Dhaka, Bangladesh', '2026-05-03 04:47:30'),
(17, 'social_github', 'https://github.com/sh-ridoy', '2026-05-03 04:47:30'),
(18, 'social_facebook', 'https://www.facebook.com/r.i.d.o.y.tsu.468918', '2026-05-03 04:47:30'),
(19, 'social_linkedin', 'https://www.facebook.com/r.i.d.o.y.tsu.468918', '2026-05-04 04:59:54'),
(20, 'footer_text', 'Designed & Developed by Md Shamim Hossain Ridoy', '2026-05-03 04:47:30'),
(21, 'available_status', '1', '2026-05-03 04:47:30'),
(22, 'profile_photo', 'http://localhost/portfolio/uploads/projects/../profile_1777870865.png', '2026-05-04 05:01:05');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `percentage` int(11) NOT NULL DEFAULT 80,
  `category` enum('frontend','backend','tools') NOT NULL DEFAULT 'frontend',
  `icon` varchar(100) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `sort_order` int(11) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `name`, `percentage`, `category`, `icon`, `color`, `sort_order`, `is_active`, `created_at`) VALUES
(1, 'HTML5', 98, 'frontend', 'fab fa-html5', '#e44d26', 1, 1, '2026-05-03 04:47:30'),
(2, 'CSS3', 95, 'frontend', 'fab fa-css3-alt', '#264de4', 2, 1, '2026-05-03 04:47:30'),
(3, 'JavaScript', 88, 'frontend', 'fab fa-js', '#f7df1e', 3, 1, '2026-05-03 04:47:30'),
(4, 'React JS', 85, 'frontend', 'fab fa-react', '#61dafb', 4, 1, '2026-05-03 04:47:30'),
(5, 'Bootstrap', 95, 'frontend', 'fab fa-bootstrap', '#7952b3', 5, 1, '2026-05-03 04:47:30'),
(6, 'PHP', 92, 'backend', 'fab fa-php', '#8892bf', 6, 1, '2026-05-03 04:47:30'),
(7, 'Laravel', 88, 'backend', 'fab fa-laravel', '#ff2d20', 7, 1, '2026-05-03 04:47:30'),
(8, 'MySQL', 90, 'backend', 'fas fa-database', '#00758f', 8, 1, '2026-05-03 04:47:30'),
(9, 'Git & GitHub', 85, 'tools', 'fab fa-git-alt', '#f05032', 9, 1, '2026-05-03 04:47:30'),
(10, 'REST API', 82, 'backend', 'fas fa-plug', '#00d4ff', 10, 1, '2026-05-03 04:47:30');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `client_name` varchar(150) NOT NULL,
  `client_position` varchar(200) DEFAULT NULL,
  `message` text NOT NULL,
  `rating` int(11) DEFAULT 5,
  `sort_order` int(11) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `client_name`, `client_position`, `message`, `rating`, `sort_order`, `is_active`, `created_at`) VALUES
(1, 'Ahmed Rahman', 'CEO, TechBD Solutions', 'Ridoy delivered an outstanding e-commerce platform. His attention to detail and timely delivery exceeded all our expectations. Highly recommended!', 5, 1, 1, '2026-05-03 04:47:30'),
(2, 'Farida Khanam', 'Director, MedCare Hospital', 'The hospital management system transformed our operations. Very professional, skilled, and responsive. We will definitely work with him again.', 5, 2, 1, '2026-05-03 04:47:30'),
(3, 'Karim Hassan', 'Founder, PropertyBD', 'Ridoy understood our requirements perfectly and delivered a feature-rich real estate portal on time and within budget.', 5, 3, 1, '2026-05-03 04:47:30'),
(4, 'Nadia Islam', 'Manager, EduSoft BD', 'Ridoy takes full ownership of the project. Our school management system works flawlessly. Very satisfied with his work!', 5, 4, 1, '2026-05-03 04:47:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting_key` (`setting_key`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `experience`
--
ALTER TABLE `experience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `ridu`
--
CREATE DATABASE IF NOT EXISTS `ridu` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ridu`;

-- --------------------------------------------------------

--
-- Table structure for table `manufacture`
--

CREATE TABLE `manufacture` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact no` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(5) NOT NULL,
  `manusfacturer_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `manufacture`
--
ALTER TABLE `manufacture`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `manufacture`
--
ALTER TABLE `manufacture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `ridu_bd`
--
CREATE DATABASE IF NOT EXISTS `ridu_bd` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ridu_bd`;
--
-- Database: `setup`
--
CREATE DATABASE IF NOT EXISTS `setup` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `setup`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`) VALUES
(1, 'Antibiotics', 'Medicines used to treat bacterial infections', '2026-04-28 05:01:28'),
(2, 'Analgesics', 'Pain relief medications', '2026-04-28 05:01:28'),
(3, 'Antacids', 'Medicines for acidity and heartburn', '2026-04-28 05:01:28'),
(4, 'Vitamins', 'Vitamin and mineral supplements', '2026-04-28 05:01:28'),
(5, 'Antihistamines', 'Allergy relief medications', '2026-04-28 05:01:28'),
(6, 'Cardiovascular', 'Heart and blood pressure medicines', '2026-04-28 05:01:28'),
(7, 'Diabetes', 'Medicines for diabetes management', '2026-04-28 05:01:28'),
(8, 'Antiseptics', 'Wound cleaning and infection prevention', '2026-04-28 05:01:28');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `email`, `address`, `created_at`) VALUES
(1, 'Walk-in Customer', '0000000000', NULL, 'N/A', '2026-04-28 05:01:28'),
(2, 'Md. Abdullah', '01711111111', NULL, 'Mirpur, Dhaka', '2026-04-28 05:01:28'),
(3, 'Fatema Akter', '01811111111', NULL, 'Gulshan, Dhaka', '2026-04-28 05:01:28'),
(4, 'Hasan Ali', '01911111111', NULL, 'Mohammadpur, Dhaka', '2026-04-28 05:01:28');

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `generic_name` varchar(150) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `unit` varchar(50) DEFAULT 'pcs',
  `purchase_price` decimal(10,2) DEFAULT 0.00,
  `sale_price` decimal(10,2) DEFAULT 0.00,
  `stock_qty` int(11) DEFAULT 0,
  `min_stock` int(11) DEFAULT 10,
  `batch_number` varchar(50) DEFAULT NULL,
  `manufacture_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`id`, `name`, `generic_name`, `category_id`, `supplier_id`, `unit`, `purchase_price`, `sale_price`, `stock_qty`, `min_stock`, `batch_number`, `manufacture_date`, `expiry_date`, `description`, `status`, `created_at`) VALUES
(1, 'Napa 500mg', 'Paracetamol', 2, 1, 'tablet', 0.50, 1.00, 500, 50, NULL, NULL, '2026-12-31', NULL, 'active', '2026-04-28 05:01:28'),
(2, 'Amoxil 500mg', 'Amoxicillin', 1, 2, 'capsule', 5.00, 8.00, 200, 30, NULL, NULL, '2026-06-30', NULL, 'active', '2026-04-28 05:01:28'),
(3, 'Ranitidine 150mg', 'Ranitidine', 3, 3, 'tablet', 1.50, 3.00, 300, 40, NULL, NULL, '2025-12-31', NULL, 'active', '2026-04-28 05:01:28'),
(4, 'Vitamin C 500mg', 'Ascorbic Acid', 4, 1, 'tablet', 2.00, 4.00, 400, 50, NULL, NULL, '2027-03-31', NULL, 'active', '2026-04-28 05:01:28'),
(5, 'Cetirizine 10mg', 'Cetirizine HCl', 5, 4, 'tablet', 2.50, 5.00, 150, 25, NULL, NULL, '2026-09-30', NULL, 'active', '2026-04-28 05:01:28'),
(6, 'Metformin 500mg', 'Metformin HCl', 7, 2, 'tablet', 3.00, 6.00, 250, 30, NULL, NULL, '2026-12-31', NULL, 'active', '2026-04-28 05:01:28'),
(7, 'Amlodipine 5mg', 'Amlodipine', 6, 3, 'tablet', 4.00, 8.00, 180, 20, NULL, NULL, '2026-08-31', NULL, 'active', '2026-04-28 05:01:28'),
(8, 'Dettol 100ml', 'Chloroxylenol', 8, 1, 'bottle', 25.00, 45.00, 80, 15, NULL, NULL, '2027-01-31', NULL, 'active', '2026-04-28 05:01:28'),
(9, 'Flagyl 400mg', 'Metronidazole', 1, 4, 'tablet', 3.50, 7.00, 220, 30, NULL, NULL, '2026-05-31', NULL, 'active', '2026-04-28 05:01:28'),
(10, 'Vitamin B Complex', 'B-Vitamins', 4, 2, 'tablet', 1.50, 3.50, 350, 50, NULL, NULL, '2027-06-30', NULL, 'active', '2026-04-28 05:01:28');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(11) NOT NULL,
  `invoice_no` varchar(20) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT 0.00,
  `paid_amount` decimal(10,2) DEFAULT 0.00,
  `status` enum('received','pending','partial') DEFAULT 'received',
  `notes` text DEFAULT NULL,
  `purchase_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_items`
--

CREATE TABLE `purchase_items` (
  `id` int(11) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `medicine_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `total_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `invoice_no` varchar(20) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT 0.00,
  `discount` decimal(10,2) DEFAULT 0.00,
  `tax` decimal(10,2) DEFAULT 0.00,
  `total` decimal(10,2) DEFAULT 0.00,
  `paid_amount` decimal(10,2) DEFAULT 0.00,
  `change_amount` decimal(10,2) DEFAULT 0.00,
  `payment_method` enum('cash','card','mobile') DEFAULT 'cash',
  `notes` text DEFAULT NULL,
  `sale_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sale_items`
--

CREATE TABLE `sale_items` (
  `id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `medicine_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `total_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `contact_person` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `contact_person`, `phone`, `email`, `address`, `status`, `created_at`) VALUES
(1, 'Square Pharmaceuticals', 'Karim Uddin', '01700000001', 'karim@square.com', 'Dhaka, Bangladesh', 'active', '2026-04-28 05:01:28'),
(2, 'Beximco Pharma', 'Rina Khatun', '01700000002', 'rina@beximco.com', 'Gazipur, Bangladesh', 'active', '2026-04-28 05:01:28'),
(3, 'ACI Limited', 'Shafiq Islam', '01700000003', 'shafiq@aci.com', 'Narayanganj, Bangladesh', 'active', '2026-04-28 05:01:28'),
(4, 'Incepta Pharma', 'Nadia Begum', '01700000004', 'nadia@incepta.com', 'Savar, Bangladesh', 'active', '2026-04-28 05:01:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `role` enum('admin','pharmacist','cashier') DEFAULT 'cashier',
  `status` enum('active','inactive') DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `full_name`, `email`, `phone`, `role`, `status`, `created_at`) VALUES
(1, 'admin', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'System Administrator', 'admin@pharmacy.com', NULL, 'admin', 'active', '2026-04-28 05:01:28'),
(2, 'pharmacist1', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Dr. Rahman Ali', 'rahman@pharmacy.com', NULL, 'pharmacist', 'active', '2026-04-28 05:01:28'),
(3, 'cashier1', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Fatima Begum', 'fatima@pharmacy.com', NULL, 'cashier', 'active', '2026-04-28 05:01:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invoice_no` (`invoice_no`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_id` (`purchase_id`),
  ADD KEY `medicine_id` (`medicine_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invoice_no` (`invoice_no`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `sale_items`
--
ALTER TABLE `sale_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `medicine_id` (`medicine_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_items`
--
ALTER TABLE `purchase_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sale_items`
--
ALTER TABLE `sale_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `medicines`
--
ALTER TABLE `medicines`
  ADD CONSTRAINT `medicines_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `medicines_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `purchases_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD CONSTRAINT `purchase_items_ibfk_1` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchase_items_ibfk_2` FOREIGN KEY (`medicine_id`) REFERENCES `medicines` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `sale_items`
--
ALTER TABLE `sale_items`
  ADD CONSTRAINT `sale_items_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sale_items_ibfk_2` FOREIGN KEY (`medicine_id`) REFERENCES `medicines` (`id`) ON DELETE CASCADE;
--
-- Database: `shop_db`
--
CREATE DATABASE IF NOT EXISTS `shop_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `shop_db`;

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `name`, `contact`) VALUES
(1, 'Samsung', '01711111111'),
(2, 'Apple', '01822222222'),
(3, 'Xiaomi', '01933333333'),
(4, 'mac', '01618049034');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(50) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `brand_id`, `product_image`) VALUES
(4, 'redmi', '20000', 3, '1776085474_WhatsApp Image 2026-03-31 at 12.09.55 AM.jpeg'),
(5, 'redmi', '20000', 1, '1776085474_WhatsApp Image 2026-03-31 at 12.09.55 AM.jpeg'),
(6, 'phone', '20000', 4, 'Screenshot 2026-04-27 123638.png'),
(7, 'phone', '20000', 4, 'Screenshot 2026-04-27 123638.png'),
(8, 'phone', '20000', 4, 'Screenshot 2026-04-27 123638.png'),
(9, 'phone', '20000', 4, 'Screenshot 2026-04-27 123638.png'),
(10, 'phone', '20000', 4, 'Screenshot 2026-04-27 123638.png'),
(11, 'redmi', '', 2, 'Screenshot 2026-01-11 094433.png'),
(12, 'redmi', '', 2, 'Screenshot 2026-01-11 094433.png');

-- --------------------------------------------------------

--
-- Stand-in structure for view `product_view`
-- (See below for the actual view)
--
CREATE TABLE `product_view` (
`id` int(11)
,`product_name` varchar(100)
,`price` varchar(50)
,`brand_name` varchar(100)
,`product_image` varchar(255)
);

-- --------------------------------------------------------

--
-- Structure for view `product_view`
--
DROP TABLE IF EXISTS `product_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `product_view`  AS SELECT `products`.`id` AS `id`, `products`.`name` AS `product_name`, `products`.`price` AS `price`, `brand`.`name` AS `brand_name`, `products`.`product_image` AS `product_image` FROM (`products` join `brand` on(`products`.`brand_id` = `brand`.`id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`) ON DELETE CASCADE;
--
-- Database: `student_management`
--
CREATE DATABASE IF NOT EXISTS `student_management` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `student_management`;
--
-- Database: `student_reg`
--
CREATE DATABASE IF NOT EXISTS `student_reg` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `student_reg`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`) VALUES
(1, 'ridoy', 'redayh8888@gmail.com'),
(2, 'ridu', 'redayboss7@gmail.com');
--
-- Database: `task`
--
CREATE DATABASE IF NOT EXISTS `task` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `task`;

-- --------------------------------------------------------

--
-- Table structure for table `manufacture`
--

CREATE TABLE `manufacture` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact_no` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` double(10,2) NOT NULL,
  `manufacturer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `manufacture`
--
ALTER TABLE `manufacture`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `manufacture`
--
ALTER TABLE `manufacture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `test_db`
--
CREATE DATABASE IF NOT EXISTS `test_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `test_db`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
