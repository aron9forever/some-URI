-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 09, 2018 at 11:54 AM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 7.0.28-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `disko_partizani`
--

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `property_address`, `supplier_title`, `job_type`, `notes`, `created_at`, `updated_at`) VALUES
(8, '718 Donnelly Rapid Suite 450North Maddison, MD 68920-1544', 'Hayes, Vandervort and Goldner Inc', 'Landscaping', 'asdasd', '2018-05-02 20:55:32', '2018-05-09 09:44:03'),
(9, '76053 Roberts StreetLeoneland, VA 46780-3352', 'Ankunding-Dibbert Ltd', 'Repairs', NULL, '2018-05-02 20:55:47', '2018-05-08 23:38:27'),
(13, '7692 Walsh Viaduct Apt. 125Ariannashire, WY 49385-6405', 'Zboncak, Crist and King LLC', 'Gas Work', NULL, '2018-05-02 21:18:22', '2018-05-08 23:38:30'),
(14, '12785 Schuster TrailEast Tierra, OR 24447-0333', 'Ankunding-Dibbert Ltd', 'Carpetry', NULL, '2018-05-09 09:51:50', '2018-05-09 09:51:50'),
(15, '16122 Strosin Fort Apt. 888Port Kaseyport, ND 97607', 'Ankunding-Dibbert Ltd', 'Electrical Work', NULL, '2018-05-09 09:53:30', '2018-05-09 09:53:30');

-- --------------------------------------------------------

--
-- Table structure for table `job_types`
--

