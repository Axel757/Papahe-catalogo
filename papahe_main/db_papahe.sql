-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-11-2023 a las 13:31:02
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_papahe`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add actua', 7, 'add_actua'),
(26, 'Can change actua', 7, 'change_actua'),
(27, 'Can delete actua', 7, 'delete_actua'),
(28, 'Can view actua', 7, 'view_actua'),
(29, 'Can add persona', 8, 'add_persona'),
(30, 'Can change persona', 8, 'change_persona'),
(31, 'Can delete persona', 8, 'delete_persona'),
(32, 'Can view persona', 8, 'view_persona'),
(33, 'Can add pelicula', 9, 'add_pelicula'),
(34, 'Can change pelicula', 9, 'change_pelicula'),
(35, 'Can delete pelicula', 9, 'delete_pelicula'),
(36, 'Can view pelicula', 9, 'view_pelicula'),
(37, 'Can add product gas', 10, 'add_productgas'),
(38, 'Can change product gas', 10, 'change_productgas'),
(39, 'Can delete product gas', 10, 'delete_productgas'),
(40, 'Can view product gas', 10, 'view_productgas'),
(41, 'Can add product med', 11, 'add_productmed'),
(42, 'Can change product med', 11, 'change_productmed'),
(43, 'Can delete product med', 11, 'delete_productmed'),
(44, 'Can view product med', 11, 'view_productmed'),
(45, 'Can add user', 12, 'add_user'),
(46, 'Can change user', 12, 'change_user'),
(47, 'Can delete user', 12, 'delete_user'),
(48, 'Can view user', 12, 'view_user'),
(49, 'Can add catalogo', 13, 'add_catalogo'),
(50, 'Can change catalogo', 13, 'change_catalogo'),
(51, 'Can delete catalogo', 13, 'delete_catalogo'),
(52, 'Can view catalogo', 13, 'view_catalogo'),
(53, 'Can add user', 14, 'add_user'),
(54, 'Can change user', 14, 'change_user'),
(55, 'Can delete user', 14, 'delete_user'),
(56, 'Can view user', 14, 'view_user'),
(57, 'Can add catalogo', 15, 'add_catalogo'),
(58, 'Can change catalogo', 15, 'change_catalogo'),
(59, 'Can delete catalogo', 15, 'delete_catalogo'),
(60, 'Can view catalogo', 15, 'view_catalogo'),
(61, 'Can add product gas', 16, 'add_productgas'),
(62, 'Can change product gas', 16, 'change_productgas'),
(63, 'Can delete product gas', 16, 'delete_productgas'),
(64, 'Can view product gas', 16, 'view_productgas'),
(65, 'Can add product med', 17, 'add_productmed'),
(66, 'Can change product med', 17, 'change_productmed'),
(67, 'Can delete product med', 17, 'delete_productmed'),
(68, 'Can view product med', 17, 'view_productmed'),
(69, 'Can add user', 18, 'add_customuser'),
(70, 'Can change user', 18, 'change_customuser'),
(71, 'Can delete user', 18, 'delete_customuser'),
(72, 'Can view user', 18, 'view_customuser');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$yZYaHEKsSf0ckDlqF2jgna$jHXvca2Uw3tpc0KUpvJZYzuxHiGf70skIMtq+BYhzlw=', '2023-11-21 13:13:37.278745', 1, 'axelm', '', '', 'axelmx7@outlook.com', 1, 1, '2023-10-12 17:25:56.953525'),
(5, 'pbkdf2_sha256$600000$6nOUpeW1Al4bx7q7XgKjVB$8epU9iveUcJKQcCZObY78pPYhyh8Av4ww7OnlFSB4yQ=', '2023-11-09 21:56:11.033904', 1, 'Cecilia_Martinez', '', '', 'cecilia.martinez@papahe.cl', 1, 1, '2023-11-09 13:37:41.863965'),
(6, 'pbkdf2_sha256$600000$3sLdlbrFihbbVHrfT6QMrw$7YjYU1G+JHhsGI09Lyo6mIXtJWQdEGOkkqLORBSluDo=', NULL, 1, 'loto', '', '', '', 1, 1, '2023-11-21 02:40:10.435456');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-10-12 17:34:59.997498', '2', 'Ryan Gosling', 1, '[{\"added\": {}}]', 8, 1),
(2, '2023-10-12 17:37:15.955870', '3', 'Emma Stone', 1, '[{\"added\": {}}]', 8, 1),
(3, '2023-10-12 17:40:23.516115', '2', 'Lalaland', 1, '[{\"added\": {}}]', 9, 1),
(4, '2023-10-12 17:45:35.253803', '4', 'Keanu Reeves', 1, '[{\"added\": {}}]', 8, 1),
(5, '2023-10-12 17:46:07.360908', '5', 'Norman Reedus', 1, '[{\"added\": {}}]', 8, 1),
(6, '2023-10-12 17:46:46.752690', '3', 'Jhon Wick 4', 1, '[{\"added\": {}}]', 9, 1),
(7, '2023-10-12 17:48:25.227356', '4', 'Air', 1, '[{\"added\": {}}]', 9, 1),
(8, '2023-10-12 17:51:22.258661', '2', 'Actua object (2)', 1, '[{\"added\": {}}]', 7, 1),
(9, '2023-10-12 17:51:30.266969', '2', 'Actua object (2)', 2, '[]', 7, 1),
(10, '2023-10-12 17:51:37.704761', '2', 'Actua object (2)', 2, '[]', 7, 1),
(11, '2023-10-12 17:51:58.320871', '3', 'Actua object (3)', 1, '[{\"added\": {}}]', 7, 1),
(12, '2023-10-12 17:52:23.127630', '4', 'Actua object (4)', 1, '[{\"added\": {}}]', 7, 1),
(13, '2023-10-12 17:53:24.976728', '5', 'Actua object (5)', 1, '[{\"added\": {}}]', 7, 1),
(14, '2023-10-12 17:54:25.202038', '5', 'Actua object (5)', 2, '[]', 7, 1),
(15, '2023-10-12 17:55:22.979204', '6', 'Actua object (6)', 1, '[{\"added\": {}}]', 7, 1),
(16, '2023-10-12 17:55:49.804215', '7', 'Actua object (7)', 1, '[{\"added\": {}}]', 7, 1),
(17, '2023-10-14 21:46:00.613120', '1', 'User object (1)', 1, '[{\"added\": {}}]', 12, 1),
(18, '2023-10-14 21:46:40.570995', '2', 'User object (2)', 1, '[{\"added\": {}}]', 12, 1),
(19, '2023-10-14 21:46:45.557059', '2', 'User object (2)', 2, '[]', 12, 1),
(20, '2023-10-14 21:46:48.283608', '1', 'User object (1)', 2, '[]', 12, 1),
(21, '2023-10-14 22:23:20.007079', '1', 'ProductMed object (1)', 1, '[{\"added\": {}}]', 11, 1),
(22, '2023-10-14 22:26:15.378724', '1', 'ProductMed object (1)', 2, '[{\"changed\": {\"fields\": [\"Ingredientes\"]}}]', 11, 1),
(23, '2023-10-14 22:33:32.649055', '2', 'ProductMed object (2)', 1, '[{\"added\": {}}]', 11, 1),
(24, '2023-10-14 22:36:23.427955', '3', 'ProductMed object (3)', 1, '[{\"added\": {}}]', 11, 1),
(25, '2023-10-14 22:37:21.900095', '3', 'ProductMed object (3)', 2, '[{\"changed\": {\"fields\": [\"Descripcion\"]}}]', 11, 1),
(26, '2023-10-14 22:38:08.013021', '3', 'TE MATCHA', 2, '[{\"changed\": {\"fields\": [\"Descripcion\"]}}]', 11, 1),
(27, '2023-10-14 22:38:28.057109', '1', 'CEREBRUM JARABE', 2, '[{\"changed\": {\"fields\": [\"Nombre\", \"Imagen\", \"Farmacia\"]}}]', 11, 1),
(28, '2023-10-14 22:38:35.591042', '3', 'TÉ MATCHA', 2, '[{\"changed\": {\"fields\": [\"Nombre\"]}}]', 11, 1),
(29, '2023-10-14 23:12:02.647361', '3', 'TÉ MATCHA', 2, '[{\"changed\": {\"fields\": [\"Imagen\"]}}]', 11, 1),
(30, '2023-10-14 23:12:23.895448', '2', 'CALODREN', 2, '[{\"changed\": {\"fields\": [\"Imagen\"]}}]', 11, 1),
(31, '2023-10-14 23:12:31.578234', '1', 'CEREBRUM JARABE', 2, '[{\"changed\": {\"fields\": [\"Imagen\"]}}]', 11, 1),
(32, '2023-10-14 23:38:14.007361', '1', 'CEREBRUM JARABE', 2, '[]', 11, 1),
(33, '2023-10-15 01:07:08.496539', '1', 'ProductGas object (1)', 1, '[{\"added\": {}}]', 10, 1),
(34, '2023-10-15 01:08:28.850226', '1', 'Catalogo object (1)', 1, '[{\"added\": {}}]', 13, 1),
(35, '2023-10-15 01:08:35.636896', '2', 'Catalogo object (2)', 1, '[{\"added\": {}}]', 13, 1),
(36, '2023-10-15 02:05:22.812748', '1', 'ProductGas object (1)', 2, '[]', 10, 1),
(37, '2023-10-15 02:08:30.421774', '1', 'ProductGas object (1)', 2, '[{\"changed\": {\"fields\": [\"Imagen\"]}}]', 10, 1),
(38, '2023-10-15 02:10:02.590560', '1', 'ProductGas object (1)', 2, '[{\"changed\": {\"fields\": [\"Imagen\"]}}]', 10, 1),
(39, '2023-10-15 02:12:30.758927', '1', 'ProductGas object (1)', 2, '[{\"changed\": {\"fields\": [\"Imagen\"]}}]', 10, 1),
(40, '2023-10-15 02:13:42.300280', '2', 'ProductGas object (2)', 1, '[{\"added\": {}}]', 10, 1),
(41, '2023-10-15 02:36:26.184304', '3', 'TÉ MATCHA', 2, '[{\"changed\": {\"fields\": [\"Imagen\"]}}]', 11, 1),
(42, '2023-10-15 02:36:36.049579', '2', 'CALODREN', 2, '[{\"changed\": {\"fields\": [\"Imagen\"]}}]', 11, 1),
(43, '2023-10-15 02:36:45.656247', '1', 'CEREBRUM JARABE', 2, '[{\"changed\": {\"fields\": [\"Imagen\"]}}]', 11, 1),
(44, '2023-10-16 04:41:04.523689', '1', 'ProductGas object (1)', 2, '[{\"changed\": {\"fields\": [\"Imagen\"]}}]', 10, 1),
(45, '2023-11-09 01:02:06.487653', '1', 'ProductGas object (1)', 1, '[{\"added\": {}}]', 16, 1),
(46, '2023-11-09 01:02:38.450896', '2', 'ProductGas object (2)', 1, '[{\"added\": {}}]', 16, 1),
(47, '2023-11-09 01:08:32.906872', '2', 'ProductGas object (2)', 2, '[]', 16, 1),
(48, '2023-11-09 01:10:44.540878', '1', 'CEREBRUM JARABE', 1, '[{\"added\": {}}]', 17, 1),
(49, '2023-11-09 01:11:49.390336', '2', 'CALODREN', 1, '[{\"added\": {}}]', 17, 1),
(50, '2023-11-09 01:12:32.506398', '3', 'TÉ MATCHA', 1, '[{\"added\": {}}]', 17, 1),
(51, '2023-11-09 01:14:54.943298', '1', 'Catalogo object (1)', 1, '[{\"added\": {}}]', 15, 1),
(52, '2023-11-09 01:15:11.565811', '2', 'Catalogo object (2)', 1, '[{\"added\": {}}]', 15, 1),
(53, '2023-11-09 01:15:39.788064', '1', 'User object (1)', 1, '[{\"added\": {}}]', 14, 1),
(54, '2023-11-09 01:15:51.648264', '2', 'User object (2)', 1, '[{\"added\": {}}]', 14, 1),
(55, '2023-11-09 20:38:19.007046', '4', 'Fat Binder 60/90', 1, '[{\"added\": {}}]', 17, 5),
(56, '2023-11-09 20:38:31.961499', '4', 'FAT BINDER 60/90', 2, '[{\"changed\": {\"fields\": [\"Nombre\"]}}]', 17, 5),
(57, '2023-11-09 20:40:22.339361', '5', 'LECITINA SOYA POTENCIADA', 1, '[{\"added\": {}}]', 17, 5),
(58, '2023-11-09 20:49:21.742122', '3', 'PINCELES PLANOS', 1, '[{\"added\": {}}]', 16, 5),
(59, '2023-11-09 20:50:07.883596', '1', 'BATIDOR MANUAL DE VARILLA BLANDA', 2, '[]', 16, 5),
(60, '2023-11-09 20:51:18.597159', '1', 'BATIDOR MANUAL\r\nDE VARILLA BLANDA', 2, '[{\"changed\": {\"fields\": [\"Nombre\"]}}]', 16, 5),
(61, '2023-11-09 20:51:31.324301', '5', 'LECITINA SOYA\r\n POTENCIADA', 2, '[{\"changed\": {\"fields\": [\"Nombre\"]}}]', 17, 5),
(62, '2023-11-09 20:53:42.197716', '4', 'BROCHA SILICONA', 1, '[{\"added\": {}}]', 16, 5),
(63, '2023-11-16 01:29:50.508740', '3', 'TÉ MATCHA', 2, '[{\"changed\": {\"fields\": [\"Categoria\"]}}]', 17, 1),
(64, '2023-11-16 01:31:17.170000', '1', 'CEREBRUM JARABE', 2, '[{\"changed\": {\"fields\": [\"Categoria\"]}}]', 17, 1),
(65, '2023-11-16 01:31:44.600084', '5', 'LECITINA SOYA POTENCIADA', 2, '[{\"changed\": {\"fields\": [\"Nombre\", \"Categoria\"]}}]', 17, 1),
(66, '2023-11-16 01:35:12.687507', '4', 'FAT BINDER 60/90', 2, '[{\"changed\": {\"fields\": [\"Categoria\"]}}]', 17, 1),
(67, '2023-11-16 01:35:54.030634', '2', 'CALODREN', 2, '[{\"changed\": {\"fields\": [\"Categoria\"]}}]', 17, 1),
(68, '2023-11-16 01:35:56.475769', '5', 'LECITINA SOYA POTENCIADA', 2, '[]', 17, 1),
(69, '2023-11-16 01:36:00.037290', '1', 'CEREBRUM JARABE', 2, '[]', 17, 1),
(70, '2023-11-17 00:11:41.298271', '6', '60/90 - INFUSIÓN ORGÁNICA DETOX', 1, '[{\"added\": {}}]', 17, 1),
(71, '2023-11-17 00:54:29.034110', '7', 'PROMIEL SPRAY', 1, '[{\"added\": {}}]', 17, 1),
(72, '2023-11-17 01:01:09.519841', '8', 'COLA DE CABALLO', 1, '[{\"added\": {}}]', 17, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'item21App', 'actua'),
(9, 'item21App', 'pelicula'),
(8, 'item21App', 'persona'),
(13, 'item22App', 'catalogo'),
(10, 'item22App', 'productgas'),
(11, 'item22App', 'productmed'),
(12, 'item22App', 'user'),
(15, 'papahe_app', 'catalogo'),
(18, 'papahe_app', 'customuser'),
(16, 'papahe_app', 'productgas'),
(17, 'papahe_app', 'productmed'),
(14, 'papahe_app', 'user'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-10-12 17:24:22.111730'),
(2, 'auth', '0001_initial', '2023-10-12 17:24:22.633170'),
(3, 'admin', '0001_initial', '2023-10-12 17:24:22.745327'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-10-12 17:24:22.755302'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-10-12 17:24:22.764308'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-10-12 17:24:22.835139'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-10-12 17:24:22.892397'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-10-12 17:24:22.916365'),
(9, 'auth', '0004_alter_user_username_opts', '2023-10-12 17:24:22.927034'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-10-12 17:24:22.987806'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-10-12 17:24:22.990795'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-10-12 17:24:23.000767'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-10-12 17:24:23.020712'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-10-12 17:24:23.041911'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-10-12 17:24:23.064179'),
(16, 'auth', '0011_update_proxy_permissions', '2023-10-12 17:24:23.074096'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-10-12 17:24:23.095139'),
(18, 'item21App', '0001_initial', '2023-10-12 17:24:23.240260'),
(19, 'sessions', '0001_initial', '2023-10-12 17:24:23.276162'),
(20, 'item21App', '0002_rename_perlicula_actua_pelicula_alter_persona_imagen', '2023-10-12 17:33:06.056843'),
(21, 'item21App', '0003_alter_pelicula_imagen_alter_persona_imagen', '2023-10-12 17:38:51.747797'),
(22, 'item21App', '0004_actua_personaje', '2023-10-12 17:49:38.707613'),
(23, 'item21App', '0005_alter_pelicula_imagen', '2023-10-14 19:57:30.892876'),
(24, 'item22App', '0001_initial', '2023-10-14 19:57:32.722341'),
(25, 'item22App', '0002_alter_productmed_ingredientes', '2023-10-14 22:14:45.235650'),
(26, 'item22App', '0003_alter_productgas_descripcion_and_more', '2023-10-14 22:22:30.732246'),
(27, 'item22App', '0004_alter_productgas_descripcion_and_more', '2023-10-14 22:36:16.733321'),
(28, 'item22App', '0005_alter_productgas_descripcion_alter_productgas_imagen_and_more', '2023-10-15 02:05:51.732210'),
(29, 'item22App', '0006_alter_productgas_imagen_alter_productmed_imagen', '2023-10-16 04:23:55.042921'),
(30, 'item22App', '0007_alter_productgas_imagen_alter_productmed_imagen', '2023-10-16 04:35:22.576596'),
(31, 'item22App', '0008_alter_productgas_imagen_alter_productmed_imagen', '2023-10-16 04:37:16.813453'),
(32, 'item22App', '0009_rename_nombre_user_email', '2023-10-16 14:13:50.111628'),
(33, 'papahe_app', '0001_initial', '2023-11-09 00:30:17.191014'),
(34, 'papahe_app', '0002_delete_user_alter_productgas_nombre_and_more', '2023-11-09 20:51:02.614002'),
(35, 'papahe_app', '0003_productmed_categoria', '2023-11-16 01:29:29.397601'),
(36, 'papahe_app', '0004_alter_productmed_nombre', '2023-11-16 01:31:26.306416'),
(37, 'papahe_app', '0005_alter_productmed_options', '2023-11-17 00:40:27.112339'),
(38, 'papahe_app', '0006_alter_productmed_categoria', '2023-11-20 17:13:13.925249'),
(39, 'papahe_app', '0007_alter_productmed_categoria', '2023-11-20 19:06:21.284801'),
(40, 'papahe_app', '0008_customuser', '2023-11-21 00:27:17.715444'),
(41, 'papahe_app', '0009_alter_productmed_posologia_and_more', '2023-11-22 02:10:52.217355');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('4ekskbipz95cnx8ltffyfp67gu5di193', '.eJxVjEEOwiAQRe_C2hCQMoBL956BzAwgVUOT0q6Md7dNutDtf-_9t4i4LjWuPc9xTOIitDj9boT8zG0H6YHtPkme2jKPJHdFHrTL25Ty63q4fwcVe93qoriAsZZRgyENA2i31eFcCDIHyhAC2AEBXCIwxjtSTIiqFDI-ePH5AuwPOD4:1r0tOf:f2l1Nlbi5XXKs9wLacMaFEwHxf3DzHwBtLfd3mr4FN4', '2023-11-23 00:59:49.103310'),
('ka9v2fy1lbnaieb0yyb4ptd53poto0dc', '.eJxVjEEOwiAQRe_C2hCQMoBL956BzAwgVUOT0q6Md7dNutDtf-_9t4i4LjWuPc9xTOIitDj9boT8zG0H6YHtPkme2jKPJHdFHrTL25Ty63q4fwcVe93qoriAsZZRgyENA2i31eFcCDIHyhAC2AEBXCIwxjtSTIiqFDI-ePH5AuwPOD4:1r3XCJ:ntd1QzAc3AVdFgnYnrc-J9o_tnk_VfRViEPtorfsdQc', '2023-11-30 07:53:59.357645'),
('nqh99tjfdiikitjj507nkdmmoo6kgce7', '.eJxVjEEOwiAQRe_C2hCQMoBL956BzAwgVUOT0q6Md7dNutDtf-_9t4i4LjWuPc9xTOIitDj9boT8zG0H6YHtPkme2jKPJHdFHrTL25Ty63q4fwcVe93qoriAsZZRgyENA2i31eFcCDIHyhAC2AEBXCIwxjtSTIiqFDI-ePH5AuwPOD4:1r0xBv:pylrQ3nTCKh_UBtLPUS4yXev6EBtJdfBKH7SrPJqk-A', '2023-11-23 05:02:55.912774'),
('x3jr4n5m3g4npoory9yy679fkb7mb8qn', '.eJxVjEEOgjAQRe_StWla7NCpS_ecoZlhpoIaSCisjHdXEha6_e-9_zKZtnXIW9Ulj2IuBszpd2PqHzrtQO403Wbbz9O6jGx3xR602m4WfV4P9-9goDp86xQDMlNsEYvngO6s0DccBSiR4yLOuzbEElKQlIS0gMcADry2oA2a9wff1zeK:1r1D0V:HiflpBUvd0sMNqS6sLSTv5_l-qzAyG6Yw5wscKHExRU', '2023-11-23 21:56:11.085766');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `papahe_app_catalogo`
--

CREATE TABLE `papahe_app_catalogo` (
  `id` bigint(20) NOT NULL,
  `catalogoType` tinyint(1) NOT NULL,
  `productGas_id` bigint(20) NOT NULL,
  `productMed_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `papahe_app_catalogo`
