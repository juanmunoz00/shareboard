-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 11-07-2019 a las 06:09:47
-- Versión del servidor: 5.6.37
-- Versión de PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `shareboard`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shares`
--

CREATE TABLE IF NOT EXISTS `shares` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `link` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `shares`
--

INSERT INTO `shares` (`id`, `user_id`, `title`, `body`, `link`, `create_date`) VALUES
(1, 1, 'Share one', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vitae purus nulla. Nulla facilisi. Duis lobortis magna quis dui vestibulum, vitae lacinia nulla posuere. Etiam in pretium ligula. Nullam sed imperdiet risus, non vulputate nulla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec vitae purus mollis, suscipit ligula sit amet, pretium neque. Nunc ultricies, lorem quis pretium tempor, tortor odio tincidunt arcu, sit amet dapibus metus tellus vel nunc. In elementum dapibus nisl, a consequat erat. Donec gravida sem a enim vehicula, at faucibus ipsum consectetur.', 'syner.info', '2019-07-10 09:08:19'),
(2, 2, 'share two', 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam vitae sagittis lorem, vel pulvinar nulla. Duis condimentum ex congue, dictum velit volutpat, tincidunt risus. Etiam ut consequat arcu, id suscipit est. Aenean vehicula nisl at sapien placerat condimentum ac vitae ex. Phasellus mattis ultricies velit, in euismod velit mollis vel. Duis posuere, dolor sit amet euismod pharetra, arcu eros pretium dui, vitae gravida orci magna vel tortor. Phasellus auctor dictum ex sit amet posuere. Etiam nec ante dui.', 'syner.info', '2019-07-10 09:08:19'),
(3, 1, 'this is my share3', 'this is my test 3', 'www.syner.info', '2019-07-10 16:12:23'),
(4, 1, 'a very cool share', 'this is my very cool share', 'www.syner.info', '2019-07-10 16:12:54'),
(5, 1, 'you know what&#39;s cool?', 'summer', 'www.summer.com', '2019-07-10 16:17:11'),
(6, 1, 'Spiderman far from home is awesome!', 'I had a great time, my expectations were very VERY low but it&#39;s a hell of a ride with this movie and how the character matures.', 'www.spiderman.com', '2019-07-10 23:16:58'),
(7, 1, 'tararara ta taraaa', 'it suddenly came to my mind the indiana jones music', 'www.indianajones.com', '2019-07-10 23:55:21'),
(8, 1, 'wonder how the Tarantino&#39;s Star Trek will be', 'he&#39;s weird and that&#39;s awesome but scary, can the franchise get worse?', 'www.startrek.com', '2019-07-11 00:01:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `register_date`) VALUES
(1, 'juan', 'juan1.arturo.munoz@gmail.com', '1bc6f5287d6bd1faa12b212838370142', '2019-07-10 17:12:50'),
(2, 'pololo', 'juan.arturo.munoz@gmail.com', '1bc6f5287d6bd1faa12b212838370142', '2019-07-10 17:26:12'),
(3, 'alguien', 'correo@mail.com', '8128985b1e54b0431ff08eb6852576ef', '2019-07-10 23:55:53'),
(4, 'alguien', 'alguien@mail.com', 'ede396d31627acccc5eea2ee48948339', '2019-07-10 23:57:59'),
(5, 'nuevo usuario', 'nuevo@alguien.com', '69eebb3f7b527d06f1981c993ab0d5c7', '2019-07-10 23:58:45');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `shares`
--
ALTER TABLE `shares`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `shares`
--
ALTER TABLE `shares`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