CREATE TABLE `job_types` (
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_types`
--

INSERT INTO `job_types` (`title`) VALUES
('Carpetry'),
('Cleaning'),
('Electrical Work'),
('Gas Work'),
('Landscaping'),
('Plumbing'),
('Repairs');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_05_02_192723_create_properties_table', 1),
(2, '2018_05_02_192802_create_suppliers_table', 1),
(3, '2018_05_02_192817_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`address`, `property_type`) VALUES
('12785 Schuster TrailEast Tierra, OR 24447-0333', 'Apartment'),
('16122 Strosin Fort Apt. 888Port Kaseyport, ND 97607', 'Apartment'),
('200 Wilkinson Port Apt. 797Port Aryannafort, CT 56452', 'Apartment'),
('294 Stanley Burgs Suite 866North Carey, MN 23004', 'Apartment'),
('31671 Mohr Mission Suite 881Lake Sharonport, TN 11334-5711', 'Apartment'),
('4616 Caitlyn Park Apt. 117Callietown, NV 84593-0682', 'Apartment'),
('47389 Ella Heights Suite 469Blandashire, WV 57449-1332', 'Apartment'),
('489 Schneider WaysKittyfurt, MN 03350', 'Apartment'),
('5031 Roselyn Plain Suite 105South Oleta, AK 58199-2962', 'Apartment'),
('5111 Deborah Avenue Suite 923Cartermouth, SD 73203-9578', 'Apartment'),
('5321 Leffler LakeCruickshankland, NJ 96854', 'Apartment'),
('5389 Roel Station Suite 488Feeneyshire, NE 21011', 'Apartment'),
('63205 Botsford ForgeKrisstad, NC 15799', 'Apartment'),
('6546 Madyson Lights Suite 834Daphneemouth, DE 68646', 'Apartment'),
('70824 Tillman Bridge Suite 189Alfburgh, AL 08334-8676', 'Apartment'),
('718 Donnelly Rapid Suite 450North Maddison, MD 68920-1544', 'Apartment'),
('7199 Russel CourtHartmannfurt, DE 66832-0666', 'Apartment'),
('76053 Roberts StreetLeoneland, VA 46780-3352', 'Apartment'),
('7692 Walsh Viaduct Apt. 125Ariannashire, WY 49385-6405', 'Apartment'),
('8157 Brant Estates Apt. 620Lake Floyd, PA 93411-1368', 'Apartment'),
('860 Dooley Ports Suite 217Walterberg, WI 51932', 'Apartment'),
('8789 Heidenreich Ferry Suite 415Ryleeview, WY 28293-8421', 'Apartment'),
('95616 Parker Heights Apt. 223Gutkowskichester, KY 93053-1329', 'Apartment'),
('985 Boris Court Apt. 903Port Minervahaven, NE 12093-3569', 'Apartment'),
('1139 Connelly Bypass Apt. 100Port Keith, AL 39444-6437', 'Cottage'),
('117 Streich StreamBoyertown, OR 40730-4671', 'Cottage'),
('1604 Padberg CliffsWest Dorianfurt, NH 76790-3364', 'Cottage'),
('18625 Claude LandingNorth Evans, HI 54340', 'Cottage'),
('18919 Hackett MountainPfefferville, NM 80049-8502', 'Cottage'),
('2454 Jenkins PlainsSporerport, OR 04831', 'Cottage'),
('251 Legros Circle Suite 371Pagacville, CA 33524-3836', 'Cottage'),
('252 Adams Drive Suite 440Lake Arthur, IN 55841-8015', 'Cottage'),
('252 Stamm IsleNew Pietro, FL 01995', 'Cottage'),
('30694 Von RiverSouth Jaclynstad, AZ 72136', 'Cottage'),
('34814 General ForgesSouth Kariannebury, DE 27404', 'Cottage'),
('358 Haag BridgeSouth Ebbaburgh, OH 25955-1898', 'Cottage'),
('395 Marlen Meadow Suite 752Maurineside, OR 24735', 'Cottage'),
('402 Anika Viaduct Apt. 539Myrtiehaven, MA 72830-1363', 'Cottage'),
('4090 Sylvester Tunnel Apt. 883South Alberta, SD 08456-6994', 'Cottage'),
('4106 Dickens Overpass Suite 856Kutchhaven, MS 28854-6442', 'Cottage'),
('442 Hermiston Locks Apt. 644Lake Alexaneton, MI 80622-3616', 'Cottage'),
('4546 Raynor Skyway Suite 559North Ciara, TX 44201', 'Cottage'),
('460 Stone PlazaNorth Ludwig, IL 36823', 'Cottage'),
('4730 Lavern PathSawaynside, FL 59985-0784', 'Cottage'),
('5625 Morton Hills Apt. 809West Hadleyside, AK 85438-2812', 'Cottage'),
('5708 Stamm GatewayNew Candidochester, WI 44085', 'Cottage'),
('64587 Isaac Dale Apt. 143Hodkiewiczstad, NH 74302-8119', 'Cottage'),
('65199 Rosalyn HollowRebamouth, TN 89364-6487', 'Cottage'),
('6706 Eichmann Via Apt. 383West Angelitaside, VA 76011-5080', 'Cottage'),
('6798 Pacocha Flats Apt. 121Conroychester, MD 67926', 'Cottage'),
('686 Krajcik Garden Apt. 316East Chelsie, AK 98860-5085', 'Cottage'),
('739 Effie BranchCasperburgh, CT 27138', 'Cottage'),
('76093 Vandervort Plains Apt. 474Haagville, OK 21722', 'Cottage'),
('765 Brekke View Apt. 790Binstown, MO 81423-0265', 'Cottage'),
('79350 Renner Spurs Apt. 560Arnoldochester, PA 00332-0185', 'Cottage'),
('8070 Parisian HillsNorth Nikitaborough, WY 00494', 'Cottage'),
('813 Blanda Parkways Suite 832Tromphaven, PA 71619-8179', 'Cottage'),
('84744 Gislason Skyway Suite 838South Kurt, IA 47740', 'Cottage'),
('857 Mayer FallNickland, NJ 89582-8843', 'Cottage'),
('85802 Jackie Shoals Suite 285Martaland, CA 32659-5735', 'Cottage'),
('862 Murazik GlensDangeloside, ND 29002-0188', 'Cottage'),
('880 Blick UnionsWest Willow, MD 31235-0919', 'Cottage'),
('913 Delphine VistaCassinstad, IN 61577-5419', 'Cottage'),
('926 Delta WalksDurganstad, TN 82235-7260', 'Cottage'),
('98532 Wilkinson LandSouth Noeliaside, CT 18350-9330', 'Cottage'),
('1025 Haley MotorwayRusselchester, ID 87714', 'House'),
('1563 Jonatan FlatWardport, NV 94596', 'House'),
('157 Stroman RowDeckowland, KY 62471', 'House'),
('175 Aufderhar DivideFrederickview, ME 79068', 'House'),
('181 Adan Pass Suite 682New Lianamouth, NE 68585-0579', 'House'),
('243 Little Village Suite 344Anastasiaberg, HI 78286', 'House'),
('2449 Allene ParkwayPort Jackson, RI 51859', 'House'),
('247 Leann View Apt. 028Gerholdport, SD 42463-9869', 'House'),
('2610 Michelle ManorsWest Brent, WI 99877', 'House'),
('2711 Finn Mountains Apt. 021Anitaside, WA 54619-6976', 'House'),
('28426 Hyman PortsFarrellbury, HI 68117', 'House'),
('34804 Gottlieb Ridges Apt. 800South Haileyview, DE 09158-9444', 'House'),
('374 Ova RoadsDurganberg, OK 51239', 'House'),
('37532 Stroman MountCollierland, VA 16953', 'House'),
('3769 Kunde Pines Apt. 430West Mireya, NE 07700', 'House'),
('413 Stacey IslandsRomaineburgh, MI 89273-0074', 'House'),
('41826 Kutch KeysNorth Lelahmouth, OR 20220-6663', 'House'),
('463 Alex Ranch Suite 846Reillyshire, NE 80721', 'House'),
('48485 Frami CenterNorth Ayana, TN 32705-2487', 'House'),
('5733 Maybell Inlet Apt. 211McCulloughton, TX 75278-3739', 'House'),
('57529 Oswaldo TunnelEast Brandtmouth, HI 31150', 'House'),
('589 Hagenes GlensWest Carrie, PA 85768', 'House'),
('6213 Stracke SpringsWest Orlando, IL 44400', 'House'),
('6358 Houston Mills Suite 009Lake Bettie, MN 65203-3008', 'House'),
('6428 Jevon Glen Apt. 755East Eunicetown, DE 64763', 'House'),
('6436 Kuhlman MotorwayPort Lilianaburgh, MA 51589-8960', 'House'),
('68573 Mills MountainWest Jillian, MO 13056-2055', 'House'),
('7052 Mitchell RoadBeiermouth, LA 19638-6089', 'House'),
('7096 Jovan WellsMacejkovicside, LA 12175', 'House'),
('850 Aleen Isle Suite 079North Justice, TN 92729', 'House'),
('86219 Hettinger Spurs Suite 972Lake Tanner, TN 60712', 'House'),
('96779 Romaguera Stream Apt. 231Greenborough, OR 89538-7751', 'House'),
('999 Von SpursNew Chester, NC 80212-0220', 'House'),
('102 Ferry Oval Suite 332North Nayeli, TN 22020', 'Mansion'),
('109 Kris DivideJamalland, NC 36680', 'Mansion'),
('12241 Osinski Estate Suite 070Kerlukestad, AL 81765', 'Mansion'),
('1918 Corkery Oval Suite 776Schimmelberg, NH 18614-4172', 'Mansion'),
('22783 Rosalind Cove Suite 018New Fredchester, NV 60176-7846', 'Mansion'),
('26536 Alva DriveBrodystad, OR 19945', 'Mansion'),
('281 Araceli CausewayEast Josieburgh, VT 77452-6572', 'Mansion'),
('324 Hayden WallPort Keshaunville, UT 77454', 'Mansion'),
('3353 Reynolds LandingSouth Miracle, KS 92707', 'Mansion'),
('34138 Mills Parks Apt. 032Pagachaven, WI 36459', 'Mansion'),
('35744 Tyree DriveEdgarland, MI 16372-7545', 'Mansion'),
('365 Anne Walk Suite 851North Tryciaberg, AZ 54476-8472', 'Mansion'),
('37466 Halvorson CourtsPort Bethany, LA 76254', 'Mansion'),
('39175 Hartmann Groves Suite 071Daronshire, DC 50707-5635', 'Mansion'),
('45236 Ida Ways Suite 933Yesseniaberg, CO 27624', 'Mansion'),
('45956 Corkery KeysNew Gilberto, AK 76871-8917', 'Mansion'),
('46983 Waino Cove Apt. 325Wiegandborough, OK 61045', 'Mansion'),
('47820 Daniela Spring Apt. 076South Madiemouth, ME 39049-3110', 'Mansion'),
('495 Aufderhar Stravenue Suite 300Stokesport, SD 36644', 'Mansion'),
('591 Nolan ForkPort Vilma, OR 35242', 'Mansion'),
('61517 Candido Ford Apt. 855Ottisfurt, AL 75859-6448', 'Mansion'),
('62900 Mellie LakesLake Jeromyland, AL 24561-3728', 'Mansion'),
('632 Rutherford CourtNew Malika, AZ 68023-8106', 'Mansion'),
('6754 Lamar LockEast Destany, MD 49968-7389', 'Mansion'),
('6760 Vandervort LandEast Elisabeth, NE 99421-7141', 'Mansion'),
('7060 Mario MissionMitchellville, CA 71977', 'Mansion'),
('7182 Romaguera Drives Suite 103Julianamouth, NY 54392-3729', 'Mansion'),
('736 Hodkiewicz DaleSouth Darleneborough, FL 17361', 'Mansion'),
('74215 Cronin Port Apt. 108Bennettshire, DE 37781-8622', 'Mansion'),
('772 O\'Hara Fields Apt. 987East Joanny, CA 17610-6235', 'Mansion'),
('789 Hermiston GlenFrankbury, VA 74265-1652', 'Mansion'),
('8066 Oswald TrailLake Iliana, VA 20690', 'Mansion'),
('84881 Muller PlainsWest Diannashire, MO 71258-8569', 'Mansion'),
('8722 Mona Ranch Suite 339East Tessie, MA 47487-3304', 'Mansion'),
('88956 Skiles Underpass Suite 171Mayertport, ME 90729-4197', 'Mansion'),
('917 Jeremie Crest Apt. 470Lake Yvette, ID 28281-9281', 'Mansion'),
('921 Zoe PineXavierville, WA 56886', 'Mansion'),
('938 Beier Circles Suite 188West Tremaineland, GA 03330-9665', 'Mansion'),
('94322 Auer RouteDevenchester, MO 43660', 'Mansion'),
('9704 Hudson Key Apt. 384South Virginie, ND 27480', 'Mansion'),
('121 Stehr Neck Apt. 396Jacobsonton, VA 35014', 'Orbital Biodome'),
('14491 Bert Landing Apt. 360West Coleman, KY 68286-5869', 'Orbital Biodome'),
('174 Al Run Apt. 598East Devanhaven, MO 76666-0101', 'Orbital Biodome'),
('17717 Kavon IsleDollymouth, IL 57128-7075', 'Orbital Biodome'),
('1838 Isadore VillagesPort Orvilleville, MI 11530', 'Orbital Biodome'),
('2065 Hoyt TrackSouth Emmaberg, HI 86839-1980', 'Orbital Biodome'),
('2288 Donny Inlet Suite 798South Tiana, MO 33944', 'Orbital Biodome'),
('248 Paolo Flat Apt. 947East Green, AL 81375', 'Orbital Biodome'),
('2492 Kris Skyway Apt. 680South Aryanna, KY 40511-4920', 'Orbital Biodome'),
('2589 Olga KnollsHagenesport, NJ 58669-1808', 'Orbital Biodome'),
('315 Adalberto ValleysWuckertfort, ID 34843-9189', 'Orbital Biodome'),
('325 Sienna Mountains Suite 343Thompsonchester, IN 59383', 'Orbital Biodome'),
('36083 Langosh Inlet Apt. 709North Leone, NM 11347-3609', 'Orbital Biodome'),
('54087 Janet Isle Apt. 020Bashirianfort, KS 41538', 'Orbital Biodome'),
('5513 Schaden Tunnel Apt. 858Port Raphaellebury, DC 35346-2036', 'Orbital Biodome'),
('605 Senger Court Apt. 982Port Helenbury, NV 92295-4396', 'Orbital Biodome'),
('6325 Homenick LodgeCristopherbury, OK 85752-7173', 'Orbital Biodome'),
('672 Mariane RapidsNorth Stephanie, OH 43019-5360', 'Orbital Biodome'),
('78840 Emard Square Apt. 511Adabury, RI 98300', 'Orbital Biodome'),
('8075 Percy HarborHirtheland, OK 50326-6125', 'Orbital Biodome'),
('8541 Murazik TrailPort Elroy, ND 23613-9475', 'Orbital Biodome'),
('8544 White FortBennieside, AL 25774', 'Orbital Biodome'),
('86212 Hagenes CausewayGrahamtown, WA 14125', 'Orbital Biodome'),
('9241 Dayne PointsRutherfordshire, HI 56905-9029', 'Orbital Biodome'),
('98667 Yazmin AlleyBashirianhaven, MN 47818-6003', 'Orbital Biodome'),
('98986 Hayden Loaf Apt. 425Jaskolskihaven, SC 49707', 'Orbital Biodome'),
('11977 Alfonso GardensSouth Madisenburgh, FL 25350', 'Tent'),
('1400 Tyree CircleErnestoton, KS 92583-6024', 'Tent'),
('184 Cleta GrovesSouth Jonland, CT 03826', 'Tent'),
('1938 Furman Light Apt. 098New Dedrickberg, GA 67228', 'Tent'),
('195 Emile FlatFeliciachester, WY 48683', 'Tent'),
('25635 Rippin Prairie Apt. 904Webertown, AZ 55084-0992', 'Tent'),
('278 Bahringer MountMorristown, WV 89622-7827', 'Tent'),
('3878 Felipa TrackLyricchester, DC 56015', 'Tent'),
('40680 Christiansen RanchLake Eleanoreland, AK 18065-7617', 'Tent'),
('44733 Stanton HavenVeumport, ME 69293', 'Tent'),
('4658 Wiegand Stream Suite 759Rutherfordmouth, ME 93679', 'Tent'),
('474 Gaylord Field Apt. 668Lake Darrellton, OK 75054-8377', 'Tent'),
('513 Arjun Row Suite 754North Candidaburgh, UT 36209-9986', 'Tent'),
('5338 Ferry PrairieWest Brooklynland, IA 53148', 'Tent'),
('59902 Jenifer Fork Apt. 687Port Roxanechester, CO 09078', 'Tent'),
('6246 Alvah WellsSouth Keon, NE 38266', 'Tent'),
('66604 Leffler Bypass Apt. 643New Johann, MN 09614', 'Tent'),
('68256 Marquardt Ramp Suite 099Greenbury, WV 81460-8829', 'Tent'),
('70294 Olga KeysWest Shawnborough, CO 94228-4425', 'Tent'),
('706 Domingo FallMadelynmouth, MD 52232-4923', 'Tent'),
('71024 Maxwell InletPort Sanfordchester, NC 43802', 'Tent'),
('7197 Herzog Islands Suite 366Lake Colleenberg, NJ 46834', 'Tent'),
('74191 Murphy SpursNorth Cooperbury, CA 64506', 'Tent'),
('77533 Magdalen Branch Suite 140Rooseveltchester, SD 33259', 'Tent'),
('7755 Schaefer RidgeNorth Jackson, DC 12120', 'Tent'),
('7764 Khalil Walk Suite 026Augustineberg, VT 38856-1077', 'Tent'),
('801 Hirthe Tunnel Apt. 371Port Eileen, VA 27733', 'Tent'),
('8119 Bednar Lake Apt. 460North Fredfurt, RI 45717', 'Tent'),
('830 Howell PrairieFayview, ID 74322', 'Tent'),
('8569 Allen Station Apt. 626New Layne, IN 09853-5761', 'Tent'),
('87726 Hoppe Hollow Apt. 526Port Darenfurt, GA 42432-1282', 'Tent'),
('89541 Kayleigh Plaza Suite 561East Letitia, OR 43902-8241', 'Tent'),
('9358 Asa Rapid Apt. 624West Finn, SD 37720-4396', 'Tent'),
('953 Armstrong MissionEast Scarlettview, HI 14463-5185', 'Tent'),
('966 Norwood Causeway Apt. 421McKenzieview, TX 42727', 'Tent'),
('9912 Jane CreekPort Myronborough, MD 11305-8619', 'Tent');

-- --------------------------------------------------------

--
-- Table structure for table `property_types`
--

CREATE TABLE `property_types` (
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_types`
--

INSERT INTO `property_types` (`type`) VALUES
('Apartment'),
('Cottage'),
('House'),
('Mansion'),
('Orbital Biodome'),
('Tent');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`title`) VALUES
('Ankunding-Dibbert Ltd'),
('Armstrong, Zboncak and Collier LLC'),
('Bahringer Ltd PLC'),
('Becker-Oberbrunner PLC'),
('Bergstrom LLC Ltd'),
('Corwin-Bartoletti Inc'),
('Crist PLC Group'),
('Cummerata, Spencer and Brekke PLC'),
('Cummings, Sporer and Will LLC'),
('D\'Amore LLC Group'),
('Dare-Skiles LLC'),
('Eichmann LLC PLC'),
('Fadel PLC and Sons'),
('Friesen PLC LLC'),
('Greenholt, Von and DuBuque Group'),
('Hamill, Brakus and Graham Inc'),
('Harris, Johnson and Lindgren Group'),
('Hartmann, O\'Reilly and Cremin PLC'),
('Hayes, Vandervort and Goldner Inc'),
('Heathcote-White Ltd'),
('Hermann and Sons Inc'),
('Johns Ltd and Sons'),
('Kerluke-Ritchie and Sons'),
('Kuphal-Strosin and Sons'),
('Lebsack-Treutel Group'),
('Lueilwitz-Veum Ltd'),
('Mayer and Sons Group'),
('McCullough-Eichmann Inc'),
('McLaughlin-Lemke PLC'),
('Mertz, Aufderhar and DuBuque PLC'),
('Mitchell, Aufderhar and Walker Group'),
('Mraz-Considine LLC'),
('O\'Keefe-Koss Group'),
('O\'Keefe, Kertzmann and West Inc'),
('Okuneva LLC Ltd'),
('Ondricka, Franecki and Heaney Inc'),
('Robel, Hartmann and Schamberger LLC'),
('Rolfson-Frami LLC'),
('Rowe-Cormier Group'),
('Schiller-Leuschke PLC'),
('Schiller, Ebert and Cruickshank PLC'),
('Schimmel Ltd Inc'),
('Schinner, Gibson and Wilkinson Inc'),
('Schultz Inc Group'),
('Smith, O\'Hara and Bode LLC'),
('Stiedemann, Armstrong and Kuhlman Inc'),
('Vandervort, Treutel and Simonis and Sons'),
('Walter-Steuber LLC'),
('Walter, O\'Keefe and Kautzer Inc'),
('Zboncak, Crist and King LLC');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_property_address_foreign` (`property_address`),
  ADD KEY `jobs_supplier_title_foreign` (`supplier_title`),
  ADD KEY `jobs_job_type_foreign` (`job_type`);

--
-- Indexes for table `job_types`
--
ALTER TABLE `job_types`
  ADD PRIMARY KEY (`title`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`address`),
  ADD KEY `properties_property_type_foreign` (`property_type`);

--
-- Indexes for table `property_types`
--
ALTER TABLE `property_types`
  ADD PRIMARY KEY (`type`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_job_type_foreign` FOREIGN KEY (`job_type`) REFERENCES `job_types` (`title`) ON DELETE CASCADE,
  ADD CONSTRAINT `jobs_property_address_foreign` FOREIGN KEY (`property_address`) REFERENCES `properties` (`address`) ON DELETE CASCADE,
  ADD CONSTRAINT `jobs_supplier_title_foreign` FOREIGN KEY (`supplier_title`) REFERENCES `suppliers` (`title`) ON DELETE CASCADE;

--
-- Constraints for table `properties`
--
ALTER TABLE `properties`
  ADD CONSTRAINT `properties_property_type_foreign` FOREIGN KEY (`property_type`) REFERENCES `property_types` (`type`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