--

INSERT INTO `papahe_app_catalogo` (`id`, `catalogoType`, `productGas_id`, `productMed_id`) VALUES
(1, 0, 1, 1),
(2, 1, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `papahe_app_customuser`
--

CREATE TABLE `papahe_app_customuser` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `username` varchar(50) NOT NULL,
  `tipo_usuario` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `papahe_app_customuser`
--

INSERT INTO `papahe_app_customuser` (`id`, `password`, `last_login`, `is_superuser`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `username`, `tipo_usuario`) VALUES
(2, 'pbkdf2_sha256$600000$pT2427tBp5ER8JBJkZmg0a$l4PYpc/pAb5bYO/RnTu+bo9U8AbMBqrJIZ818UlNE1Q=', '2023-11-21 15:16:07.080796', 0, '', '', '', 0, 1, '2023-11-21 00:56:06.917752', 'Axel', 'vendedor'),
(12, 'pbkdf2_sha256$600000$0GzUSIHfpIMcYGduakUzcv$jt3lUG5eCXM1a4YXBxR2eGSgvR6r1kx5OPMA1J2QZ1U=', '2023-11-21 14:17:27.399553', 1, '', '', '', 1, 1, '2023-11-21 13:23:01.348736', 'Ñore', 'administrador'),
(13, 'pbkdf2_sha256$600000$N36VQM00XT44O12fu2UnGD$DStT3yrb+wF9/pOp51j4GlN1Os4MOx5D+n4Nk1EM5q8=', '2023-11-21 14:28:08.098736', 1, '', '', '', 1, 1, '2023-11-21 14:25:39.056646', 'Camilo', 'administrador'),
(14, 'pbkdf2_sha256$600000$XO3YPdU6FsEKz38hXrJOh0$A3W812awBK45XgWF035AIjW9iL4bKHRFU3Xyc5b5o6k=', '2023-11-22 03:04:32.079921', 1, '', '', '', 1, 1, '2023-11-21 15:38:10.050099', 'axelm', 'administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `papahe_app_customuser_groups`
--

CREATE TABLE `papahe_app_customuser_groups` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `papahe_app_customuser_user_permissions`
--

CREATE TABLE `papahe_app_customuser_user_permissions` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `papahe_app_productgas`
--

CREATE TABLE `papahe_app_productgas` (
  `id` bigint(20) NOT NULL,
  `nombre` longtext NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `precio` int(11) NOT NULL,
  `descripcion` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `papahe_app_productgas`
--

INSERT INTO `papahe_app_productgas` (`id`, `nombre`, `imagen`, `precio`, `descripcion`) VALUES
(1, 'BATIDOR MANUAL\r\nDE VARILLA BLANDA', 'static/img/Papahe/productos_gastronomicos/batidor_KNowLsc.PNG', 3500, 'Batidor Manual'),
(2, 'MANGA PASTELERA', 'static/img/Papahe/productos_gastronomicos/mangapastelera_SRPBden.PNG', 3100, 'Manga de Desechable Grande\r\n100 Und.'),
(3, 'PINCELES PLANOS', 'static/img/Papahe/productos_gastronomicos/PINCELES_PLANOS.png', 1200, '2 delgados 1 mediano 1 grueso'),
(4, 'BROCHA SILICONA', 'static/img/Papahe/productos_gastronomicos/BROCHA_SILICONA.PNG', 1000, 'Mezquino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `papahe_app_productmed`
--

CREATE TABLE `papahe_app_productmed` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `farmacia` varchar(30) NOT NULL,
  `posologia` varchar(256) NOT NULL,
  `presentacion` varchar(50) NOT NULL,
  `ingredientes` varchar(256) NOT NULL,
  `descripcion` longtext NOT NULL,
  `categoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `papahe_app_productmed`
--

INSERT INTO `papahe_app_productmed` (`id`, `nombre`, `imagen`, `farmacia`, `posologia`, `presentacion`, `ingredientes`, `descripcion`, `categoria`) VALUES
(1, 'CEREBRUM JARABE', 'static/img/Papahe/productos_medicinales/cerebrum_2afmVk3.PNG', 'AURA VITALIS', '1 Cucharada tres veces al dia', 'Botella 200gr', 'Miel de abejas, Jarabe de Maíz, Lecitina de Soya, Avena, Alfalfa, Propilenglicol, Acido Ascórbico, Acido Cítrico', 'Entrega energía a deportistas, estudiantes o personas cuyas actividades tiendan a cansarlos mental o físicamente. Mejora el funcionamiento del cerebro y facilita la absorción de algunas vitaminas del complejo B y de la vitamina A. Mejora los procesos de aprendizaje, e incrementa la memoria. Ayuda a mejorar la capacidad intelectual, así como la agilidad mental, importante en la formación y mantenimiento de neurotransmisores cerebrales entre las neuronas.', 'CONCENTRACIÓN'),
(3, 'TÉ MATCHA', 'static/img/Papahe/productos_medicinales/teMatcha_p2BJIE3.PNG', 'NATURALHERBAL', '1 cucharadita de té para una taza. Toma 2-3 tazas', 'Frasco 70grs', 'Té Matcha.', 'Ayuda en la pérdida de peso ya que es un un quemador de grasa, aumenta el metabolismo y\r\nquema calorías. Reduce el colesterol y azúcar en la sangre y no eleva los niveles de insulina ni la presión\r\narterial. Poderosa fuente de proteínas, nutrientes y antioxidantes. Además, cuenta con un polifenol denominado EGCG que ayuda a reducir el crecimiento de las células cancerígenas y acelera el metabolismo.\r\nTiene el triple de cafeína que el té convencional, motivo por el que es una gran elección para consumir por\r\nlas mañanas como sustitutivo del café, ya que proporciona un efecto muy similar, siendo más sano.', 'BAJAR DE PESO'),
(4, 'FAT BINDER 60/90', 'static/img/Papahe/productos_medicinales/fatBinder_vBc8mQz.PNG', 'MADRE TIERRA', '1 capsula antes de las comidas principales.', '60 cápsulas.', 'Chitosan, Esterato de Magnesio', '60/90 Fat Binder la nueva fórmula y dispositivo médico de alta pureza y biodisponibilidad\r\npara usarlo en programas de control del peso por medio de la reducción de la absorción de calorías y\r\ngrasas, en forma segura y 100 % natural.', 'BAJAR DE PESO'),
(5, 'LECITINA SOYA POTENCIADA', 'static/img/Papahe/productos_medicinales/lecitinaSoya_mk2Fcsh.PNG', 'AURA VITALIS', '2 cápsulas diarias.', '60 cápsulas.', 'Quitosano, Aloe Vera, Centella Asiática, Almidón.', 'Fibra natural de reconocida utilidad y efectividad en el tratamiento de la celulitis, ayuda a\r\ninhibir el apetito y quemar grasas acumuladas, además de propiedades antiinflamatorias y regeneradoras\r\nde tejido.', 'BAJAR DE PESO');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `papahe_app_catalogo`
--
ALTER TABLE `papahe_app_catalogo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `papahe_app_catalogo_productGas_id_f5bfcbf1_fk_papahe_ap` (`productGas_id`),
  ADD KEY `papahe_app_catalogo_productMed_id_e4dd2476_fk_papahe_ap` (`productMed_id`);

--
-- Indices de la tabla `papahe_app_customuser`
--
ALTER TABLE `papahe_app_customuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `papahe_app_customuser_groups`
--
ALTER TABLE `papahe_app_customuser_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `papahe_app_customuser_gr_customuser_id_group_id_d980581e_uniq` (`customuser_id`,`group_id`),
  ADD KEY `papahe_app_customuser_groups_group_id_0b237a95_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `papahe_app_customuser_user_permissions`
--
ALTER TABLE `papahe_app_customuser_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `papahe_app_customuser_us_customuser_id_permission_9421afe8_uniq` (`customuser_id`,`permission_id`),
  ADD KEY `papahe_app_customuse_permission_id_abbac513_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `papahe_app_productgas`
--
ALTER TABLE `papahe_app_productgas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `papahe_app_productmed`
--
ALTER TABLE `papahe_app_productmed`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `papahe_app_catalogo`
--
ALTER TABLE `papahe_app_catalogo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `papahe_app_customuser`
--
ALTER TABLE `papahe_app_customuser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `papahe_app_customuser_groups`
--
ALTER TABLE `papahe_app_customuser_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `papahe_app_customuser_user_permissions`
--
ALTER TABLE `papahe_app_customuser_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `papahe_app_productgas`
--
ALTER TABLE `papahe_app_productgas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `papahe_app_productmed`
--
ALTER TABLE `papahe_app_productmed`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `papahe_app_catalogo`
--
ALTER TABLE `papahe_app_catalogo`
  ADD CONSTRAINT `papahe_app_catalogo_productGas_id_f5bfcbf1_fk_papahe_ap` FOREIGN KEY (`productGas_id`) REFERENCES `papahe_app_productgas` (`id`),
  ADD CONSTRAINT `papahe_app_catalogo_productMed_id_e4dd2476_fk_papahe_ap` FOREIGN KEY (`productMed_id`) REFERENCES `papahe_app_productmed` (`id`);

--
-- Filtros para la tabla `papahe_app_customuser_groups`
--
ALTER TABLE `papahe_app_customuser_groups`
  ADD CONSTRAINT `papahe_app_customuse_customuser_id_1650c15f_fk_papahe_ap` FOREIGN KEY (`customuser_id`) REFERENCES `papahe_app_customuser` (`id`),
  ADD CONSTRAINT `papahe_app_customuser_groups_group_id_0b237a95_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `papahe_app_customuser_user_permissions`
--
ALTER TABLE `papahe_app_customuser_user_permissions`
  ADD CONSTRAINT `papahe_app_customuse_customuser_id_67f079d9_fk_papahe_ap` FOREIGN KEY (`customuser_id`) REFERENCES `papahe_app_customuser` (`id`),
  ADD CONSTRAINT `papahe_app_customuse_permission_id_abbac513_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
