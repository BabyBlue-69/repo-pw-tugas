-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 10 Mei 2019 pada 10.45
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tubes`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil`
--

CREATE TABLE `mobil` (
  `id` int(11) NOT NULL,
  `Nama` varchar(64) NOT NULL,
  `Mesin` varchar(64) NOT NULL,
  `Fitur` varchar(512) NOT NULL,
  `Warna` varchar(32) NOT NULL,
  `Gambar` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mobil`
--

INSERT INTO `mobil` (`id`, `Nama`, `Mesin`, `Fitur`, `Warna`, `Gambar`) VALUES
(3, 'BMW 3 Series 335i xDrive', '1.955cc in-Line/4 cylinder WITH TURBO 250hp @5.800RPM', 'ABS,AC Dual Zone, Paddle Shift, Cruise Control, Suncroof, Auto Wiper + Lights, Tailgate Spoiler, BMW Adaptive LED, Smart Assist, BMW xDrive System', 'Orange Sunset', '3.png'),
(4, 'BMW 4 Series 428i Convertible', '1.997cc 4 cylinder WITH TURBO 245hp @4.400RPM', 'Leather Dakota, Auto AC With Dual Zone Control, Electrical Seat with Memory, M leather steering, Bi-Xenon headlights, Cruise Control with Breaking Function, Adaptive M Suspension, Brake Energy Regeneration, Harman Kardon Surround Sound System, iDrive Touch Controller, 16 loudspeakers 600W, BMW Apps, BMW Navigation System Professional, Runflat Tyres, M Sport Package, Sport Line, ABS, CBC, Crash Sensor, DSC, DTC, HSA, Fading Compensation, Dynamic Braking Lights, Flashing, Integrated side impact protection', 'Orange Sunset', '4c.png'),
(5, 'BMW 5 Series 535i M Sport', '1.997cc 6cylinder WITH TURBO 306hp/400Nm ', 'M Sport Package, Dynamic Braking Lights, Crash Sensor, DSC, DTC, ABS, CBC, Brake Stand-by, Brake Drying, Leather Dakota, 18'' M light alloy wheels double spoke, interior trim with aluminium finishes, M seat, M leather steering, automatic AC with Four-zone Control, Adaptive LED Headlights with HIGH BEAM assist, Auto start/stop function, park distance control (PDC), 8-Speed Steptonic Sport Transmision, Comfort Acces System, Multifuncional instrument display, Black panel technology', 'Iron Silver', '5.png'),
(6, 'BMW 6 Series 640i Gran Turismo', '2.979cc 6Cylinder WITH TURBO 320hp/450Nm', 'Active Protection, DSC, DTC, ASC, ABS, DBC, CBC, pullaway assistant, braking readlines, dynamic braking lights, M Sport Package, 19'' M light alloy wheels double-spoke, Runflat tyres, M door sill Strips, instrument panel with leather finish,leather dakota,fot-close function for doors, floor mats in velour, multifunctional instrument display, adaptive LED headlights with high-beam assistance, launch control, PDC front and rear, LED fog lights, servotronic, Bang & Olufsen high-end surround system', 'White Pearl', '6gt.png'),
(7, 'BMW X5 xDrive35i', '2.979cc 6Cylinder WITH TURBO 8-AT 306hp/400Nm ', 'Brake assist, Brake force display, Bumper System, Rollover Sensor, DSC, HSA, Brake Drying, Brake Stand-by, Fading compensation, DTC, M Sports package, Roof rails aluminium satinited, 19'' M light alloy wheels double-spoke, Leather Dakota, interior finishes aluminium Hexagon, automatic operation Tailgates, panorama Glass roof, BMW TWIN POWER TURBO engine with turbocharger, xenon light, adaptive led headlights, adaptive M sport, Electronic gear selection lever, Bang & Oulfsen High End Surround sound system', 'White Pearl', 'x5.png'),
(8, 'BMW X1 sDrive18i', '1.499cc 3Cylinder WITH TURBO 136hp/220Nm', 'Three-Stage DSC (DSC/DTC/DSC-OFF), pull-away asisstant, braking readliness, dry braking, fading compensation, EDLC (Electrically Controlled Differential Lock Control), Roof Rails Aluminium satinited, 18'' light alloy wheels Y-spoke, leather dakota, interrior trim finishers Black high-gloss, fine-wood trim oak grain matt, panorama glass roof 2, automatic AC with two-zone control, performance control, servotronic, PDC, Attentiveness Assistant, LED headlights with extended contents', 'White Pearl', 'x1.png'),
(9, 'BMW M5', '4.395cc V8 560hp @6.000-7.000Rpm 680Nm @1.500-5.750Rpm', 'ABS, Dynamic braking lights, DSC, M compound disc brakes, perforated, M dynamic mode (MDM), 19'' M light alloy wheels double-spoke, M mobility system, Leather Merino, automatic 4 zone AC, Lumbar Support for driver and front passenger, M Drive, M aluminium gearshift paddles, M leather steering, active M differential, Adaptive LED Headlights, High-beam Asisstance, BMW Head-up display M display, Mservotronic, xDrive with M specific Setting, panorama glass roof, Harman Kardon Surround Sound System', 'Blue Pacific', 'm5.png'),
(10, 'BMW I8 Roadster', '1.500cc TWIN POWER TURBO 3Cylinder + EDrive 369hp/420Nm', 'SOS Button, EAC, ADA, FCW, PPCCM, ABS, ALR, BMW LED accent ligts with BMW i "U-shape", Power Recratable Softtop, Power-folding, heated side mirrors, 3-stage heated front seat, Carbon fiber interior trim, Harman Kardon premium sound audio system, iDrive system, Advanced real time traffic information, BMW Teleservice', 'Golden Metallic', 'i8rs.png'),
(11, 'BMW M3', '3.000cc M TWIN POWER TURBO 6-Cylinder 431hp/550Nm 7-speed DCT', 'M compund brakes, Dynamic Braking Lights, DSC, DTC, ASC, ABS, DBC, CBC< pullaway assistant, M dynamic mode, Active M differential, M double tailpipes, M wing Mirrors, Air breather, M kidney grille, M strakes, 19'' M light alloy wheels Double-spoke, cloth/leather carbon structure, carbon fibre with black chrome, BMW individual headliner anthracite, M seats, M leather steering, Adaptive LED headlights with high beam assist, Bi-Xenon Headlights, Adaptive M suspension, M servotronic, PDC front and rear', 'Blue Sky', 'm3.png'),
(12, 'BMW M4 Coupe', '3.000cc M TWIN POWER TURBO 6-Cylinder 431hp/550Nm 7-speed DCT', 'M compund brakes, Dynamic Braking Lights, DSC, DTC, ASC, ABS, DBC, CBC< pullaway assistant, M dynamic mode, Active M differential, M double tailpipes, M wing Mirrors, Air breather, M kidney grille, M strakes, 19'' M light alloy wheels Double-spoke, cloth/leather carbon structure, carbon fibre with black chrome, BMW individual headliner anthracite, M seats, M leather steering, Adaptive LED headlights with high beam assist, Bi-Xenon Headlights, Adaptive M suspension, M servotronic, PDC front and rear', 'Orange Sunset', 'm4.png'),
(13, 'toyota kijang innova', '2.000cc VVTI', 'test', 'black metallic', 'i8rs.png'),
(14, 'toyota kijang innova', '2.000cc ', 'test', 'black metallic', 'i8r.png'),
(15, 'toyota kijang innova', '2.000cc', 'test', 'black metallic', 'i8r.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `password` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`) VALUES
(2, 'admin', '$2y$10$j8Yz7PVApDHUjJp5rQg/wuKelRAFqyzBsHCkw87in6WGHR3NNElYW'),
(3, 'firdaus', '$2y$10$SDNJtIRCtblDZK1zwAehV.LkenlbQ0M8FN/wcnSj9bgalu.UBffrG'),
(4, 'admin2', '$2y$10$ktG4Ogg2MNvjZODIwRAxsOfHgCk3c6tlUrsZVcdhkJZGbqDZ.U.x2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mobil`
--
ALTER TABLE `mobil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
