-- Create the santaplaza database if it doesn't exist
CREATE DATABASE IF NOT EXISTS santaplaza;

-- Use the newly created database
USE santaplaza;

-- Table structure for table `admin`
CREATE TABLE IF NOT EXISTS `admin` (
  `SID` int(6) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(25) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `image_url` text NOT NULL DEFAULT '1.png',
  `LOGIN_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`SID`),
  KEY `LOGIN_ID` (`LOGIN_ID`),
  CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`LOGIN_ID`) REFERENCES `login` (`LOGIN_ID`) ON DELETE CASCADE
);

-- Table structure for table `a_issues`
CREATE TABLE IF NOT EXISTS `a_issues` (
  `SID` int(6) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) NOT NULL,
  `CONTACT` varchar(50) NOT NULL,
  `CNIC` varchar(50) NOT NULL,
  `ISSUE` varchar(150) NOT NULL,
  `LOGIN_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`SID`),
  KEY `LOGIN_ID` (`LOGIN_ID`),
  CONSTRAINT `a_issues_ibfk_1` FOREIGN KEY (`LOGIN_ID`) REFERENCES `login` (`LOGIN_ID`) ON DELETE SET NULL
);

-- Table structure for table `services`
CREATE TABLE IF NOT EXISTS `services` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `name` VARCHAR(100) NOT NULL,
  `description` TEXT,
  `image` VARCHAR(255)
);

-- Insert data into `admin`
INSERT INTO `admin` (`SID`, `NAME`, `EMAIL`, `image_url`, `LOGIN_ID`) VALUES
(1, 'Admin', 'Admin@gmail.com', '1.png', 2);

-- Insert data into `a_issues`
INSERT INTO `a_issues` (`SID`, `NAME`, `CONTACT`, `CNIC`, `ISSUE`, `LOGIN_ID`) VALUES
(1, 'NONE', '****', '35202-*******-9', 'NO ENTRY', 2),
(2, 'kelvin', '01137353445', '123456789098764', 'drr', 4);

-- Insert data into `services`
INSERT INTO `services` (`name`, `description`, `image`) VALUES
('Santa Plaza Supermarket', 'Witness the fantasy of a one-stop shop for a delightful shopping experience.', 'ssanta.png'),
('Santa Plaza Furniture', 'Make your home a sweet paradise.', 'santaplazafurniture.jpg'),
('Clothing Shop', 'Indulge in a wide range of cuisines from our diverse selection of clothing lines.', 'santaplazafashion.jpg'),
('Event Spaces', 'Make your dream event a reality with our fully equipped event spaces. Perfect for festive gatherings, conferences, or social events.', 'santa_event.png'),
('Santa\'s Workshop (Kids\' Entertainment)', 'Keep your little ones entertained at Santa\'s Workshop, featuring fun activities and meet-and-greets with Santa himself!', 'playground.png'),
('Gift Wrapping Services', 'Take the stress out of gift-giving with our professional gift wrapping services. We\'ll make your presents look festive and beautiful.', 'giftwrap.png'),
('Convenient Parking', 'Enjoy hassle-free parking with ample spaces available throughout the center.', 'parkinglot.jpg'),
('Executive Barbershop', 'Experience luxury grooming services at our Executive Barbershop. We offer premium haircuts, shaves, and grooming treatments in a sophisticated environment.', 'cutmeloose(1)(1).png');
