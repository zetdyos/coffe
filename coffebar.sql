-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-05-2016 a las 10:45:19
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `coffebar`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `article_article`
--

CREATE TABLE IF NOT EXISTS `article_article` (
`id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `content` longtext NOT NULL,
  `publication_date` datetime NOT NULL,
  `enable_comments` tinyint(1) NOT NULL,
  `author_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `article_article`
--

INSERT INTO `article_article` (`id`, `image`, `title`, `slug`, `content`, `publication_date`, `enable_comments`, `author_id`) VALUES
(1, 'article/images/1.jpg', 'Introducción a las Bases de Datos. Modelo Entidad-Relación ', 'introduccion-las-bases-de-datos-modelo-entidad-rel', '<p style="text-align: justify;">Las bases de datos son muy utilizadas en la actualidad y actualmente las que m&aacute;s se usan son las bases de datos relacionales, por eso no se aclara de qu&eacute; tipo son, pero las primeras que existieron eran jer&aacute;rquicas, estas evolucionaron a las reticulares hasta el advenimiento de las relacionales que son las que trataremos en esta asignatura. En la asignatura Bases de Datos Avanzadas ver&aacute;n algunos ejemplos de bases de datos que han seguido apareciendo producto del desarrollo y las necesidades de procesamiento. Existen bases de datos orientadas a objetos, espaciales, deductivas, los llamados almacenes de datos o datawarehouse, NoSQL, etc. Surgimiento hist&oacute;rico de las bases de datos integradas. Al estudiar el desarrollo del procesamiento automatizado de datos, en lo que se refiere al aseguramiento t&eacute;cnico, se habla de diferentes generaciones. Desde el punto de vista del aseguramiento matem&aacute;tico y en particular, el aseguramiento de programas, algunos autores reconocen 3 generaciones:</p>\r\n\r\n<ol>\r\n	<li>Soluci&oacute;n de tareas aisladas.</li>\r\n	<li>Integraci&oacute;n de tareas aisladas en sistemas particulares.</li>\r\n	<li>Integraci&oacute;n de sistemas particulares en sistemas automatizados de direcci&oacute;n.</li>\r\n</ol>\r\n', '2016-05-01 10:00:00', 1, 2),
(2, 'article/images/2_8xIaSLN.jpg', 'El Modelo Entidad-Relación extendido', 'el-modelo-entidad-relacion-extendido', '<p style="text-align: justify;">El proceso de dise&ntilde;o de la BD transita a trav&eacute;s de una serie de pasos en los cuales se va avanzando de un nivel de abstracci&oacute;n menor a otro m&aacute;s profundo, mediante la elaboraci&oacute;n de una sucesi&oacute;n de modelos. En los &uacute;ltimos a&ntilde;os se ha generalizado la concepci&oacute;n del dise&ntilde;o de las BD propuestas por el grupo ANSI/SPARC, la cual constituye, al mismo tiempo, una arquitectura para los SBD, tal y como la acabamos de estudiar. Hemos visto en esta arquitectura que cada nivel de la misma es una cierta forma de representaci&oacute;n abstracta de la informaci&oacute;n y una de las funciones m&aacute;s importantes del SGBD consiste precisamente en permitirle al usuario la interacci&oacute;n con los datos en estos t&eacute;rminos abstractos, en lugar de tenerlo que hacer directamente con la forma en que esos datos est&aacute;n f&iacute;sicamente almacenados. Es por ello que, al acometerse la tarea de dise&ntilde;o de una BD, la atenci&oacute;n se debe centrar en el aspecto l&oacute;gico de la informaci&oacute;n, ya que los detalles relacionados con el almacenamiento f&iacute;sico son parte de todo SGBD que se utilice, y por tanto, no pueden ser modificados. Los SGBD existentes utilizan diferentes modelos de datos para la representaci&oacute;n en el nivel l&oacute;gico global. Son comunes a todos ellos las siguientes caracter&iacute;sticas: 1. La representaci&oacute;n de la informaci&oacute;n se basa en el uso de determinadas estructuras de datos que poseen una capacidad descriptiva limitada (s&oacute;lo diferencian un rasgo sem&aacute;ntico: el tipo de proyecci&oacute;n (1:1, 1: m, m: m)). 2. Utilizan una terminolog&iacute;a que no es familiar al usuario del sistema, por lo que dificultan la comunicaci&oacute;n usuario- dise&ntilde;ador. Adem&aacute;s, cada uno de estos modelos est&aacute; vinculado con un tipo particular de SGBD. Por todo ello, es necesario tratar con otro tipo de modelo cuando se aborda el problema del dise&ntilde;o de las BD, el cual debe superar los problemas anteriores y constituye un nivel de abstracci&oacute;n intermedio entre la realidad informativa y el nivel l&oacute;gico global de la arquitectura. A este nuevo tipo de modelo se le denomina modelo conceptual. O sea, el modelo conceptual se define exteriormente al SGBD, realiz&aacute;ndose la transformaci&oacute;n entre el modelo conceptual y el l&oacute;gico global (manual o automatizado). El proceso de modelaci&oacute;n conceptual es denominado tambi&eacute;n modelaci&oacute;n sem&aacute;ntica, ya que con estos modelos se pretende reflejar en mayor medida la sem&aacute;ntica, el significado de los datos y sus interrelaciones.</p>\r\n', '2016-05-11 06:07:24', 1, 2),
(3, 'article/images/3.jpg', 'El modelo de datos relacional. Transformación de modelo ER a modelo Relacional', 'el-modelo-de-datos-relacional-transformacion-de-mo', '<p style="text-align: justify;">En actividades anteriores hemos estudiado que existen distintos modelos seg&uacute;n los cuales la informaci&oacute;n puede ser almacenada y relacionada entre s&iacute;. Actualmente, para la mayor&iacute;a de las aplicaciones de gesti&oacute;n que utilizan bases de datos, el modelo m&aacute;s empleado es el modelo relacional, por su gran versatilidad, potencia y por los formalismos matem&aacute;ticos sobre los que se basa. Este modelo permite representar la informaci&oacute;n del mundo real de una manera intuitiva, introduciendo conceptos cotidianos y f&aacute;ciles de entender por cualquier inexperto. Asimismo, mantiene informaci&oacute;n sobre las propias caracter&iacute;sticas de la base de datos (metadatos), que facilitan las modificaciones, disminuyendo los problemas ocasionados en las aplicaciones ya desarrolladas. Por otro lado, incorpora mecanismos de consultas muy potentes, totalmente independientes del SGBD, e incluso de la organizaci&oacute;n f&iacute;sica de los datos; el propio SGBD es el encargado de optimizar estas preguntas en formato est&aacute;ndar, a sus caracter&iacute;sticas propias de almacenamiento. El modelo de datos relacional fue introducido por Edgar Frank Codd o simplemente Ted Codd, 1970, en los laboratorios de IBM en California. Se trata de un modelo l&oacute;gico, que establece una estructura sobre los datos, aunque posteriormente estos puedan ser almacenados de m&uacute;ltiples formas para aprovechar caracter&iacute;sticas f&iacute;sicas concretas de la m&aacute;quina sobre la que se implante la base de datos realmente. Es algo as&iacute; como guardar unos libros en una biblioteca; dependiendo del n&uacute;mero de salas de la biblioteca, del tama&ntilde;o y forma de cada una de ellas, su n&uacute;mero de estanter&iacute;as, y en definitiva, de las caracter&iacute;sticas f&iacute;sicas del recinto, podremos disponer los libros de una forma u otra para hacer m&aacute;s c&oacute;moda y f&aacute;cil su consulta y acceso. Los libros son los mismos, pero pueden ubicarse de muy distintas formas. Vamos a estudiar entonces, las caracter&iacute;sticas concretas de este modelo de datos, sin entrar para nada en c&oacute;mo lo almacena f&iacute;sicamente cada ordenador, o cada SGBD.</p>\r\n', '2016-05-10 16:00:00', 1, 2),
(4, 'article/images/img1_F7bGioG.jpg', 'Teoría de diseño de bases de datos relacionales. Propiedades de las relaciones.', 'teoria-de-diseno-de-bases-de-datos-relacionales-pr', '<p style="text-align: justify;">Como se analiz&oacute; en la conferencia 3 una Base de Datos Relacional debe cumplir con una serie de requisitos que eviten las anomal&iacute;as, aseguren la consistencia de los datos y respondan a determinadas normas de calidad. Llevar del modelo entidad-relaci&oacute;n al modelo relacional por s&iacute; solo no asegura que se cumplan estos requisitos. El proceso de normalizaci&oacute;n que estudiaremos a continuaci&oacute;n nos asegura obtener una base de datos &oacute;ptima. Para poder entender mejor el proceso de normalizaci&oacute;n debemos recordar primero un conjunto de conceptos fundamentales ya estudiados en conferencias anteriores. Ejemplo: SUMINISTRADOR(SNombre, Dir, CodProducto, Precio) El precio del producto lo fija el suministrador. Tipos de anomal&iacute;as (Recordar de la Conferencia 3): 1. Actualizaci&oacute;n. Algo dicho en varios lugares puede que se modifique en un lugar y en otro no lo cual es una fuente potencial de error (redundancia de la informaci&oacute;n) 2. Inserci&oacute;n. No permite poner productos que no sean suministrados, ni puede poner suministradores que no suministren productos porque SNombre y CodProducto son llaves. 3. Eliminaci&oacute;n. Al eliminar el &uacute;ltimo producto que un suministrador provee hace que se pierdan los datos del suministrador. Las dependencias funcionales nos van a conducir durante todo el proceso de dise&ntilde;o. Ejemplo: SNombre -&gt; Dir SNombre, CodProducto -&gt; Precio Redundancia: Informaci&oacute;n que se infiere, que se va a repetir siempre que se ponga algo.</p>\r\n', '2016-05-24 05:40:22', 1, 2),
(5, 'article/images/img2.jpg', 'Teoría de diseño de bases de datos relacionales. Propiedades de las descomposiciones.', 'teoria-de-diseno-de-bases-de-datos-relacionales', '<p style="text-align: justify;">En la clase anterior vimos que la teor&iacute;a del dise&ntilde;o o la normalizaci&oacute;n de relaciones puede conducir a eliminar del esquema relacional algunos de los problemas que puede generar un mal dise&ntilde;o, estos son: redundancias y anomal&iacute;as. Esto se logra a trav&eacute;s de la descomposici&oacute;n de un esquema relacional en subesquemas. Un esquema o relaci&oacute;n individual en una forma normal superior no garantiza un buen dise&ntilde;o. Un conjunto de relaciones que juntas constituyen un esquema relacional debe poseer ciertas propiedades adicionales para asegurar un buen dise&ntilde;o: &bull; Conservaci&oacute;n de las dependencias. &bull; Acople sin p&eacute;rdida. Existen algoritmos de descomposici&oacute;n que garantizan estas propiedades (<strong>conceptos formales</strong>) y que aseguran que las relaciones est&eacute;n correctamente normalizadas.</p>\r\n', '2016-05-25 05:41:27', 1, 2),
(6, 'article/images/img3.jpg', 'Metodología para el Diseño de Bases de Datos.', 'metodologia-para-el-diseno-de-bases-de-datos', '<p style="text-align:justify">La conferencia tendr&aacute; una duraci&oacute;n de 90 minutos, se presentar&aacute;n los pasos b&aacute;sicos que le permitir&aacute;n al estudiante, definir, explicar y aplicar los fundamentos del Modelo Relacional, aplicando la Metodolog&iacute;a para el dise&ntilde;o de SBD, desde la definici&oacute;n de las dependencias funcionales, haciendo &eacute;nfasis en la Normalizaci&oacute;n, hasta la obtenci&oacute;n del Modelo L&oacute;gico &ndash; Global de los Datos.. Se trabaja esencialmente el m&eacute;todo de exposici&oacute;n problem&aacute;tica y el trabajo en grupos. Las conclusiones deben realizarse por elaboraci&oacute;n conjunta, los alumnos deben concluir los aspectos m&aacute;s relevantes guiados por el profesor, que aprovechar&aacute; los momentos oportunos para la orientaci&oacute;n del estudio independiente.</p>\r\n\r\n<p style="text-align:justify"><img alt="" src="/media/image_upload/2016/05/25/img5.jpg" style="height:268px; width:388px" /></p>\r\n\r\n<p style="text-align:justify">- Conocemos como llevar a FNBC y c&oacute;mo, a partir del DER obtener el modelo l&oacute;gico seg&uacute;n cualquier enfoque. - Siempre hemos partido de que nos indiquen los datos a tomar en cuenta y las DF existentes entre ellos. - En una situaci&oacute;n pr&aacute;ctica es preciso determinar ambas cuestiones. - Veremos qu&eacute; pasos podemos seguir para lograr esto. - Rigurosamente, esto se obtiene luego de realizada la etapa de an&aacute;lisis y partiendo de lo obtenido en &eacute;sta pero trataremos de dar indicaciones que permitan lograr un buen dise&ntilde;o de la BD. - Para nuestras explicaciones, utilizaremos un ejemplo que iremos desarrollando.</p>\r\n', '2016-05-16 16:00:00', 1, 2),
(7, 'article/images/img7.jpg', 'MySQL comparisons', 'mysql-comparisons', '<p>In MySQL, a database table&rsquo;s &ldquo;collation&rdquo; setting determines whether <tt>exact</tt> comparisons are case-sensitive. This is a database setting, <em>not</em> a Django setting. It&rsquo;s possible to configure your MySQL tables to use case-sensitive comparisons, but some trade-offs are involved. For more information about this, see the <a class="reference internal" href="file:///E:/Proyectos/Documentacion/Programacion/Django/django-docs-1.8-en/ref/databases.html#mysql-collation"><em>collation section</em></a> in the <a class="reference internal" href="file:///E:/Proyectos/Documentacion/Programacion/Django/django-docs-1.8-en/ref/databases.html"><em>databases</em></a> documentation.</p>\r\n', '2016-05-30 03:33:42', 1, 2),
(8, 'article/images/img6.jpg', 'MySQL 2.6 comparisons', 'mysql-26-comparisons', '<p>In MySQL, a database table&rsquo;s &ldquo;collation&rdquo; setting determines whether <tt>exact</tt> comparisons are case-sensitive. This is a database setting, <em>not</em> a Django setting. It&rsquo;s possible to configure your MySQL tables to use case-sensitive comparisons, but some trade-offs are involved. For more information about this, see the <a class="reference internal" href="file:///E:/Proyectos/Documentacion/Programacion/Django/django-docs-1.8-en/ref/databases.html#mysql-collation"><em>collation section</em></a> in the <a class="reference internal" href="file:///E:/Proyectos/Documentacion/Programacion/Django/django-docs-1.8-en/ref/databases.html"><em>databases</em></a> documentation.</p>\r\n', '2016-05-30 03:34:16', 1, 2),
(9, 'article/images/img5.jpg', 'Performance considerations', 'performance-considerations', '<p>Be cautious about using nested queries and understand your database server&rsquo;s performance characteristics (if in doubt, benchmark!). Some database backends, most notably MySQL, don&rsquo;t optimize nested queries very well. It is more efficient, in those cases, to extract a list of values and then pass that into the second query. That is, execute two queries instead of one:</p>\r\n', '2016-05-30 03:35:03', 1, 2),
(10, 'article/images/3_CziEJKb.jpg', 'EL SISTEMA DE PLANTILLAS', 'el-sistema-de-plantillas', '<p>La etiqueta {% for %} permite iterar sobre cada uno de los elementos de una secuencia. Como en la sentencia for de Python, la sintaxis es for X in Y, d&oacute;nde Y es la secuencia sobre la que se hace el bucle y X es el nombre de la variable que se usar&aacute; para cada uno de los ciclos del bucle.</p>\r\n', '2016-05-09 07:00:54', 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
`id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
`id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
`id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add blog', 7, 'add_blog'),
(20, 'Can change blog', 7, 'change_blog'),
(21, 'Can delete blog', 7, 'delete_blog'),
(22, 'Can add blog entry', 8, 'add_blogentry'),
(23, 'Can change blog entry', 8, 'change_blogentry'),
(24, 'Can delete blog entry', 8, 'delete_blogentry'),
(25, 'Can add comment', 9, 'add_comment'),
(26, 'Can change comment', 9, 'change_comment'),
(27, 'Can delete comment', 9, 'delete_comment'),
(28, 'Can add reaction', 10, 'add_reaction'),
(29, 'Can change reaction', 10, 'change_reaction'),
(30, 'Can delete reaction', 10, 'delete_reaction'),
(31, 'Can add blog roll', 11, 'add_blogroll'),
(32, 'Can change blog roll', 11, 'change_blogroll'),
(33, 'Can delete blog roll', 11, 'delete_blogroll'),
(34, 'Can add pingback', 12, 'add_pingback'),
(35, 'Can change pingback', 12, 'change_pingback'),
(36, 'Can delete pingback', 12, 'delete_pingback'),
(37, 'Can add pingback client', 13, 'add_pingbackclient'),
(38, 'Can change pingback client', 13, 'change_pingbackclient'),
(39, 'Can delete pingback client', 13, 'delete_pingbackclient'),
(40, 'Can add directory ping', 14, 'add_directoryping'),
(41, 'Can change directory ping', 14, 'change_directoryping'),
(42, 'Can delete directory ping', 14, 'delete_directoryping'),
(43, 'Can add Tag', 15, 'add_tag'),
(44, 'Can change Tag', 15, 'change_tag'),
(45, 'Can delete Tag', 15, 'delete_tag'),
(46, 'Can add Tagged Item', 16, 'add_taggeditem'),
(47, 'Can change Tagged Item', 16, 'change_taggeditem'),
(48, 'Can delete Tagged Item', 16, 'delete_taggeditem'),
(49, 'Can add post', 17, 'add_post'),
(50, 'Can change post', 17, 'change_post'),
(51, 'Can delete post', 17, 'delete_post'),
(52, 'Can add comment', 18, 'add_comment'),
(53, 'Can change comment', 18, 'change_comment'),
(54, 'Can delete comment', 18, 'delete_comment'),
(55, 'Can add site', 19, 'add_site'),
(56, 'Can change site', 19, 'change_site'),
(57, 'Can delete site', 19, 'delete_site'),
(58, 'Can add entry', 20, 'add_entry'),
(59, 'Can change entry', 20, 'change_entry'),
(60, 'Can delete entry', 20, 'delete_entry'),
(61, 'Can add entry image', 21, 'add_entryimage'),
(62, 'Can change entry image', 21, 'change_entryimage'),
(63, 'Can delete entry image', 21, 'delete_entryimage'),
(64, 'Can add comment', 22, 'add_comment'),
(65, 'Can change comment', 22, 'change_comment'),
(66, 'Can delete comment', 22, 'delete_comment'),
(67, 'Can moderate comments', 22, 'can_moderate'),
(68, 'Can add comment flag', 23, 'add_commentflag'),
(69, 'Can change comment flag', 23, 'change_commentflag'),
(70, 'Can delete comment flag', 23, 'delete_commentflag'),
(71, 'Can add comment', 24, 'add_democomment'),
(72, 'Can change comment', 24, 'change_democomment'),
(73, 'Can delete comment', 24, 'delete_democomment'),
(74, 'Can moderate comments', 24, 'can_moderate'),
(75, 'Can add comment', 25, 'add_coffebarcomment'),
(76, 'Can change comment', 25, 'change_coffebarcomment'),
(77, 'Can delete comment', 25, 'delete_coffebarcomment'),
(78, 'Can moderate comments', 25, 'can_moderate'),
(79, 'Can add comment', 26, 'add_coffecomment'),
(80, 'Can change comment', 26, 'change_coffecomment'),
(81, 'Can delete comment', 26, 'delete_coffecomment'),
(82, 'Can moderate comments', 26, 'can_moderate'),
(83, 'Can add user profile', 27, 'add_userprofile'),
(84, 'Can change user profile', 27, 'change_userprofile'),
(85, 'Can delete user profile', 27, 'delete_userprofile'),
(86, 'Can add fluent comment', 22, 'add_fluentcomment'),
(87, 'Can change fluent comment', 22, 'change_fluentcomment'),
(88, 'Can delete fluent comment', 22, 'delete_fluentcomment'),
(89, 'Can add Article', 29, 'add_article'),
(90, 'Can change Article', 29, 'change_article'),
(91, 'Can delete Article', 29, 'delete_article'),
(92, 'Can add Article', 30, 'add_event'),
(93, 'Can change Article', 30, 'change_event'),
(94, 'Can delete Article', 30, 'delete_event'),
(95, 'Can add you tube video', 31, 'add_youtubevideo'),
(96, 'Can change you tube video', 31, 'change_youtubevideo'),
(97, 'Can delete you tube video', 31, 'delete_youtubevideo'),
(98, 'Can add photo', 32, 'add_photo'),
(99, 'Can change photo', 32, 'change_photo'),
(100, 'Can delete photo', 32, 'delete_photo'),
(104, 'Can add Coffe Media Album', 34, 'add_coffealbum'),
(105, 'Can change Coffe Media Album', 34, 'change_coffealbum'),
(106, 'Can delete Coffe Media Album', 34, 'delete_coffealbum'),
(107, 'Can add Product', 35, 'add_product'),
(108, 'Can change Product', 35, 'change_product'),
(109, 'Can delete Product', 35, 'delete_product');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
`id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(2, 'pbkdf2_sha256$20000$COctIerH9nQj$ZS8s3xdOoCk6RFPzAvMU0vy+tHtpBau0p4FXaL9xQ50=', '2016-05-29 22:51:37', 1, 'admin', 'Erodis', 'Perez Michel', 'eperezm1986@molanco.com', 1, 1, '2016-05-12 05:55:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coffegallery_coffealbum`
--

CREATE TABLE IF NOT EXISTS `coffegallery_coffealbum` (
`id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` longtext,
  `enable_album` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `coffegallery_coffealbum`
--

INSERT INTO `coffegallery_coffealbum` (`id`, `title`, `description`, `enable_album`) VALUES
(1, 'Navidad 2016', 'Feliz dia que joder tios.', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coffegallery_photo`
--

CREATE TABLE IF NOT EXISTS `coffegallery_photo` (
`id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `original_image` varchar(100) NOT NULL,
  `album_id` int(11)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `coffegallery_photo`
--

INSERT INTO `coffegallery_photo` (`id`, `title`, `description`, `original_image`, `album_id`) VALUES
(2, 'Caffe con aroma de mujer', 'mejor cafe cubano del alto oriente', 'galleries/2016/05/30/img3.jpg', 1),
(3, 'Lorem Ipsum is simply dummy text', '', 'galleries/2016/05/30/img2.jpg', 1),
(4, 'Fluents', '', 'galleries/2016/05/30/img3_vI7LdB5.jpg', 1),
(5, 'Caffe amargo', '', 'galleries/2016/05/30/img4.jpg', 1),
(6, 'Coffe en polvo', '', 'galleries/2016/05/30/img5.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coffegallery_youtubevideo`
--

CREATE TABLE IF NOT EXISTS `coffegallery_youtubevideo` (
`id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `embed_code` longtext NOT NULL,
  `thumbnail` varchar(100) NOT NULL,
  `album_id` int(11)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `coffegallery_youtubevideo`
--

INSERT INTO `coffegallery_youtubevideo` (`id`, `title`, `embed_code`, `thumbnail`, `album_id`) VALUES
(1, 'Que Fieston tios', 'dsfghhjkl', 'galleries/video/2016/05/30/thumbnail/img9.jpg', 1),
(2, 'Cappuccino', 'Cappuccino', 'galleries/video/2016/05/30/thumbnail/1.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
`id` int(11) NOT NULL,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2016-05-12 05:59:12', '1', 'admin', 3, '', 4, 2),
(2, '2016-05-12 05:59:30', '2', 'admin', 2, 'Modificado/a username.', 4, 2),
(3, '2016-05-18 06:15:04', '1', 'Hola mundo', 1, '', 7, 2),
(4, '2016-05-18 06:15:09', '1', 'Hola mundo', 2, 'No ha cambiado ningún campo.', 7, 2),
(5, '2016-05-18 06:15:14', '1', 'Hola mundo', 2, 'No ha cambiado ningún campo.', 7, 2),
(6, '2016-05-18 06:17:10', '1', 'Hola mundo', 1, '', 8, 2),
(7, '2016-05-19 06:41:16', '1', 'www.example.com', 2, 'Modificado/a domain y name.', 19, 2),
(8, '2016-05-21 05:13:30', '2', 'Hola mundo', 1, '', 20, 2),
(9, '2016-05-21 05:33:14', '1', 'Hola mundo - andablo...', 2, 'Modificado/a image.', 21, 2),
(10, '2016-05-21 05:33:57', '1', 'localhost', 2, 'Modificado/a domain y name.', 19, 2),
(11, '2016-05-21 05:40:07', '2', 'Hola mundo', 2, 'Modificado/a content y tags.', 20, 2),
(12, '2016-05-21 05:41:00', '1', 'http://127.0.0.1:8000/', 2, 'Modificado/a domain.', 19, 2),
(13, '2016-05-21 06:06:56', '1', 'Hola mundo - ', 2, 'Modificado/a image.', 21, 2),
(14, '2016-05-21 06:07:13', '1', 'Hola mundo - andablo...', 2, 'Modificado/a image.', 21, 2),
(15, '2016-05-21 06:07:27', '2', 'Hola mundo - andablo...', 1, '', 21, 2),
(16, '2016-05-21 06:09:18', '1', '127.0.0.1:8000', 2, 'Modificado/a domain.', 19, 2),
(17, '2016-05-21 06:38:09', '2', 'Algunas herramienas útiles del Quantum Gis', 2, 'Modificado/a title, content y tags.', 20, 2),
(18, '2016-05-21 06:43:08', '1', 'admin: hoy se jode esto...', 1, '', 26, 2),
(19, '2016-05-21 07:09:42', '1', 'admin', 1, '', 27, 2),
(20, '2016-05-21 07:10:37', '1', 'admin', 2, 'Modificado/a greatest_fear.', 27, 2),
(21, '2016-05-21 07:13:25', '3', 'Lorem Ipsum is simply dummy text', 1, '', 20, 2),
(22, '2016-05-21 08:17:33', '3', 'Lorem Ipsum is simply dummy text', 2, 'Modificado/a content, is_published y tags.', 20, 2),
(23, '2016-05-22 01:00:56', '2', 'admin', 2, 'Modificado/a first_name y last_name.', 4, 2),
(24, '2016-05-22 01:01:18', '2', 'Algunas herramienas útiles del Quantum Gis', 2, 'Modificado/a content, is_published y tags.', 20, 2),
(25, '2016-05-22 01:37:52', '2', 'Algunas herramienas útiles del Quantum Gis', 2, 'Modificado/a content, is_published y tags.', 20, 2),
(26, '2016-05-22 04:53:20', '4', 'Las  vistas genéricas basadas en clases de Django', 1, '', 20, 2),
(27, '2016-05-22 05:10:31', '4', 'Las  vistas genéricas basadas en clases de Django', 2, 'Modificado/a content y tags. Eliminado/a "Las  vi... - " entry image.', 20, 2),
(28, '2016-05-24 03:05:16', '2', 'Erodis Perez Michel: Lo que ud no vio....', 2, 'Modificado/a comment.', 26, 2),
(29, '2016-05-24 03:05:39', '1', 'admin', 2, 'Modificado/a greatest_fear.', 27, 2),
(30, '2016-05-24 20:10:22', '1', 'Erodis Perez Michel: hasgfjf...', 2, 'No ha cambiado ningún campo.', 28, 2),
(31, '2016-05-25 02:37:37', '1', ' TERMS AND CONDITIONS FOR USE, REPRODUCTION, AND DISTRIBUTION', 1, '', 29, 2),
(32, '2016-05-25 02:40:39', '2', 'Django tag parser', 1, '', 29, 2),
(33, '2016-05-25 02:41:46', '1', 'Erodis Perez Michel: hasgfjf...', 3, '', 28, 2),
(34, '2016-05-25 05:05:23', '1', ' TERMS AND CONDITIONS FOR USE, REPRODUCTION, AND DISTRIBUTION', 2, 'Modificado/a content.', 29, 2),
(35, '2016-05-25 05:05:43', '1', ' TERMS AND CONDITIONS FOR USE, REPRODUCTION, AND DISTRIBUTION', 2, 'Modificado/a content.', 29, 2),
(36, '2016-05-25 05:36:31', '1', 'Introducción a las Bases de Datos. Modelo Entidad-Relación ', 1, '', 29, 2),
(37, '2016-05-25 05:38:17', '2', 'El Modelo Entidad-Relación extendido', 1, '', 29, 2),
(38, '2016-05-25 05:39:37', '3', 'El modelo de datos relacional. Transformación de modelo ER a modelo Relacional', 1, '', 29, 2),
(39, '2016-05-25 05:40:38', '4', 'Teoría de diseño de bases de datos relacionales. Propiedades de las relaciones.', 1, '', 29, 2),
(40, '2016-05-25 05:42:03', '5', 'Teoría de diseño de bases de datos relacionales. Propiedades de las descomposiciones.', 1, '', 29, 2),
(41, '2016-05-25 05:43:10', '6', 'Metodología para el Diseño de Bases de Datos.', 1, '', 29, 2),
(42, '2016-05-25 06:06:38', '6', 'Metodología para el Diseño de Bases de Datos.', 2, 'Modificado/a publication_date.', 29, 2),
(43, '2016-05-25 06:06:42', '5', 'Teoría de diseño de bases de datos relacionales. Propiedades de las descomposiciones.', 2, 'No ha cambiado ningún campo.', 29, 2),
(44, '2016-05-25 06:07:02', '4', 'Teoría de diseño de bases de datos relacionales. Propiedades de las relaciones.', 2, 'Modificado/a publication_date.', 29, 2),
(45, '2016-05-25 06:07:14', '3', 'El modelo de datos relacional. Transformación de modelo ER a modelo Relacional', 2, 'Modificado/a publication_date.', 29, 2),
(46, '2016-05-25 06:07:27', '2', 'El Modelo Entidad-Relación extendido', 2, 'Modificado/a publication_date.', 29, 2),
(47, '2016-05-25 06:07:45', '1', 'Introducción a las Bases de Datos. Modelo Entidad-Relación ', 2, 'Modificado/a publication_date.', 29, 2),
(48, '2016-05-25 06:47:48', '5', 'Martha Jay Griñan: ¿Pitu, tag que ese en inglés?\r\n\r\nInteresante el te...', 2, 'Modificado/a is_public.', 28, 2),
(49, '2016-05-25 06:49:02', '6', 'Metodología para el Diseño de Bases de Datos.', 2, 'Modificado/a enable_comments.', 29, 2),
(50, '2016-05-25 06:51:59', '6', 'Metodología para el Diseño de Bases de Datos.', 2, 'Modificado/a enable_comments.', 29, 2),
(51, '2016-05-25 20:06:57', '6', 'Metodología para el Diseño de Bases de Datos.', 2, 'Modificado/a content.', 29, 2),
(52, '2016-05-25 20:08:40', '6', 'Metodología para el Diseño de Bases de Datos.', 2, 'Modificado/a content.', 29, 2),
(53, '2016-05-25 20:10:05', '5', 'Teoría de diseño de bases de datos relacionales. Propiedades de las descomposiciones.', 2, 'Modificado/a content.', 29, 2),
(54, '2016-05-25 20:10:13', '4', 'Teoría de diseño de bases de datos relacionales. Propiedades de las relaciones.', 2, 'Modificado/a content.', 29, 2),
(55, '2016-05-25 20:10:22', '3', 'El modelo de datos relacional. Transformación de modelo ER a modelo Relacional', 2, 'Modificado/a content.', 29, 2),
(56, '2016-05-25 20:10:32', '2', 'El Modelo Entidad-Relación extendido', 2, 'Modificado/a content.', 29, 2),
(57, '2016-05-25 20:11:33', '1', 'Introducción a las Bases de Datos. Modelo Entidad-Relación ', 2, 'Modificado/a content.', 29, 2),
(58, '2016-05-25 20:29:21', '6', 'Metodología para el Diseño de Bases de Datos.', 2, 'No ha cambiado ningún campo.', 29, 2),
(59, '2016-05-27 02:44:47', '6', 'Metodología para el Diseño de Bases de Datos.', 2, 'No ha cambiado ningún campo.', 29, 2),
(60, '2016-05-27 04:17:23', '6', 'Metodología para el Diseño de Bases de Datos.', 2, 'Modificado/a content.', 29, 2),
(61, '2016-05-28 06:44:27', '9', 'Erodis Perez Michel: estes si...', 2, 'Changed is_public.', 28, 2),
(62, '2016-05-28 06:44:52', '8', 'Erodis Perez Michel: Este es otro correo de prueba...', 2, 'Changed is_public.', 28, 2),
(63, '2016-05-28 06:45:01', '7', 'Erodis Perez Michel: Estoes con correos de pruebas...', 2, 'Changed is_public and is_removed.', 28, 2),
(64, '2016-05-28 07:05:18', '11', 'Erodis Perez Michel: In samara...', 3, '', 28, 2),
(65, '2016-05-29 21:26:33', '15', 'asasa: as...', 2, 'Changed is_public.', 28, 2),
(66, '2016-05-30 01:55:22', '1', 'Party', 1, '', 30, 2),
(67, '2016-05-30 02:18:29', '1', 'Party', 2, 'Changed start_date.', 30, 2),
(68, '2016-05-30 02:19:30', '1', 'Party', 2, 'Changed start_date and end_date.', 30, 2),
(69, '2016-05-30 02:22:56', '1', 'Party', 2, 'Changed end_date.', 30, 2),
(70, '2016-05-30 03:01:02', '1', 'Party', 2, 'Changed slug.', 30, 2),
(71, '2016-05-30 03:18:11', '1', 'Django administration Party', 2, 'Changed title and slug.', 30, 2),
(72, '2016-05-30 03:30:48', '1', 'Django administration Party', 2, 'Changed description.', 30, 2),
(73, '2016-05-30 03:33:49', '7', 'MySQL comparisons', 1, '', 29, 2),
(74, '2016-05-30 03:34:34', '8', 'MySQL 2.6 comparisons', 1, '', 29, 2),
(75, '2016-05-30 03:35:13', '9', 'Performance considerations', 1, '', 29, 2),
(76, '2016-05-30 04:26:09', '1', 'CoffeAlbum object', 1, '', 34, 2),
(77, '2016-05-30 04:26:19', '1', 'CoffeAlbum object', 2, 'No fields changed.', 34, 2),
(78, '2016-05-30 04:31:44', '2', 'Caffe con aroma de mujer', 1, '', 32, 2),
(79, '2016-05-30 04:32:49', '2', 'Caffe con aroma de mujer', 2, 'Changed original_image.', 32, 2),
(80, '2016-05-30 04:35:24', '1', 'Que Fieston tios', 1, '', 31, 2),
(81, '2016-05-30 04:35:25', '1', 'Django administration Party', 2, 'Changed image.', 30, 2),
(82, '2016-05-30 04:38:36', '1', 'Django administration Party', 2, 'Changed description.', 30, 2),
(83, '2016-05-30 05:30:50', '3', 'Lorem Ipsum is simply dummy text', 1, '', 32, 2),
(84, '2016-05-30 05:31:04', '4', 'Fluents', 1, '', 32, 2),
(85, '2016-05-30 05:41:00', '1', 'Django administration Party', 1, '', 35, 2),
(86, '2016-05-30 05:41:50', '2', 'Built-in Field classes', 1, '', 35, 2),
(87, '2016-05-30 05:42:53', '3', 'FileField and FieldFile', 1, '', 35, 2),
(88, '2016-05-30 05:43:41', '4', 'Relationship fields', 1, '', 35, 2),
(89, '2016-05-30 05:47:26', '8', 'MySQL 2.6 comparisons', 2, 'Changed image.', 29, 2),
(90, '2016-05-30 06:37:53', '5', 'Caffe amargo', 1, '', 32, 2),
(91, '2016-05-30 06:38:18', '6', 'Coffe en polvo', 1, '', 32, 2),
(92, '2016-05-30 06:54:46', '1', 'Django administration', 2, 'Changed title.', 30, 2),
(93, '2016-05-30 07:01:02', '10', 'EL SISTEMA DE PLANTILLAS', 1, '', 29, 2),
(94, '2016-05-30 07:15:47', '1', 'Que Fieston tios', 2, 'Changed thumbnail.', 31, 2),
(95, '2016-05-30 07:44:45', '2', 'Cappuccino', 1, '', 31, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_comments`
--

CREATE TABLE IF NOT EXISTS `django_comments` (
`id` int(11) NOT NULL,
  `object_pk` longtext NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(254) DEFAULT NULL,
  `user_url` varchar(200) NOT NULL,
  `comment` longtext NOT NULL,
  `submit_date` datetime NOT NULL,
  `ip_address` char(39) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `is_removed` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_comments`
--

INSERT INTO `django_comments` (`id`, `object_pk`, `user_name`, `user_email`, `user_url`, `comment`, `submit_date`, `ip_address`, `is_public`, `is_removed`, `content_type_id`, `site_id`, `user_id`) VALUES
(12, '1', 'Martha Jay', 'mjay@udg.co.cu', '', 'Comentarios de la vida', '2016-05-28 07:07:08', '127.0.0.1', 1, 0, 29, 1, 2),
(13, '3', 'Abdul', 'eperezm@gmail.com', '', 'In Samara', '2016-05-28 07:07:47', '127.0.0.1', 1, 0, 29, 1, 2),
(14, '2', 'Daniel', 'admin@example.com', '', 'Y esto que pasa', '2016-05-28 07:10:07', '127.0.0.1', 1, 0, 29, 1, NULL),
(15, '2', 'asasa', 'sas@sss.com', '', 'as', '2016-05-29 21:24:42', '127.0.0.1', 1, 0, 29, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_comment_flags`
--

CREATE TABLE IF NOT EXISTS `django_comment_flags` (
`id` int(11) NOT NULL,
  `flag` varchar(30) NOT NULL,
  `flag_date` datetime NOT NULL,
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_comment_flags`
--

INSERT INTO `django_comment_flags` (`id`, `flag`, `flag_date`, `comment_id`, `user_id`) VALUES
(20, 'moderator approval', '2016-05-28 07:08:13', 13, 2),
(21, 'moderator approval', '2016-05-28 07:08:13', 12, 2),
(22, 'moderator approval', '2016-05-28 07:11:02', 14, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
`id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(20, 'andablog', 'entry'),
(21, 'andablog', 'entryimage'),
(29, 'article', 'article'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'blogango', 'blog'),
(8, 'blogango', 'blogentry'),
(11, 'blogango', 'blogroll'),
(9, 'blogango', 'comment'),
(10, 'blogango', 'reaction'),
(25, 'coffebarcomments', 'coffebarcomment'),
(24, 'coffebarcomments', 'democomment'),
(26, 'coffecomments', 'coffecomment'),
(34, 'coffegallery', 'coffealbum'),
(32, 'coffegallery', 'photo'),
(31, 'coffegallery', 'youtubevideo'),
(5, 'contenttypes', 'contenttype'),
(22, 'django_comments', 'comment'),
(23, 'django_comments', 'commentflag'),
(30, 'event', 'event'),
(28, 'fluent_comments', 'fluentcomment'),
(14, 'pingback', 'directoryping'),
(12, 'pingback', 'pingback'),
(13, 'pingback', 'pingbackclient'),
(35, 'product', 'product'),
(27, 'profiles', 'userprofile'),
(6, 'sessions', 'session'),
(18, 'simpleblog', 'comment'),
(17, 'simpleblog', 'post'),
(19, 'sites', 'site'),
(15, 'taggit', 'tag'),
(16, 'taggit', 'taggeditem');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
`id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2016-05-12 05:44:56'),
(2, 'auth', '0001_initial', '2016-05-12 05:45:01'),
(3, 'admin', '0001_initial', '2016-05-12 05:45:02'),
(4, 'contenttypes', '0002_remove_content_type_name', '2016-05-12 05:45:03'),
(5, 'auth', '0002_alter_permission_name_max_length', '2016-05-12 05:45:04'),
(6, 'auth', '0003_alter_user_email_max_length', '2016-05-12 05:45:04'),
(7, 'auth', '0004_alter_user_username_opts', '2016-05-12 05:45:04'),
(8, 'auth', '0005_alter_user_last_login_null', '2016-05-12 05:45:05'),
(9, 'auth', '0006_require_contenttypes_0002', '2016-05-12 05:45:05'),
(10, 'sessions', '0001_initial', '2016-05-12 05:45:05'),
(13, 'sites', '0001_initial', '2016-05-19 06:09:43'),
(14, 'andablog', '0001_initial', '2016-05-21 05:03:59'),
(15, 'andablog', '0002_auto_20141204_1659', '2016-05-21 05:04:00'),
(16, 'andablog', '0003_auto_20150826_2353', '2016-05-21 05:04:00'),
(17, 'andablog', '0004_shorten_entry_title', '2016-05-21 05:04:00'),
(18, 'andablog', '0005_auto_20151017_1747', '2016-05-21 05:04:01'),
(19, 'django_comments', '0001_initial', '2016-05-21 05:04:04'),
(20, 'django_comments', '0002_update_user_email_field_length', '2016-05-21 05:04:05'),
(21, 'django_comments', '0003_add_submit_date_index', '2016-05-21 05:04:05'),
(22, 'taggit', '0001_initial', '2016-05-21 05:13:11'),
(23, 'taggit', '0002_auto_20150616_2121', '2016-05-21 05:13:11'),
(25, 'coffecomments', '0001_initial', '2016-05-21 06:02:56'),
(26, 'coffecomments', '0002_auto_20160521_0246', '2016-05-21 06:47:11'),
(27, 'profiles', '0001_initial', '2016-05-21 06:53:32'),
(28, 'fluent_comments', '0001_initial', '2016-05-24 20:05:18'),
(29, 'article', '0001_initial', '2016-05-25 05:22:43'),
(30, 'article', '0002_auto_20160525_1600', '2016-05-25 20:00:28'),
(31, 'article', '0003_auto_20160525_1604', '2016-05-25 20:05:03'),
(32, 'event', '0001_initial', '2016-05-30 00:22:38'),
(33, 'coffegallery', '0001_initial', '2016-05-30 04:07:58'),
(34, 'coffegallery', '0002_auto_20160530_0023', '2016-05-30 04:23:31'),
(35, 'coffegallery', '0003_auto_20160530_0025', '2016-05-30 04:25:26'),
(36, 'event', '0002_auto_20160530_0107', '2016-05-30 05:09:04'),
(37, 'product', '0001_initial', '2016-05-30 05:09:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2diwxhn1yb2frgld6t633nbctposwm9m', 'OTRkNzU1ZjdjMzIyMGFkMTAxMTIzN2FkZjFjMjFlNjdlZGM5MzlkNjp7Il9hdXRoX3VzZXJfaGFzaCI6IjYwOTM5NDllMTFjMDVmZjI4YzZhYzYzMmQyNDhmODhkNDEyMWM2NDAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2016-06-11 07:10:50'),
('c5an61s54riycc2lbii8wctdy6essdhu', 'OTRkNzU1ZjdjMzIyMGFkMTAxMTIzN2FkZjFjMjFlNjdlZGM5MzlkNjp7Il9hdXRoX3VzZXJfaGFzaCI6IjYwOTM5NDllMTFjMDVmZjI4YzZhYzYzMmQyNDhmODhkNDEyMWM2NDAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2016-06-08 04:27:44'),
('c766mcc03zslw06hzy83f4fh1dpgit4j', 'OTRkNzU1ZjdjMzIyMGFkMTAxMTIzN2FkZjFjMjFlNjdlZGM5MzlkNjp7Il9hdXRoX3VzZXJfaGFzaCI6IjYwOTM5NDllMTFjMDVmZjI4YzZhYzYzMmQyNDhmODhkNDEyMWM2NDAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2016-06-12 22:51:37'),
('g3py61f2kn4svojwkflx4nwd2zk8f7xi', 'OTRkNzU1ZjdjMzIyMGFkMTAxMTIzN2FkZjFjMjFlNjdlZGM5MzlkNjp7Il9hdXRoX3VzZXJfaGFzaCI6IjYwOTM5NDllMTFjMDVmZjI4YzZhYzYzMmQyNDhmODhkNDEyMWM2NDAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2016-06-12 21:26:06'),
('o6kkmo4zejbyl3sz2c1qitbxrko9tanw', 'OTRkNzU1ZjdjMzIyMGFkMTAxMTIzN2FkZjFjMjFlNjdlZGM5MzlkNjp7Il9hdXRoX3VzZXJfaGFzaCI6IjYwOTM5NDllMTFjMDVmZjI4YzZhYzYzMmQyNDhmODhkNDEyMWM2NDAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2016-06-08 03:39:39'),
('y6mljw2a69v2iujtw29sxywmnbgc7q0i', 'OTRkNzU1ZjdjMzIyMGFkMTAxMTIzN2FkZjFjMjFlNjdlZGM5MzlkNjp7Il9hdXRoX3VzZXJfaGFzaCI6IjYwOTM5NDllMTFjMDVmZjI4YzZhYzYzMmQyNDhmODhkNDEyMWM2NDAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2016-06-05 01:35:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_site`
--

CREATE TABLE IF NOT EXISTS `django_site` (
`id` int(11) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, '127.0.0.1:8000', 'localhost');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event_event`
--

CREATE TABLE IF NOT EXISTS `event_event` (
`id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `publication_date` datetime NOT NULL,
  `author_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `event_event`
--

INSERT INTO `event_event` (`id`, `image`, `title`, `slug`, `description`, `start_date`, `end_date`, `publication_date`, `author_id`) VALUES
(1, 'event/images/2.jpg', 'Django administration', 'party', '<p>(No equivalent SQL code fragment is included for this lookup because implementation of the relevant query varies among different database engines.) Note this will match any record with a <tt>pub_date</tt> that falls on a Monday (day 2 of the week), regardless of the month or year in which it occurs. Week days are indexed with day 1 being Sunday and day 7 being Saturday.</p>\r\n', '2016-05-24 01:55:07', '2016-06-01 01:51:14', '2016-05-30 01:55:16', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_product`
--

CREATE TABLE IF NOT EXISTS `product_product` (
`id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `description` longtext NOT NULL,
  `publication_date` datetime NOT NULL,
  `image` varchar(100) NOT NULL,
  `enable` tinyint(1) NOT NULL,
  `author_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `product_product`
--

INSERT INTO `product_product` (`id`, `title`, `slug`, `price`, `description`, `publication_date`, `image`, `enable`, `author_id`) VALUES
(1, 'Django administration Party', 'django-administration-party', '56.80', '<p>Each <tt>Field</tt> class constructor takes at least these arguments. Some <tt>Field</tt> classes take additional, field-specific arguments, but the following should <em>always</em> be accepted:</p>\r\n', '2016-05-30 05:40:54', 'product/images/1.jpg', 1, 2),
(2, 'Built-in Field classes', 'built-field-classes', '60.00', '<p>Naturally, the <tt>forms</tt> library comes with a set of <tt>Field</tt> classes that represent common validation needs. This section documents each built-in field.</p>\r\n', '2016-05-30 05:41:26', 'product/images/3.jpg', 1, 2),
(3, 'FileField and FieldFile', 'filefield-and-fieldfile', '74.00', '<p>When you access a FileField on a model, you are given an instance of FieldFile as a proxy for accessing the underlying file. In addition to the functionality inherited from django.core.files.File, this class has several attributes and methods that can be used</p>\r\n', '2016-05-09 05:42:44', 'product/images/img1.jpg', 1, 2),
(4, 'Relationship fields', 'relationship-fields', '45.00', '<p>If you need to create a relationship on a model that has not yet been defined, you can use the name of the model, rather than the model object itself:</p>\r\n', '2016-05-24 05:42:55', 'product/images/img6.jpg', 1, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `article_article`
--
ALTER TABLE `article_article`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `slug` (`slug`), ADD KEY `article_article_author_id_550d8cd9_fk_auth_user_id` (`author_id`);

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `group_id` (`group_id`,`permission_id`), ADD KEY `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `content_type_id` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `user_id` (`user_id`,`group_id`), ADD KEY `auth_user_groups_group_id_30a071c9_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `user_id` (`user_id`,`permission_id`), ADD KEY `auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id` (`permission_id`);

--
-- Indices de la tabla `coffegallery_coffealbum`
--
ALTER TABLE `coffegallery_coffealbum`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `coffegallery_photo`
--
ALTER TABLE `coffegallery_photo`
 ADD PRIMARY KEY (`id`), ADD KEY `coffegallery_photo_95c3b9df` (`album_id`);

--
-- Indices de la tabla `coffegallery_youtubevideo`
--
ALTER TABLE `coffegallery_youtubevideo`
 ADD PRIMARY KEY (`id`), ADD KEY `coffegallery_youtubevideo_95c3b9df` (`album_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
 ADD PRIMARY KEY (`id`), ADD KEY `django_admin__content_type_id_5151027a_fk_django_content_type_id` (`content_type_id`), ADD KEY `django_admin_log_user_id_1c5f563_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_comments`
--
ALTER TABLE `django_comments`
 ADD PRIMARY KEY (`id`), ADD KEY `django_commen_content_type_id_5626a505_fk_django_content_type_id` (`content_type_id`), ADD KEY `django_comments_site_id_6ea83216_fk_django_site_id` (`site_id`), ADD KEY `django_comments_user_id_2c584e2_fk_auth_user_id` (`user_id`), ADD KEY `django_comments_submit_date_5c84a37e_uniq` (`submit_date`);

--
-- Indices de la tabla `django_comment_flags`
--
ALTER TABLE `django_comment_flags`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `django_comment_flags_user_id_641f11c1_uniq` (`user_id`,`comment_id`,`flag`), ADD KEY `django_comment_flags_comment_id_7f2b4c55_fk_django_comments_id` (`comment_id`), ADD KEY `django_comment_flags_327a6c43` (`flag`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `django_content_type_app_label_3ec8c61c_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
 ADD PRIMARY KEY (`session_key`), ADD KEY `django_session_de54fa62` (`expire_date`);

--
-- Indices de la tabla `django_site`
--
ALTER TABLE `django_site`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `event_event`
--
ALTER TABLE `event_event`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `slug` (`slug`), ADD KEY `event_event_author_id_2100f92d_fk_auth_user_id` (`author_id`);

--
-- Indices de la tabla `product_product`
--
ALTER TABLE `product_product`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `slug` (`slug`), ADD KEY `product_product_author_id_6f14df39_fk_auth_user_id` (`author_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `article_article`
--
ALTER TABLE `article_article`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=110;
--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `coffegallery_coffealbum`
--
ALTER TABLE `coffegallery_coffealbum`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `coffegallery_photo`
--
ALTER TABLE `coffegallery_photo`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `coffegallery_youtubevideo`
--
ALTER TABLE `coffegallery_youtubevideo`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=96;
--
-- AUTO_INCREMENT de la tabla `django_comments`
--
ALTER TABLE `django_comments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `django_comment_flags`
--
ALTER TABLE `django_comment_flags`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT de la tabla `django_site`
--
ALTER TABLE `django_site`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `event_event`
--
ALTER TABLE `event_event`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `product_product`
--
ALTER TABLE `product_product`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `article_article`
--
ALTER TABLE `article_article`
ADD CONSTRAINT `article_article_author_id_550d8cd9_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
ADD CONSTRAINT `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
ADD CONSTRAINT `auth_group_permissions_group_id_58c48ba9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
ADD CONSTRAINT `auth_permissi_content_type_id_51277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
ADD CONSTRAINT `auth_user_groups_group_id_30a071c9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
ADD CONSTRAINT `auth_user_groups_user_id_24702650_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
ADD CONSTRAINT `auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
ADD CONSTRAINT `auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `coffegallery_photo`
--
ALTER TABLE `coffegallery_photo`
ADD CONSTRAINT `coffegallery_pho_album_id_23058b22_fk_coffegallery_coffealbum_id` FOREIGN KEY (`album_id`) REFERENCES `coffegallery_coffealbum` (`id`);

--
-- Filtros para la tabla `coffegallery_youtubevideo`
--
ALTER TABLE `coffegallery_youtubevideo`
ADD CONSTRAINT `coffegallery_you_album_id_58bea625_fk_coffegallery_coffealbum_id` FOREIGN KEY (`album_id`) REFERENCES `coffegallery_coffealbum` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
ADD CONSTRAINT `django_admin__content_type_id_5151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
ADD CONSTRAINT `django_admin_log_user_id_1c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_comments`
--
ALTER TABLE `django_comments`
ADD CONSTRAINT `django_commen_content_type_id_5626a505_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
ADD CONSTRAINT `django_comments_site_id_6ea83216_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`),
ADD CONSTRAINT `django_comments_user_id_2c584e2_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_comment_flags`
--
ALTER TABLE `django_comment_flags`
ADD CONSTRAINT `django_comment_flags_comment_id_7f2b4c55_fk_django_comments_id` FOREIGN KEY (`comment_id`) REFERENCES `django_comments` (`id`),
ADD CONSTRAINT `django_comment_flags_user_id_3512f4c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `event_event`
--
ALTER TABLE `event_event`
ADD CONSTRAINT `event_event_author_id_2100f92d_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `product_product`
--
ALTER TABLE `product_product`
ADD CONSTRAINT `product_product_author_id_6f14df39_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
