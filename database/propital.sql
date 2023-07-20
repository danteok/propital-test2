-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 20-07-2023 a las 04:56:17
-- Versión del servidor: 8.0.33-0ubuntu0.20.04.2
-- Versión de PHP: 7.3.33-11+ubuntu20.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `propital`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `building_projects`
--

CREATE TABLE `building_projects` (
  `id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `short_description` text NOT NULL,
  `full_description` longtext NOT NULL,
  `measure_front` double(10,2) DEFAULT NULL,
  `measure_depth` double(10,2) DEFAULT NULL,
  `price` double(10,2) NOT NULL,
  `address` varchar(200) NOT NULL,
  `address_number` varchar(100) DEFAULT NULL,
  `city_id` int UNSIGNED NOT NULL,
  `postal_code` varchar(20) NOT NULL,
  `building_type_id` int UNSIGNED NOT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `building_projects`
--

INSERT INTO `building_projects` (`id`, `name`, `latitude`, `longitude`, `image`, `short_description`, `full_description`, `measure_front`, `measure_depth`, `price`, `address`, `address_number`, `city_id`, `postal_code`, `building_type_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Claire', '35.0589564928', '51.2586786816', '17985053-64B8-3980-6405-21272E29B4B5', 'consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus', 'commodo ipsum. Suspendisse non leo.', 38.00, 74.00, 70873.00, '930-9311 Class St.', '972', 3, '33525', 3, 1, NULL, NULL),
(2, 'Belle', '-7.1420063744', '112.904606208', 'EF95E803-AA15-4168-4425-41B13E49AC71', 'dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc', 'sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit,', 61.00, 76.00, 19091.00, '688-7456 Nibh. St.', '412', 3, '755424', 2, 2, NULL, NULL),
(3, 'Anthony', '73.4558408704', '155.8765485056', '938DA84A-E4C6-5F8B-8478-918DBB9195F2', 'justo. Proin non massa non ante bibendum ullamcorper. Duis cursus,', 'Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper', 22.00, 69.00, 44605.00, 'P.O. Box 214, 5611 Rutrum St.', '935', 1, '97111', 3, 3, NULL, NULL),
(4, 'Quinn', '-69.013922304', '-170.3449504768', 'A2B24EDE-D196-AC92-3439-D98EED9D709E', 'tellus non magna. Nam ligula elit, pretium et, rutrum non,', 'Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui.', 69.00, 54.00, 52939.00, '191-9175 Sed Ave', '248', 1, '116719', 2, 3, NULL, NULL),
(5, 'Alea', '-13.2270570496', '-97.5809389568', '2A56BDEB-E22C-9A37-DDBE-8938582F239B', 'Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla', 'sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id', 27.00, 63.00, 92117.00, '578-4433 Sagittis St.', '596', 3, 'PQ7N 8JK', 1, 2, NULL, NULL),
(6, 'Juliet', '88.6240693248', '-132.4043507712', '6ED1C3D3-A764-3587-7D66-81288CEB95D2', 'arcu iaculis enim, sit amet ornare lectus justo eu arcu.', 'vulputate dui, nec tempus mauris erat eget', 48.00, 12.00, 17779.00, '861-7349 Ante Road', '183', 3, '10748', 3, 3, NULL, NULL),
(7, 'Ulla', '82.7373754368', '167.805052928', '3405E6EB-6F78-AA23-EFCC-81796DDBEDBB', 'iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus', 'sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim', 95.00, 52.00, 88949.00, 'Ap #842-4280 Gravida Street', '671', 1, '31227', 3, 4, NULL, NULL),
(8, 'Kiara', '-35.3858833408', '-75.6083419136', '9DCDD190-4FA7-1535-A605-54143069C533', 'leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis,', 'Proin velit. Sed malesuada augue ut', 80.00, 44.00, 66456.00, 'Ap #225-1355 Donec Rd.', '400', 2, '65642', 2, 2, NULL, NULL),
(9, 'Samuel', '75.712772096', '76.6002885632', '3AE5C2C9-46E8-9CC9-CC6F-A3C58875BF8A', 'dui, in sodales elit erat vitae risus. Duis a mi', 'non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa.', 33.00, 73.00, 5167.00, '7812 Imperdiet, Street', '100', 2, '3383', 2, 4, NULL, NULL),
(10, 'Allen', '27.9675645952', '146.8799104', 'F4B82152-1123-F23B-84D4-0DC1A2A87620', 'In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas', 'gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet', 16.00, 54.00, 90333.00, 'Ap #117-9064 Duis Ave', '659', 3, '8154', 2, 4, NULL, NULL),
(11, 'Abigail', '84.461318144', '-131.6798030848', 'B6064B32-665C-6D42-068F-C893C4FC8EA4', 'tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec', 'ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis', 34.00, 94.00, 50462.00, 'P.O. Box 411, 3871 Magna. Rd.', '59', 4, '7128', 2, 3, NULL, NULL),
(12, 'Alea', '-8.6077094912', '0.3911227392', '097BCCDD-4215-8314-E0D0-171E92B54D8A', 'ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam', 'posuere cubilia Curae Phasellus ornare. Fusce mollis. Duis sit amet diam', 34.00, 66.00, 50268.00, '617-4231 Ac St.', '864', 3, '5422-3344', 2, 4, NULL, NULL),
(13, 'Margaret', '19.2307607552', '14.8810487808', 'ED2CA8E8-B9CD-8F6B-6C8D-5EAB84E162DD', 'ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper', 'pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad', 11.00, 31.00, 23915.00, 'Ap #137-5860 Magnis Road', '663', 4, '7119', 3, 3, NULL, NULL),
(14, 'Aidan', '-11.4027465728', '-120.3726993408', 'F793C3A8-6794-9EBE-938E-05CCC6A44457', 'vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim.', 'enim nisl elementum purus, accumsan interdum libero', 18.00, 15.00, 64859.00, 'Ap #986-6103 Sapien, St.', '297', 4, '507366', 3, 3, NULL, NULL),
(15, 'Hasad', '74.0574147584', '-118.562611712', 'DE01ED96-CE92-33B4-3CC3-491C35E72C98', 'euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut,', 'In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec', 18.00, 82.00, 46391.00, '893-7207 Eu Av.', '299', 3, '626706', 2, 3, NULL, NULL),
(16, 'Kato', '-49.5715359744', '95.0725858304', 'E53154B9-EE98-44D9-DEA4-8C72E1ECBB1D', 'feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc,', 'neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis', 83.00, 81.00, 31597.00, '450-4666 Amet Ave', '815', 3, '8595', 1, 2, NULL, NULL),
(17, 'Abigail', '-72.6394153984', '-95.6660323328', '464CD301-13F1-7AFF-3921-AB1E614E2CE9', 'In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas.', 'semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam', 81.00, 14.00, 6022.00, 'P.O. Box 563, 8140 Justo Av.', '860', 2, 'V86 6OR', 1, 4, NULL, NULL),
(18, 'Colt', '-89.5756930048', '135.454810624', '4374D7DA-CD7B-6310-4488-64E599A967EC', 'lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus', 'egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac', 38.00, 80.00, 63833.00, 'Ap #310-2902 Vel, St.', '552', 2, '7825', 1, 2, NULL, NULL),
(19, 'Garrison', '-78.9306534912', '137.4291396608', '7A20CD0A-1805-35B7-723B-CA2FE813B939', 'placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet,', 'mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum', 11.00, 54.00, 66796.00, 'Ap #235-9065 Arcu. Av.', '440', 3, '671635', 4, 3, NULL, NULL),
(20, 'Blake', '-83.7506911232', '-118.3928019968', 'AE5CD863-FA23-6310-E878-7BA571A01C9B', 'malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis.', 'lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna.', 33.00, 51.00, 55396.00, 'Ap #885-9457 Mollis Street', '671', 2, '1871', 2, 3, NULL, NULL),
(21, 'Kyle', '-31.6476106752', '-82.3932450816', '3198B4BA-B29F-8A87-657C-354E27529EF7', 'ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci', 'aliquam arcu. Aliquam ultrices iaculis odio. Nam', 77.00, 22.00, 84257.00, 'Ap #691-713 Lorem Rd.', '607', 2, '47835-559', 2, 3, NULL, NULL),
(22, 'Conan', '33.97890304', '-56.364041728', 'D0D61EEC-944B-7BBB-1C98-CEF1CEE49884', 'Sed auctor odio a purus. Duis elementum, dui quis accumsan', 'vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla', 56.00, 96.00, 49617.00, 'Ap #353-2600 Primis St.', '5', 3, 'Y6 3DY', 3, 2, NULL, NULL),
(23, 'Kerry', '55.8736144384', '98.11874048', '2F1F214F-FAC8-2E11-9339-C754A2092DF6', 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia', 'mi. Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae,', 30.00, 19.00, 47590.00, '854-9045 Mi Avenue', '182', 3, '17373-77218', 3, 1, NULL, NULL),
(24, 'Cullen', '-70.8906110976', '-99.613513216', '4E1C98D6-C347-D9C4-1FEC-7A2DF7903112', 'litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut', 'libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet', 29.00, 49.00, 21336.00, '7414 Pede. Street', '468', 3, '40212', 3, 2, NULL, NULL),
(25, 'Davis', '-74.6602059776', '-11.5071763456', 'A192F4C5-4F95-7B13-29AD-72BA3DE77AC1', 'habitant morbi tristique senectus et netus et malesuada fames ac', 'vitae nibh. Donec est mauris, rhoncus id, mollis nec,', 66.00, 92.00, 89798.00, '988 Sit Avenue', '105', 3, '16383', 3, 3, NULL, NULL),
(26, 'Giselle', '-70.3491180544', '28.7750803456', 'E9FAABA9-8B89-485E-9DDD-84132A08DCDF', 'tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis,', 'faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus.', 32.00, 29.00, 10338.00, '489-4580 Phasellus Ave', '164', 2, '02368', 4, 2, NULL, NULL),
(27, 'Kylee', '-38.1930518528', '164.5603534848', 'B7DCFA7A-8B69-E99D-FBD4-F2862888D72A', 'metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus', 'aliquam eu, accumsan sed, facilisis vitae, orci.', 38.00, 17.00, 52210.00, 'P.O. Box 790, 6986 Ultricies St.', '630', 1, '25146', 4, 2, NULL, NULL),
(28, 'Elmo', '66.9439542272', '110.0974656512', '4C95E858-4CBA-F2A4-95F5-1375DB6DF2E3', 'non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris', 'odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque', 91.00, 31.00, 96446.00, '520-4313 Arcu St.', '53', 4, '5147', 3, 2, NULL, NULL),
(29, 'Vladimir', '-52.8986732544', '43.9191083008', '1265C814-9387-E9C2-9528-29D2C842F92C', 'velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc', 'erat. Sed nunc est, mollis non, cursus non, egestas a,', 92.00, 34.00, 93837.00, '687-6254 Vulputate Rd.', '90', 3, '753363', 2, 3, NULL, NULL),
(30, 'Wyoming', '-44.9898307584', '158.335269376', 'BDF2D66B-AC44-81EC-E374-ECB457FC557B', 'vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi', 'gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras', 71.00, 49.00, 2640.00, 'P.O. Box 924, 9612 Dolor, Rd.', '146', 2, '54-37', 2, 4, NULL, NULL),
(31, 'Ingrid', '25.5480211456', '138.1633636352', '114611DF-D6EA-2ACE-B87D-157AC7C88C1D', 'eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer', 'luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae', 40.00, 100.00, 71868.00, 'Ap #538-7103 Vehicula. Av.', '487', 1, '11377', 2, 4, NULL, NULL),
(32, 'Jared', '75.526321152', '-109.1684719616', '30CBC912-5764-1BA9-5712-2EEB4222CDA2', 'ut odio vel est tempor bibendum. Donec felis orci, adipiscing', 'erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin', 71.00, 18.00, 37433.00, 'Ap #518-3389 Sit St.', '60', 4, '8737', 3, 2, NULL, NULL),
(33, 'Zahir', '-5.8629080064', '-170.5862933504', '668B3BC6-3E21-C3A6-B167-857FCCF229B1', 'consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit', 'nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus', 87.00, 82.00, 66235.00, 'P.O. Box 567, 6009 Pellentesque Street', '259', 4, '77173', 3, 2, NULL, NULL),
(34, 'Kerry', '29.496914432', '-65.5113032704', '32E94127-4394-6DC8-733A-BEFC337196C1', 'cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam', 'non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum', 45.00, 73.00, 32151.00, '167-7144 Neque St.', '474', 3, '30609', 4, 1, NULL, NULL),
(35, 'Amos', '82.885752832', '21.305716224', '3331790C-347C-43FB-583D-15CC9289CAFC', 'Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non', 'nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus.', 75.00, 39.00, 5098.00, 'Ap #631-4035 Risus Av.', '344', 2, '332293', 1, 2, NULL, NULL),
(36, 'Velma', '45.26149888', '-89.6123001856', '694ACC37-853A-88A3-99E4-AC4948324E37', 'quis arcu vel quam dignissim pharetra. Nam ac nulla. In', 'primis in faucibus orci luctus et ultrices posuere cubilia Curae Phasellus ornare. Fusce mollis. Duis', 83.00, 36.00, 15950.00, '817-9056 Montes, St.', '668', 2, '2737 NP', 2, 2, NULL, NULL),
(37, 'Fatima', '75.7909960704', '33.4707170304', 'DA9342CB-611A-B314-E5E5-146061245754', 'et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu.', 'dignissim magna a tortor. Nunc commodo auctor velit.', 76.00, 93.00, 32531.00, 'P.O. Box 858, 8319 Cras Rd.', '40', 2, '881474', 3, 3, NULL, NULL),
(38, 'William', '65.1627897856', '-76.2379200512', 'D69A02A4-B1A8-C14A-0694-9F7ACEA392BC', 'Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non', 'risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus', 68.00, 67.00, 96103.00, 'Ap #753-228 Enim St.', '346', 1, '9827', 4, 1, NULL, NULL),
(39, 'Pearl', '59.8905140224', '129.7277749248', '07802985-B864-A1E6-8DA3-64B33440D52E', 'Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor', 'lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc', 72.00, 69.00, 77245.00, 'P.O. Box 183, 9509 Tempus Street', '837', 3, '3765', 4, 4, NULL, NULL),
(40, 'Jada', '69.9563437056', '-146.9623021568', 'A8D50D55-1E14-42C5-6D48-516F338137E9', 'Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat.', 'fringilla mi lacinia mattis. Integer eu', 52.00, 44.00, 58752.00, 'P.O. Box 684, 5026 Proin Rd.', '599', 2, '5204', 3, 1, NULL, NULL),
(41, 'Desirae', '24.2087245824', '107.5232137216', '9ACB8645-686A-D0BD-6D28-E495519649A6', 'eu nulla at sem molestie sodales. Mauris blandit enim consequat', 'enim, sit amet ornare lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor eros', 95.00, 64.00, 97034.00, '388-6397 Ac Street', '273', 1, '4353-6836', 4, 1, NULL, NULL),
(42, 'Evan', '-55.7700698112', '-38.373287424', 'E94AB508-9068-273D-6ADE-422D6659E55F', 'dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est', 'et magnis dis parturient montes, nascetur ridiculus', 53.00, 86.00, 74698.00, 'Ap #234-5077 Ligula. Rd.', '11', 2, '4749', 3, 3, NULL, NULL),
(43, 'Rahim', '-29.7899220992', '-129.3020832768', '1B15727E-A681-AFCF-B2BC-222C22B498F3', 'turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla', 'Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem,', 97.00, 96.00, 55785.00, '795-987 Malesuada St.', '269', 2, '50918', 2, 4, NULL, NULL),
(44, 'Ciaran', '25.3356921856', '-7.9535446016', '83D9A734-96A9-28C0-CEB3-94ABE9F93A28', 'parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor.', 'sagittis. Duis gravida. Praesent eu nulla at sem', 37.00, 62.00, 61643.00, 'P.O. Box 458, 2865 Eu St.', '970', 3, '1249', 2, 3, NULL, NULL),
(45, 'Brendan', '-27.5085956096', '-72.2254758912', '4DBB74D7-47D1-47B3-2EF5-317F97BE3D31', 'enim non nisi. Aenean eget metus. In nec orci. Donec', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae', 54.00, 99.00, 52368.00, 'P.O. Box 362, 5095 Sociosqu Ave', '132', 1, '18261', 1, 3, NULL, NULL),
(46, 'Laith', '-72.977627648', '142.5585806336', '85DADE58-4866-D7E7-3D99-B418C8F1A491', 'sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem', 'sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada.', 64.00, 82.00, 90155.00, '767-619 Sagittis Road', '596', 2, '26522', 4, 1, NULL, NULL),
(47, 'Bo', '-67.6226330624', '31.4924136448', '7A37317B-B45D-CD57-CED3-909F8082ECE4', 'in molestie tortor nibh sit amet orci. Ut sagittis lobortis', 'vel sapien imperdiet ornare. In faucibus. Morbi', 13.00, 93.00, 54073.00, '966-2493 Consectetuer Rd.', '922', 2, '302678', 3, 3, NULL, NULL),
(48, 'Ray', '82.8765568', '-81.781919744', 'E48EDB72-AE17-1346-0A83-29853B8C41A5', 'Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum', 'non, feugiat nec, diam. Duis mi enim, condimentum eget,', 89.00, 93.00, 25036.00, '659-2736 Sociis Road', '949', 4, '349819', 3, 2, NULL, NULL),
(49, 'Aline', '2.4916907008', '7.617270272', 'E66F6189-B11E-7E96-EF93-8D449DCA2A3D', 'tellus eu augue porttitor interdum. Sed auctor odio a purus.', 'a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est.', 24.00, 49.00, 97096.00, 'Ap #718-8939 Feugiat. Rd.', '295', 3, '276623', 4, 2, NULL, NULL),
(50, 'Omar', '19.452294144', '-32.3163928576', '614A2D8B-C7E8-8F1D-CB3E-7B28F8481857', 'in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla', 'Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus', 25.00, 93.00, 11443.00, '861-9355 Dis Rd.', '845', 2, '1860', 3, 2, NULL, NULL),
(51, 'Dominic', '-26.9161247744', '-127.1282494464', '8B11B9C3-EDC2-857B-8D63-7AB71B44E0A6', 'mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada.', 'lacus, varius et, euismod et, commodo at, libero.', 47.00, 34.00, 56157.00, '477-8516 Nisl. Av.', '735', 3, '488513', 2, 2, NULL, NULL),
(52, 'Teagan', '-28.6143171584', '-38.8168392704', 'AA8C3447-294C-8687-6524-AC76C1CCEBA9', 'lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus', 'sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id', 26.00, 13.00, 1735.00, '788-2069 Suspendisse Rd.', '914', 1, 'L5 6XH', 2, 3, NULL, NULL),
(53, 'Martha', '60.2261474304', '35.9410496512', '86D77825-53C8-D1A4-B69E-C2B4DDBDEA3D', 'sed turpis nec mauris blandit mattis. Cras eget nisi dictum', 'ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris', 69.00, 92.00, 19765.00, '661-6114 Phasellus Rd.', '302', 2, '984883', 1, 3, NULL, NULL),
(54, 'Amber', '-50.2297828352', '-161.4283558912', '726C4C62-222B-EFFA-EB6B-D733D8C4EB54', 'Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet', 'lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at', 38.00, 25.00, 94779.00, '379-9553 Turpis Street', '180', 3, '5719', 2, 2, NULL, NULL),
(55, 'Kelsie', '42.200922624', '161.8489233408', '55C2992D-0E62-B428-83EE-1ED46C0B03AB', 'lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec', 'tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit', 98.00, 72.00, 20287.00, 'Ap #151-7620 Cum St.', '233', 3, '4696', 4, 4, NULL, NULL),
(56, 'Tyler', '-46.5041302528', '76.9180070912', '2DDCE4EB-FE66-1ECD-1D6E-DFA6B4B8ADAE', 'dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante', 'facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus', 32.00, 38.00, 86942.00, '784 Nulla St.', '537', 3, '52775', 2, 4, NULL, NULL),
(57, 'Buckminster', '47.7378977792', '-54.7603151872', '455735A5-9532-1427-1349-8E3A4DBD09DF', 'Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin', 'quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius', 82.00, 88.00, 75476.00, '7410 Urna Rd.', '452', 4, '2368', 2, 1, NULL, NULL),
(58, 'Benedict', '58.0035699712', '-139.7027666944', '4ECE425D-8F90-D865-B76E-29A488E4BD20', 'molestie. Sed id risus quis diam luctus lobortis. Class aptent', 'aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc', 50.00, 93.00, 3571.00, 'Ap #249-7541 Pharetra. Street', '199', 2, '54752-568', 4, 4, NULL, NULL),
(59, 'Paul', '14.713490432', '-2.0794216448', 'A4E4C483-F751-8B95-A6D5-61D97CCD4E32', 'netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus', 'tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare,', 65.00, 89.00, 48222.00, '1714 Tempor Street', '419', 4, '50296-934', 3, 1, NULL, NULL),
(60, 'Victoria', '31.533042176', '-76.6499974144', 'B5B21D3A-FD31-4D7D-4E0D-A32D549742D0', 'ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec', 'ac ipsum. Phasellus vitae mauris sit amet lorem', 13.00, 66.00, 80067.00, '311-2645 Luctus Rd.', '37', 3, '11713', 1, 2, NULL, NULL),
(61, 'Macon', '-2.7365269504', '-33.964777472', '9C319C85-9B94-9B53-1FFF-5266BC09833C', 'placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante,', 'diam. Proin dolor. Nulla semper tellus id nunc interdum', 87.00, 65.00, 16038.00, 'Ap #459-5030 Dolor. Street', '874', 4, '67868', 3, 4, NULL, NULL),
(62, 'Nicholas', '32.4656233472', '130.431450624', 'F1CB6869-2770-F33F-D285-3DB8E18B74EA', 'eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus', 'Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend.', 16.00, 60.00, 2425.00, 'Ap #683-2199 Sed Rd.', '787', 4, '515052', 3, 2, NULL, NULL),
(63, 'Amelia', '-25.3491033088', '164.3651441664', '7823E5CD-32C8-9A85-ACA8-AFE4E76B1DCB', 'ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam', 'Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius.', 67.00, 71.00, 21394.00, 'Ap #600-2620 In St.', '119', 2, '2247', 3, 3, NULL, NULL),
(64, 'Yuri', '5.21136384', '101.2446229504', '68C2CD89-58E6-8D4A-909C-C3B673321BBD', 'risus. Donec nibh enim, gravida sit amet, dapibus id, blandit', 'nunc sit amet metus. Aliquam erat volutpat.', 83.00, 96.00, 9480.00, 'P.O. Box 768, 3750 Vitae Road', '127', 2, '624767', 3, 2, NULL, NULL),
(65, 'Gage', '-26.5685011456', '-61.6007370752', '977A127F-5689-EB2E-BF17-79C35A06B82B', 'aptent taciti sociosqu ad litora torquent per conubia nostra, per', 'facilisis, magna tellus faucibus leo, in lobortis', 35.00, 19.00, 30581.00, 'Ap #434-8386 Morbi Av.', '169', 2, '838830', 1, 2, NULL, NULL),
(66, 'Aspen', '-61.368488448', '-0.9450381312', '0CAEDEE3-2E35-7171-175C-36BE12FA408F', 'Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed', 'mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque', 25.00, 34.00, 62116.00, '3484 Ut Rd.', '932', 4, '3085', 3, 4, NULL, NULL),
(67, 'Gareth', '-37.8943108096', '1.2103289856', '9C82D884-C39A-CCCE-D7CA-D940427C93F1', 'nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum', 'ligula consectetuer rhoncus. Nullam velit', 95.00, 10.00, 2334.00, 'Ap #225-5644 Malesuada Av.', '847', 3, '56358', 2, 3, NULL, NULL),
(68, 'Blaze', '49.0935457792', '39.4135314432', '3A96ABBF-09E9-C94C-C869-6B826ADB1AB8', 'at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et', 'massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu.', 71.00, 66.00, 76773.00, 'P.O. Box 540, 3607 Molestie St.', '833', 1, '0377-5364', 2, 3, NULL, NULL),
(69, 'Ariel', '67.0320838656', '131.4419152896', 'AAEED98B-E536-349E-688E-CFE341BA6589', 'Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi', 'amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer', 47.00, 74.00, 69485.00, 'Ap #247-8607 Mauris Road', '615', 1, '57-116', 3, 4, NULL, NULL),
(70, 'Ignacia', '-71.5196715008', '53.9620665344', '8DA8D92A-6046-48C6-5330-E4BEDA436CD6', 'nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque', 'amet diam eu dolor egestas rhoncus. Proin', 36.00, 92.00, 75761.00, 'Ap #535-9808 Penatibus St.', '981', 2, '611741', 3, 2, NULL, NULL),
(71, 'Ainsley', '-45.1185640448', '-145.1289008128', '1D478046-1C40-D724-9055-F317E9CDF1E7', 'tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit', 'pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus', 53.00, 47.00, 4003.00, '618-9028 Rutrum Av.', '869', 3, '0111 IW', 2, 2, NULL, NULL),
(72, 'Marvin', '-53.2698066944', '75.5987519488', '1551D6EC-2EAA-73CA-7DA5-D794BD9FE6B3', 'et malesuada fames ac turpis egestas. Fusce aliquet magna a', 'pede, malesuada vel, venenatis vel, faucibus id, libero.', 93.00, 79.00, 1978.00, 'P.O. Box 657, 802 Quam. Rd.', '933', 1, 'VW69 3YC', 1, 3, NULL, NULL),
(73, 'Lee', '-79.695799296', '108.1197796352', 'AC392ED2-A1AB-4679-0547-79208E52549C', 'facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant', 'Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare', 21.00, 38.00, 99700.00, 'P.O. Box 220, 6917 Integer St.', '61', 2, '95477', 3, 1, NULL, NULL),
(74, 'Wing', '54.0382731264', '104.3499379712', '7A24CC9A-7A2E-371E-533A-D39ECDA16AA7', 'lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque.', 'lorem, sit amet ultricies sem magna nec', 31.00, 94.00, 42854.00, '603-4170 Sem Ave', '505', 2, '64841', 2, 1, NULL, NULL),
(75, 'Molly', '-72.92996864', '87.6456394752', '56518649-B658-6CA9-2C24-14772D0CA3E4', 'porta elit, a feugiat tellus lorem eu metus. In lorem.', 'elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed', 36.00, 46.00, 49941.00, 'Ap #874-8491 Eu, St.', '138', 3, '34192-14661', 4, 2, NULL, NULL),
(76, 'Fiona', '-17.0017342464', '107.0684659712', '6323AFC1-228E-3E59-3248-AB76D41635E6', 'mauris a nunc. In at pede. Cras vulputate velit eu', 'tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem,', 43.00, 55.00, 30166.00, '7231 Fringilla, Rd.', '870', 2, '31839', 2, 4, NULL, NULL),
(77, 'Clio', '44.2640464896', '-72.8788699136', '4112B3B7-530B-1998-8762-87190D43E433', 'facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus', 'lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est', 94.00, 36.00, 54700.00, 'Ap #825-6525 Ac Rd.', '912', 4, '5920', 3, 3, NULL, NULL),
(78, 'Rogan', '-58.4875874304', '168.5426583552', 'E7DE9B19-AC10-4618-1B1A-63246486E895', 'fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed', 'montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam', 29.00, 46.00, 44714.00, 'Ap #589-9298 Vivamus St.', '76', 4, '2954 EX', 1, 2, NULL, NULL),
(79, 'Zeph', '-72.3340324864', '-18.0661318656', '5972CFDE-88A7-A794-A945-EEADE6D76180', 'Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque', 'torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel', 44.00, 71.00, 128.00, 'P.O. Box 790, 2838 Nibh Av.', '763', 1, '16696', 3, 3, NULL, NULL),
(80, 'Gary', '68.4951112704', '46.7311707136', '8D1EA64D-5465-A25F-9AA1-256E183E7EC7', 'tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem', 'feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum', 22.00, 58.00, 87497.00, '414-3001 Dapibus Road', '538', 1, '20412', 3, 2, NULL, NULL),
(81, 'Basil', '-8.2141641728', '-10.346044928', '0152D7EE-1484-62D5-971E-24861F9449AD', 'et netus et malesuada fames ac turpis egestas. Fusce aliquet', 'arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices', 54.00, 70.00, 34606.00, '734-1826 Sed, Rd.', '388', 3, '43544', 4, 4, NULL, NULL),
(82, 'Mason', '52.7998590976', '-126.9983230976', 'B47F392B-C1A4-6978-21AA-0CF618974AA2', 'vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu.', 'Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque', 52.00, 28.00, 15777.00, 'Ap #800-6166 Suscipit, Rd.', '151', 4, '899389', 2, 3, NULL, NULL),
(83, 'Alexander', '45.181321216', '70.0094459904', '3374068D-97E1-00C2-F86C-9EE962011A7C', 'Curabitur egestas nunc sed libero. Proin sed turpis nec mauris', 'laoreet posuere, enim nisl elementum purus, accumsan interdum libero dui', 48.00, 47.00, 89626.00, '132-4831 Sapien. Ave', '470', 3, '30214', 1, 3, NULL, NULL),
(84, 'Abel', '84.5636888576', '64.2334081024', '92B33142-AB57-E116-D4D5-D8082A865B28', 'eget, dictum placerat, augue. Sed molestie. Sed id risus quis', 'vel, convallis in, cursus et, eros. Proin ultrices. Duis', 77.00, 47.00, 17674.00, '305-652 Phasellus Rd.', '314', 2, '51-942', 2, 4, NULL, NULL),
(85, 'Keane', '-42.6189474816', '-144.3644299264', '8198822E-8E58-BD1E-4803-9282F633CB0A', 'natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida', 55.00, 47.00, 70844.00, 'Ap #969-1032 At Street', '256', 1, '27331', 1, 4, NULL, NULL),
(86, 'Courtney', '-28.3544457216', '-110.912454144', '8360DC6B-1CB8-D864-E7BB-3A7BADB6A78E', 'cubilia Curae Phasellus ornare. Fusce mollis. Duis sit amet diam', 'suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec', 98.00, 100.00, 75393.00, 'Ap #829-3179 Mollis Avenue', '360', 2, '22184', 3, 2, NULL, NULL),
(87, 'Adele', '-66.9680369664', '-14.3822454784', '542695D5-13A9-E445-2C47-AC5178FC43B7', 'Donec est mauris, rhoncus id, mollis nec, cursus a, enim.', 'sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis', 30.00, 54.00, 3385.00, 'Ap #729-1927 Metus. Avenue', '751', 3, '724802', 1, 3, NULL, NULL),
(88, 'Leila', '-30.8715175936', '-124.9491393536', 'BA8BCB87-8947-7B81-DBEA-1B13AE159691', 'nunc est, mollis non, cursus non, egestas a, dui. Cras', 'a, dui. Cras pellentesque. Sed dictum.', 90.00, 94.00, 27889.00, '4598 Tellus Av.', '234', 4, '8548', 2, 3, NULL, NULL),
(89, 'Calvin', '15.4453590016', '167.0512933888', '72660671-819D-A18A-217E-EFC1BB7F9CAF', 'luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec', 'dui quis accumsan convallis, ante lectus convallis', 77.00, 42.00, 17600.00, 'Ap #431-3350 Fusce St.', '578', 3, '7718', 1, 3, NULL, NULL),
(90, 'Natalie', '52.2044275712', '71.6474484736', 'AECEE68D-894A-D95D-8111-B234512A59C3', 'Donec felis orci, adipiscing non, luctus sit amet, faucibus ut,', 'dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac', 81.00, 15.00, 92904.00, '272-2065 Montes, Street', '127', 1, '17820', 1, 2, NULL, NULL),
(91, 'Maggie', '-64.8110456832', '-178.3753725952', 'C9C92978-F0EB-D213-6160-40388167BDA7', 'orci luctus et ultrices posuere cubilia Curae Phasellus ornare. Fusce', 'pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at', 88.00, 42.00, 38928.00, 'Ap #320-7841 Sed St.', '368', 1, '12213', 1, 2, NULL, NULL),
(92, 'Forrest', '14.496282112', '-32.2694211584', '136B461D-2364-4B8E-DA38-C2ED5131741E', 'quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis', 'sit amet, dapibus id, blandit at, nisi. Cum', 51.00, 73.00, 44911.00, '3405 Sed Road', '616', 2, '0254', 2, 4, NULL, NULL),
(93, 'Hall', '-49.257378816', '123.4500873216', '698D4211-0284-DAF2-BD4F-57ABC316177A', 'adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu', 'Proin vel nisl. Quisque fringilla euismod enim.', 32.00, 77.00, 68906.00, '5549 Ac, St.', '558', 3, '846975', 2, 3, NULL, NULL),
(94, 'Carson', '54.5695025152', '-98.5205352448', 'D41D3179-8524-8111-C6B1-C314667B93A8', 'cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis', 'sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec', 28.00, 10.00, 95213.00, '946-5565 Vestibulum St.', '23', 2, '39728', 3, 2, NULL, NULL),
(95, 'Whitney', '-50.7469275136', '5.2909707264', 'A4486596-7C98-629E-BD23-2AD2C7AA8BE2', 'scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed', 'enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis', 93.00, 25.00, 94893.00, '678-9684 Semper. Street', '541', 4, '52814', 4, 2, NULL, NULL),
(96, 'Samson', '-41.4422977536', '1.1612151808', 'AD2D4ACF-ECB7-321D-8AD1-6DA74358F15D', 'enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie', 'sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum', 49.00, 96.00, 2847.00, 'P.O. Box 402, 3401 Mauris Rd.', '839', 1, '65841-55762', 3, 3, NULL, NULL),
(97, 'Walter', '-8.0712885248', '88.7747366912', '3E596316-2334-C7BD-92A2-37D6344EB580', 'semper egestas, urna justo faucibus lectus, a sollicitudin orci sem', 'nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor', 63.00, 57.00, 19337.00, 'Ap #601-8701 Laoreet Road', '995', 3, '01808', 3, 1, NULL, NULL),
(98, 'Kay', '-79.5488525312', '-63.8673496064', 'B2B8E583-3475-2202-80D1-43312AD2697D', 'accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate,', 'risus. Nulla eget metus eu erat semper rutrum.', 25.00, 25.00, 48287.00, 'Ap #714-9281 Inceptos Ave', '991', 2, '45578', 1, 4, NULL, NULL),
(99, 'Dorian', '84.8572535808', '-113.0725540864', '29B624F6-0F36-11D6-4D46-C2B77F302A10', 'amet, consectetuer adipiscing elit. Aliquam auctor, velit eget laoreet posuere,', 'sed turpis nec mauris blandit mattis. Cras eget nisi', 20.00, 65.00, 9741.00, 'P.O. Box 797, 3968 Justo St.', '839', 2, '153888', 2, 1, NULL, NULL),
(100, 'Russell', '-83.1481604096', '-52.5182324736', '88ECE578-4E5A-3A45-5124-CE1039D5955C', 'Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean', 'ante dictum cursus. Nunc mauris elit,', 28.00, 98.00, 13118.00, '429-6110 Risus Avenue', '332', 2, '43662', 4, 3, NULL, NULL),
(101, 'Eugenia', '68.5710532608', '-133.2749490176', '9460D074-4FEB-756F-1946-4C5C5D566042', 'aliquet, metus urna convallis erat, eget tincidunt dui augue eu', 'diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean', 74.00, 74.00, 44249.00, 'Ap #805-2019 Auctor. Ave', '402', 3, '8858', 3, 4, NULL, NULL),
(102, 'Slade', '50.4068595712', '64.5238197248', 'E8E0C286-2296-A3F8-1332-C4A59AE43A2F', 'venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien.', 'diam lorem, auctor quis, tristique ac, eleifend vitae,', 46.00, 85.00, 82659.00, '3204 Ac Rd.', '990', 2, '0869', 2, 3, NULL, NULL),
(103, 'Wyatt', '84.2814362624', '-6.31606016', '953C3834-8C2D-2EE7-BE37-A7B628B753DC', 'facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus', 'in faucibus orci luctus et ultrices posuere cubilia Curae Phasellus ornare. Fusce mollis. Duis', 96.00, 77.00, 58043.00, '415-4471 Sed Ave', '781', 1, '675856', 3, 3, NULL, NULL),
(104, 'Hop', '89.9545837568', '-151.8767770624', '79970A7A-9D58-BAB2-C32C-9DDC13D35A63', 'elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu', 'In at pede. Cras vulputate velit eu', 12.00, 19.00, 6149.00, 'Ap #554-1035 Metus. St.', '661', 1, '1681', 2, 2, NULL, NULL),
(105, 'Jemima', '-28.774057472', '-33.2820006912', '63E0D359-1725-71DC-1057-230D942B7357', 'odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa.', 'ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut', 42.00, 16.00, 8091.00, '457-4820 Scelerisque Street', '721', 1, '435588', 4, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `building_types`
--

CREATE TABLE `building_types` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `building_types`
--

INSERT INTO `building_types` (`id`, `name`, `description`) VALUES
(1, 'Edificio', ''),
(2, 'Fondo de Comercio', ''),
(3, 'Departamento', ''),
(4, 'Casa', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'Urbanizacion', ''),
(2, 'Hoteleria', ''),
(3, 'Oficinas', ''),
(4, 'Viviendas', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cities`
--

CREATE TABLE `cities` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `cities`
--

INSERT INTO `cities` (`id`, `name`) VALUES
(1, 'Buenos Aires'),
(2, 'San Salvador de Jujuy'),
(3, 'Rosario'),
(4, 'San Miguel de Tucuman');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(12, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(13, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(14, '2016_06_01_000004_create_oauth_clients_table', 1),
(15, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(16, '2019_08_19_000000_create_failed_jobs_table', 1),
(17, '2022_11_14_041351_add_updated_at_to_tasks_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `client_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('2c6edcffb82b6e45e2d0b5175c4d5a1b84b281f23baa4a62fa0d0ce121717a337e9d2fc0be4c96e8', 1, '97bd4eb2-2aeb-48a9-af87-c12c922d7fab', 'Personal Access Token', '[]', 0, '2022-11-14 05:41:01', '2022-11-14 05:41:01', '2022-11-21 02:41:01'),
('fb42c4a11db74179197187f1e29ada5f608bf0eddb304c69af8939189862640cd9be35fe7a4a6686', 1, '97bd4eb2-2aeb-48a9-af87-c12c922d7fab', 'Personal Access Token', '[]', 0, '2022-11-14 06:03:10', '2022-11-14 06:03:10', '2022-11-21 03:03:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `client_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
('97bd4eb2-2aeb-48a9-af87-c12c922d7fab', NULL, 'Laravel Personal Access Client', 'bN4T62REgQYKtHRbcDNJTOD0raVJDxlq5QzlFYKr', NULL, 'http://localhost', 1, 0, 0, '2022-11-14 05:34:09', '2022-11-14 05:34:09'),
('97bd4eb2-30f2-44dc-b9e4-afc6bf096710', NULL, 'Laravel Password Grant Client', 'R0veGaZgxdvjsK5lOS2kXW4Osn63awTvS2yctZMU', 'users', 'http://localhost', 0, 1, 0, '2022-11-14 05:34:09', '2022-11-14 05:34:09'),
('97bd754b-1591-4fb0-8f1c-93c169c7fce3', NULL, 'Laravel Personal Access Client', 'l9HReQi53foHrMDFo99qZv0WBZuu6NOMN6rh0ftE', NULL, 'http://localhost', 1, 0, 0, '2022-11-14 07:22:04', '2022-11-14 07:22:04'),
('97bd754b-1afb-4077-a9d7-dee71799a3b9', NULL, 'Laravel Password Grant Client', 'ibjtGAilPRl3ngoBUjuQfJyqoM2AZYe2O5Ju59fF', 'users', 'http://localhost', 0, 1, 0, '2022-11-14 07:22:04', '2022-11-14 07:22:04'),
('97bd7557-46c3-4a30-9d87-44f77f3fe410', NULL, 'Laravel Personal Access Client', 'z9ypP7mNlbQ7q7cLnwN95RMvBFNRbzB6OONpnm9U', NULL, 'http://localhost', 1, 0, 0, '2022-11-14 07:22:12', '2022-11-14 07:22:12'),
('97bd7557-4f8c-4887-bea9-b1434db1e6f7', NULL, 'Laravel Password Grant Client', 'Ua5IcVBVsbYAHBS6fRHJ8KOXmcbBrUKSdoPZFsWM', 'users', 'http://localhost', 0, 1, 0, '2022-11-14 07:22:12', '2022-11-14 07:22:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `client_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, '97bd4eb2-2aeb-48a9-af87-c12c922d7fab', '2022-11-14 05:34:09', '2022-11-14 05:34:09'),
(2, '97bd754b-1591-4fb0-8f1c-93c169c7fce3', '2022-11-14 07:22:04', '2022-11-14 07:22:04'),
(3, '97bd7557-46c3-4a30-9d87-44f77f3fe410', '2022-11-14 07:22:12', '2022-11-14 07:22:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priorities`
--

CREATE TABLE `priorities` (
  `id` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `priorities`
--

INSERT INTO `priorities` (`id`, `name`) VALUES
(1, 'Baja'),
(2, 'Media'),
(3, 'Alta'),
(4, 'Urgente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks`
--

CREATE TABLE `tasks` (
  `id` int NOT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `due_date` datetime DEFAULT NULL,
  `priority_id` int NOT NULL,
  `is_completed` tinyint NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `due_date`, `priority_id`, `is_completed`, `created_at`, `updated_at`) VALUES
(1, 'Hacer un challenge increíble', '2022-10-10 12:00:00', 1, 1, '2022-06-28 13:15:48', '2022-11-14 07:55:44'),
(8, 'some other task added for testing', '2022-11-04 19:26:19', 1, 1, '2022-11-04 19:26:19', '0000-00-00 00:00:00'),
(10, 'add task 5', '2022-11-04 19:47:10', 1, 0, '2022-11-04 19:47:10', '0000-00-00 00:00:00'),
(15, 'AAAAA', '2022-11-30 00:00:00', 1, 0, '2022-11-07 02:48:55', '0000-00-00 00:00:00'),
(16, 'nombre de nueva tarea', '2022-11-23 12:00:00', 1, 0, '2022-11-14 04:23:14', '2022-11-14 07:23:14'),
(17, 'nombre de nueva tarea', '2022-11-23 12:00:00', 1, 0, '2022-11-14 04:24:26', '2022-11-14 07:24:26'),
(19, 'nombre de nueva tarea', '2022-11-23 12:00:00', 4, 0, '2022-11-14 04:35:27', '2022-11-14 07:35:27'),
(20, 'nombre de nueva tarea', NULL, 4, 0, '2022-11-14 05:23:20', '2022-11-14 08:23:20'),
(21, 'nombre de nueva tarea', NULL, 4, 0, '2022-11-14 05:23:21', '2022-11-14 08:23:21'),
(22, 'nombre de nueva tarea', NULL, 4, 0, '2022-11-14 05:23:22', '2022-11-14 08:23:22'),
(23, 'nombre de nueva tarea', NULL, 4, 0, '2022-11-14 05:23:22', '2022-11-14 08:23:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dante Caceres', 'cu.caceres2@gmail.com', NULL, '$2y$10$KUrYlq1FBSFAmTYH.vbrD.KNI4uUl9T8Y3zNPKCNQ.MnJwgXoBvo.', NULL, '2022-11-14 05:40:56', '2022-11-14 05:40:56');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `building_projects`
--
ALTER TABLE `building_projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_id` (`city_id`),
  ADD KEY `building_type_id` (`building_type_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indices de la tabla `building_types`
--
ALTER TABLE `building_types`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `priorities`
--
ALTER TABLE `priorities`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `priority_id` (`priority_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `building_projects`
--
ALTER TABLE `building_projects`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT de la tabla `building_types`
--
ALTER TABLE `building_types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `priorities`
--
ALTER TABLE `priorities`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `building_projects`
--
ALTER TABLE `building_projects`
  ADD CONSTRAINT `building_projects_ibfk_1` FOREIGN KEY (`building_type_id`) REFERENCES `building_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `building_projects_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `building_projects_ibfk_3` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
