-- MariaDB dump 10.19  Distrib 10.6.16-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: soluciones
-- ------------------------------------------------------
-- Server version	10.6.16-MariaDB-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `area_trabajo`
--

DROP TABLE IF EXISTS `area_trabajo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area_trabajo` (
  `nombre_area` varchar(255) NOT NULL,
  `id_area` int(11) NOT NULL AUTO_INCREMENT,
  `id_datos` int(11) NOT NULL,
  PRIMARY KEY (`id_area`),
  KEY `id_datos` (`id_datos`),
  CONSTRAINT `area_trabajo_ibfk_1` FOREIGN KEY (`id_datos`) REFERENCES `datos_ofertas` (`id_datos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area_trabajo`
--

LOCK TABLES `area_trabajo` WRITE;
/*!40000 ALTER TABLE `area_trabajo` DISABLE KEYS */;
/*!40000 ALTER TABLE `area_trabajo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `años_experiencia`
--

DROP TABLE IF EXISTS `años_experiencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `años_experiencia` (
  `años` int(11) NOT NULL,
  `id_requerimiento` int(11) NOT NULL,
  KEY `id_requerimiento` (`id_requerimiento`),
  CONSTRAINT `años_experiencia_ibfk_1` FOREIGN KEY (`id_requerimiento`) REFERENCES `requerimiento_oferta` (`id_requerimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `años_experiencia`
--

LOCK TABLES `años_experiencia` WRITE;
/*!40000 ALTER TABLE `años_experiencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `años_experiencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidato`
--

DROP TABLE IF EXISTS `candidato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `candidato` (
  `id_candidato` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellido_materno` varchar(100) NOT NULL,
  `apellido_paterno` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contraseña` char(50) NOT NULL,
  `puesto_trabajo` varchar(100) NOT NULL,
  `id_estado` int(11) NOT NULL,
  PRIMARY KEY (`id_candidato`),
  KEY `id_estado` (`id_estado`),
  CONSTRAINT `candidato_ibfk_1` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id_estado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidato`
--

LOCK TABLES `candidato` WRITE;
/*!40000 ALTER TABLE `candidato` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ciudad` (
  `id_ciudad` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `id_estado` int(11) NOT NULL,
  `id_datos` int(11) NOT NULL,
  PRIMARY KEY (`id_ciudad`),
  KEY `id_estado` (`id_estado`),
  KEY `id_datos` (`id_datos`),
  CONSTRAINT `ciudad_ibfk_1` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id_estado`),
  CONSTRAINT `ciudad_ibfk_2` FOREIGN KEY (`id_datos`) REFERENCES `datos_ofertas` (`id_datos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad`
--

LOCK TABLES `ciudad` WRITE;
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contrato`
--

DROP TABLE IF EXISTS `contrato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contrato` (
  `id_contrato` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_contrato` varchar(200) NOT NULL,
  `id_datos` int(11) NOT NULL,
  PRIMARY KEY (`id_contrato`),
  KEY `id_datos` (`id_datos`),
  CONSTRAINT `contrato_ibfk_1` FOREIGN KEY (`id_datos`) REFERENCES `datos_ofertas` (`id_datos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contrato`
--

LOCK TABLES `contrato` WRITE;
/*!40000 ALTER TABLE `contrato` DISABLE KEYS */;
/*!40000 ALTER TABLE `contrato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datos_ofertas`
--

DROP TABLE IF EXISTS `datos_ofertas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datos_ofertas` (
  `id_datos` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `salario_mensual` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `vacantes` int(11) NOT NULL,
  PRIMARY KEY (`id_datos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datos_ofertas`
--

LOCK TABLES `datos_ofertas` WRITE;
/*!40000 ALTER TABLE `datos_ofertas` DISABLE KEYS */;
/*!40000 ALTER TABLE `datos_ofertas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datos_personales`
--

DROP TABLE IF EXISTS `datos_personales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datos_personales` (
  `id_candidato` int(11) NOT NULL,
  `nacimiento` date NOT NULL,
  `estado_civil` varchar(100) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `id_estado` int(11) NOT NULL,
  `id_ciudad` int(11) NOT NULL,
  `id_pais` int(11) NOT NULL,
  `genero` varchar(50) NOT NULL,
  KEY `id_candidato` (`id_candidato`),
  KEY `id_estado` (`id_estado`),
  KEY `id_ciudad` (`id_ciudad`),
  KEY `id_pais` (`id_pais`),
  CONSTRAINT `datos_personales_ibfk_1` FOREIGN KEY (`id_candidato`) REFERENCES `candidato` (`id_candidato`),
  CONSTRAINT `datos_personales_ibfk_2` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id_estado`),
  CONSTRAINT `datos_personales_ibfk_3` FOREIGN KEY (`id_ciudad`) REFERENCES `ciudad` (`id_ciudad`),
  CONSTRAINT `datos_personales_ibfk_4` FOREIGN KEY (`id_pais`) REFERENCES `pais` (`id_pais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datos_personales`
--

LOCK TABLES `datos_personales` WRITE;
/*!40000 ALTER TABLE `datos_personales` DISABLE KEYS */;
/*!40000 ALTER TABLE `datos_personales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `destreza`
--

DROP TABLE IF EXISTS `destreza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `destreza` (
  `conocimientos` varchar(200) NOT NULL,
  `id_requerimiento` int(11) NOT NULL,
  KEY `id_requerimiento` (`id_requerimiento`),
  CONSTRAINT `destreza_ibfk_1` FOREIGN KEY (`id_requerimiento`) REFERENCES `requerimiento_oferta` (`id_requerimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destreza`
--

LOCK TABLES `destreza` WRITE;
/*!40000 ALTER TABLE `destreza` DISABLE KEYS */;
/*!40000 ALTER TABLE `destreza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado` (
  `id_estado` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `id_datos` int(11) NOT NULL,
  PRIMARY KEY (`id_estado`),
  KEY `id_datos` (`id_datos`),
  CONSTRAINT `estado_ibfk_1` FOREIGN KEY (`id_datos`) REFERENCES `datos_ofertas` (`id_datos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudios`
--

DROP TABLE IF EXISTS `estudios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estudios` (
  `id_candidato` int(11) NOT NULL,
  `nivel_estudios` varchar(200) NOT NULL,
  `centro_educativo` varchar(200) NOT NULL,
  `estado` varchar(100) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  KEY `id_candidato` (`id_candidato`),
  CONSTRAINT `estudios_ibfk_1` FOREIGN KEY (`id_candidato`) REFERENCES `candidato` (`id_candidato`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudios`
--

LOCK TABLES `estudios` WRITE;
/*!40000 ALTER TABLE `estudios` DISABLE KEYS */;
/*!40000 ALTER TABLE `estudios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `idiomas`
--

DROP TABLE IF EXISTS `idiomas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `idiomas` (
  `idioma` varchar(100) NOT NULL,
  `nivel` varchar(100) NOT NULL,
  `id_requerimiento` int(11) NOT NULL,
  KEY `id_requerimiento` (`id_requerimiento`),
  CONSTRAINT `idiomas_ibfk_1` FOREIGN KEY (`id_requerimiento`) REFERENCES `requerimiento_oferta` (`id_requerimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `idiomas`
--

LOCK TABLES `idiomas` WRITE;
/*!40000 ALTER TABLE `idiomas` DISABLE KEYS */;
/*!40000 ALTER TABLE `idiomas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jornada_laboral`
--

DROP TABLE IF EXISTS `jornada_laboral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jornada_laboral` (
  `id_jornada` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_jornada` varchar(100) NOT NULL,
  `id_datos` int(11) NOT NULL,
  PRIMARY KEY (`id_jornada`),
  KEY `id_datos` (`id_datos`),
  CONSTRAINT `jornada_laboral_ibfk_1` FOREIGN KEY (`id_datos`) REFERENCES `datos_ofertas` (`id_datos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jornada_laboral`
--

LOCK TABLES `jornada_laboral` WRITE;
/*!40000 ALTER TABLE `jornada_laboral` DISABLE KEYS */;
/*!40000 ALTER TABLE `jornada_laboral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oferta_publicada`
--

DROP TABLE IF EXISTS `oferta_publicada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oferta_publicada` (
  `id_oferta` int(11) NOT NULL,
  `oferta_destacada` tinyint(1) NOT NULL,
  `oferta_urgente` tinyint(1) NOT NULL,
  `oferta_flash` tinyint(1) NOT NULL,
  `ocultar_nombre` tinyint(1) NOT NULL,
  `mostrar_email` tinyint(1) NOT NULL,
  `telefono` tinyint(1) NOT NULL,
  `direccion` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_oferta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oferta_publicada`
--

LOCK TABLES `oferta_publicada` WRITE;
/*!40000 ALTER TABLE `oferta_publicada` DISABLE KEYS */;
/*!40000 ALTER TABLE `oferta_publicada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pais` (
  `id_pais` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `id_datos` int(11) NOT NULL,
  PRIMARY KEY (`id_pais`),
  KEY `id_datos` (`id_datos`),
  CONSTRAINT `pais_ibfk_1` FOREIGN KEY (`id_datos`) REFERENCES `datos_ofertas` (`id_datos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil_profesional`
--

DROP TABLE IF EXISTS `perfil_profesional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfil_profesional` (
  `id_candidato` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `salario_minimo` int(11) NOT NULL,
  `viajar` tinyint(1) NOT NULL,
  `residencia` tinyint(1) NOT NULL,
  KEY `id_candidato` (`id_candidato`),
  CONSTRAINT `perfil_profesional_ibfk_1` FOREIGN KEY (`id_candidato`) REFERENCES `candidato` (`id_candidato`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil_profesional`
--

LOCK TABLES `perfil_profesional` WRITE;
/*!40000 ALTER TABLE `perfil_profesional` DISABLE KEYS */;
/*!40000 ALTER TABLE `perfil_profesional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `postulacion`
--

DROP TABLE IF EXISTS `postulacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `postulacion` (
  `id_candidato` int(11) NOT NULL,
  `id_datos` int(11) NOT NULL,
  `id_postulacion` int(11) NOT NULL AUTO_INCREMENT,
  `id_requerimiento` int(11) NOT NULL,
  PRIMARY KEY (`id_postulacion`),
  KEY `id_candidato` (`id_candidato`),
  KEY `id_datos` (`id_datos`),
  KEY `id_requerimiento` (`id_requerimiento`),
  CONSTRAINT `postulacion_ibfk_1` FOREIGN KEY (`id_candidato`) REFERENCES `candidato` (`id_candidato`),
  CONSTRAINT `postulacion_ibfk_2` FOREIGN KEY (`id_datos`) REFERENCES `datos_ofertas` (`id_datos`),
  CONSTRAINT `postulacion_ibfk_3` FOREIGN KEY (`id_requerimiento`) REFERENCES `requerimiento_oferta` (`id_requerimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postulacion`
--

LOCK TABLES `postulacion` WRITE;
/*!40000 ALTER TABLE `postulacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `postulacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preguntas`
--

DROP TABLE IF EXISTS `preguntas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preguntas` (
  `descripcion` text DEFAULT NULL,
  `id_oferta` int(11) NOT NULL,
  `id_requerimiento` int(11) NOT NULL,
  KEY `id_oferta` (`id_oferta`),
  KEY `id_requerimiento` (`id_requerimiento`),
  CONSTRAINT `preguntas_ibfk_1` FOREIGN KEY (`id_oferta`) REFERENCES `oferta_publicada` (`id_oferta`),
  CONSTRAINT `preguntas_ibfk_2` FOREIGN KEY (`id_requerimiento`) REFERENCES `requerimiento_oferta` (`id_requerimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preguntas`
--

LOCK TABLES `preguntas` WRITE;
/*!40000 ALTER TABLE `preguntas` DISABLE KEYS */;
/*!40000 ALTER TABLE `preguntas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reclutador`
--

DROP TABLE IF EXISTS `reclutador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reclutador` (
  `nombre` varchar(100) NOT NULL,
  `id_reclutador` int(11) NOT NULL AUTO_INCREMENT,
  `id_postulacion` int(11) NOT NULL,
  PRIMARY KEY (`id_reclutador`),
  KEY `id_postulacion` (`id_postulacion`),
  CONSTRAINT `reclutador_ibfk_1` FOREIGN KEY (`id_postulacion`) REFERENCES `postulacion` (`id_postulacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reclutador`
--

LOCK TABLES `reclutador` WRITE;
/*!40000 ALTER TABLE `reclutador` DISABLE KEYS */;
/*!40000 ALTER TABLE `reclutador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requerimiento_oferta`
--

DROP TABLE IF EXISTS `requerimiento_oferta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requerimiento_oferta` (
  `id_requerimiento` int(11) NOT NULL AUTO_INCREMENT,
  `id_datos` int(11) NOT NULL,
  `edad_minima` int(11) NOT NULL,
  `edad_maxima` int(11) NOT NULL,
  `estudios_minimos` varchar(255) NOT NULL,
  `licencia` tinyint(1) NOT NULL,
  `viajar` tinyint(1) NOT NULL,
  `residencia` tinyint(1) NOT NULL,
  `discapacidad` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_requerimiento`),
  KEY `id_datos` (`id_datos`),
  CONSTRAINT `requerimiento_oferta_ibfk_1` FOREIGN KEY (`id_datos`) REFERENCES `datos_ofertas` (`id_datos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requerimiento_oferta`
--

LOCK TABLES `requerimiento_oferta` WRITE;
/*!40000 ALTER TABLE `requerimiento_oferta` DISABLE KEYS */;
/*!40000 ALTER TABLE `requerimiento_oferta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-14  5:34:17
