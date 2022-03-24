
--
-- Database: `homeservice`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(200) DEFAULT NULL,
  `UserName` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `Regdate` timestamp varcahr(5000)
) ;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `Regdate`) VALUES
(1, 'Admin', 'admin', 9638527410, 'admin@gmail.com', '0192023a7bbd73250516f069df18b500', '2020-06-14 11:29:43');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrand`
--

CREATE TABLE `tblbrand` (
  `ID` int(10) NOT NULL,
  `BrandName` varchar(200) DEFAULT NULL,
  `BrandLogo` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp varcahr(5000)
) ;

--
-- Dumping data for table `tblbrand`
--

INSERT INTO `tblbrand` (`ID`, `BrandName`, `BrandLogo`, `CreationDate`) VALUES
(1, 'LG(Life Good)', '8b7029a2a97c7df455dfb110aa75285c1592202199.jpg', '2020-06-15 06:23:19'),
(2, 'Lloyd', '99c6911037be58e026a13bd0d4e068931592202284.jpg', '2020-06-15 06:24:44'),
(3, 'Voltas', 'e01e7d10da4a69f5cfd5a882d37044521592202390.png', '2020-06-15 06:26:30'),
(4, 'Daikin', 'c92248b824fbaaeb96ecacdb99ce52e21592202437.png', '2020-06-15 06:27:17'),
(5, 'Mitsubishi ELectric.', '2cc8a155d9f8c633538f6128bf6428841592202491.png', '2020-06-15 06:28:11'),
(6, 'Blue Star', '1dd21cd7e265585a3171aeb9df9581df1592291547.png', '2020-06-15 06:28:58');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` varcahr(5000)
) ;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About us', '<span style=\"color: rgb(25, 25, 25); font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">On Demand Home Service System&nbsp;is dedicated to being performed with the use of genuine spare parts so there will be dignity to Home Appliances without compromising the quality of work at an affordable cost.&nbsp;Fixed-price, We don\'t have any hidden charges. Whether you\'re searching for On Demand Home Service System&nbsp;in India, faulty parts replacement, or gas charging, ProOne professionals can fix it.&nbsp;With a remarkably trained &amp; specialize group of expert service technicians team near you for all Home Appliances&nbsp;repair and service,&nbsp;we have been providing services&nbsp;in all over India.?</span><div><br></div>', NULL, NULL, '2022-02-03 06:28:45'),
(2, 'contactus', 'Contact Us', '#890 CFG Apartment, Mayur Nagar, Erode-India.', 'info@gmail.com', 9876543210, '2022-02-03 06:29:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblrequest`
--

CREATE TABLE `tblrequest` (
  `ID` int(10) NOT NULL,
  `UserID` int(5) DEFAULT NULL,
  `ServiceNumber` varchar(10) DEFAULT NULL,
  `BrandName` varchar(50) DEFAULT NULL,
  `ACtype` varchar(100) DEFAULT NULL,
  `Problem` varchar(200) DEFAULT NULL,
  `ProblemDesc` mediumtext DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `DateofService` varchar(200) DEFAULT NULL,
  `SuitableTime` varchar(200) DEFAULT NULL,
  `ReqDate` timestamp varcahr(5000),
  `Status` varchar(50) DEFAULT NULL,
  `AssignTo` varchar(120) DEFAULT NULL,
  `Remark` varchar(200) DEFAULT NULL,
  `ServiceCharge` decimal(10,2) DEFAULT NULL,
  `PartCharge` decimal(10,2) DEFAULT NULL,
  `OtherCharge` decimal(10,2) DEFAULT NULL,
  `ResponseDate` varcahr(5000)
) ;

--
-- Dumping data for table `tblrequest`
--

INSERT INTO `tblrequest` (`ID`, `UserID`, `ServiceNumber`, `BrandName`, `ACtype`, `Problem`, `ProblemDesc`, `Address`, `DateofService`, `SuitableTime`, `ReqDate`, `Status`, `AssignTo`, `Remark`, `ServiceCharge`, `PartCharge`, `OtherCharge`, `ResponseDate`) VALUES
(10, 10, '550456168', 'LG', 'Television', 'Installation', ' New TV Installation', ' 34, KK Road, Erode', '2022-02-03', '18:00', '2022-02-03 09:57:46', 'Completed', 'Tech101', 'Completed', '1500.00', '0.00', '100.00', '2022-02-03 10:27:04'),
(11, 10, '494497183', 'LO', 'Refrigerator', 'Service', ' q', ' q', '2022-03-12', '12:00', '2022-02-03 09:58:43', 'Request Cancelled', NULL, 'Ok', NULL, NULL, NULL, '2022-02-03 09:58:59');

-- --------------------------------------------------------

--
-- Table structure for table `tbltechnician`
--

CREATE TABLE `tbltechnician` (
  `ID` int(10) NOT NULL,
  `TechnicianID` varchar(50) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Address` varchar(200) NOT NULL,
  `ProfilePic` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `JoiningDate` timestamp varcahr(5000)
) ;

--
-- Dumping data for table `tbltechnician`
--

INSERT INTO `tbltechnician` (`ID`, `TechnicianID`, `Name`, `MobileNumber`, `Email`, `Address`, `ProfilePic`, `Password`, `JoiningDate`) VALUES
(1, 'Tech101', 'Kaja', 9987798756, 'kaja@gmail.com', 'Erode', 'b9fb9d37bdf15a699bc071ce49baea531592309361.jpg', '12bce374e7be15142e8172f668da00d8', '2020-06-16 12:12:36'),
(2, 'Tech102', 'John', 9788798789, 'john@gmail.com', 'Coimbatore', 'b9fb9d37bdf15a699bc071ce49baea531592309917.jpg', '202cb962ac59075b964b07152d234b70', '2020-06-16 12:18:37'),
(3, 'Tech103', 'Mohan R', 7464713871, 'mohan@gmail.com', 'Pollachi', 'b9fb9d37bdf15a699bc071ce49baea531592310080.jpg', '202cb962ac59075b964b07152d234b70', '2020-06-16 12:21:20'),
(4, 'Tech104', 'Mani', 8956231456, 'mani@gmail.com', 'Erode', '32531134baef2c7a9709c78da6b68ee01643885450.jpg', '202cb962ac59075b964b07152d234b70', '2022-02-03 10:50:50');

-- --------------------------------------------------------

--
-- Table structure for table `tbltracking`
--

CREATE TABLE `tbltracking` (
  `ID` int(10) NOT NULL,
  `ServiceNumber` varchar(200) DEFAULT NULL,
  `Remark` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `OrderCanclledByUser` int(2) DEFAULT NULL,
  `UpdationDate` timestamp varcahr(5000)
) ;

--
-- Dumping data for table `tbltracking`
--

INSERT INTO `tbltracking` (`ID`, `ServiceNumber`, `Remark`, `Status`, `OrderCanclledByUser`, `UpdationDate`) VALUES
(1, '608624570', 'Assign to technician', 'Approved', NULL, NULL),
(2, '853376934', 'Technician not available', 'Unapproved', NULL, NULL),
(9, '608624570', 'Request has been completed', 'Completed', NULL, NULL),
(10, '618119209', 'Your request has been approved', 'Approved', NULL, '2020-06-19 11:44:33'),
(11, '618119209', 'Your request has been approved', 'Approved', NULL, '2020-06-19 11:59:53'),
(14, '242792788', 'I want to cancel this request', 'Request Cancelled', 1, '2020-06-20 07:22:30'),
(15, '253051923', 'Cancel', 'Request Cancelled', 1, '2020-06-22 06:32:33'),
(16, '939366164', 'Cancelled due to insufficient data', 'Request Cancelled', NULL, '2020-06-22 06:48:28'),
(17, '372023717', 'Your request has been approved', 'Approved', NULL, '2020-06-23 06:32:43'),
(18, '514345404', 'Your request has been approved', 'Approved', NULL, '2020-06-23 11:20:18'),
(19, '372023717', 'Service has been completed', 'Completed', NULL, '2020-06-23 11:34:41'),
(20, '683804387', 'Your request is accepted', 'Approved', NULL, '2020-07-07 03:13:53'),
(21, '683804387', 'Service completed', 'Completed', NULL, '2020-07-07 03:17:17'),
(22, '494497183', 'Ok', 'Request Cancelled', 1, '2022-02-03 09:58:59'),
(23, '550456168', 'New', 'Approved', NULL, '2022-02-03 10:13:17'),
(24, '550456168', 'Completed', 'Completed', NULL, '2022-02-03 10:27:03');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(200) DEFAULT NULL,
  `LastName` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `RegDate` timestamp varcahr(5000)
) ;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FirstName`, `LastName`, `MobileNumber`, `Email`, `Password`, `RegDate`) VALUES
(1, 'Kiran', 'Mukherji', 6789797979, 'kiran@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-06-16 14:50:21'),
(10, 'Raja', 'Mohammed', 9876543256, 'raja@gmail.com', '202cb962ac59075b964b07152d234b70', '2022-02-03 09:36:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbrand`
--
ALTER TABLE `tblbrand`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BrandName` (`BrandName`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblrequest`
--
ALTER TABLE `tblrequest`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ServiceNumber` (`ServiceNumber`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `tbltechnician`
--
ALTER TABLE `tbltechnician`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TechnicianID` (`TechnicianID`);

--
-- Indexes for table `tbltracking`
--
ALTER TABLE `tbltracking`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbrand`
--
ALTER TABLE `tblbrand`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblrequest`
--
ALTER TABLE `tblrequest`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbltechnician`
--
ALTER TABLE `tbltechnician`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbltracking`
--
ALTER TABLE `tbltracking`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;
