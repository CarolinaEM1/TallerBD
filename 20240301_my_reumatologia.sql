-- MariaDB dump 10.19  Distrib 10.6.16-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: reumatologia
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
-- Table structure for table `cardiovascular`
--

DROP TABLE IF EXISTS `cardiovascular`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cardiovascular` (
  `id_revision` int(11) NOT NULL,
  `dolor_pecho` tinyint(1) NOT NULL,
  `esforzarse` tinyint(1) NOT NULL,
  `desmayos` tinyint(1) NOT NULL,
  `inflamacion` tinyint(1) NOT NULL,
  KEY `id_revision` (`id_revision`),
  CONSTRAINT `cardiovascular_ibfk_1` FOREIGN KEY (`id_revision`) REFERENCES `revision_sistemas` (`id_revision`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cardiovascular`
--

LOCK TABLES `cardiovascular` WRITE;
/*!40000 ALTER TABLE `cardiovascular` DISABLE KEYS */;
/*!40000 ALTER TABLE `cardiovascular` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `constitucional`
--

DROP TABLE IF EXISTS `constitucional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `constitucional` (
  `id_revision` int(11) NOT NULL,
  `fiebre` tinyint(1) NOT NULL,
  `perdida_peso` tinyint(1) NOT NULL,
  `cansancio` tinyint(1) NOT NULL,
  `debilidad` tinyint(1) NOT NULL,
  `intolerancia` tinyint(1) NOT NULL,
  KEY `id_revision` (`id_revision`),
  CONSTRAINT `constitucional_ibfk_1` FOREIGN KEY (`id_revision`) REFERENCES `revision_sistemas` (`id_revision`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `constitucional`
--

LOCK TABLES `constitucional` WRITE;
/*!40000 ALTER TABLE `constitucional` DISABLE KEYS */;
/*!40000 ALTER TABLE `constitucional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `embarazos`
--

DROP TABLE IF EXISTS `embarazos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `embarazos` (
  `id_revision` int(11) NOT NULL,
  `numero_embarazos` int(11) NOT NULL,
  `numero_hijos` int(11) NOT NULL,
  `numero_perdidas` int(11) NOT NULL,
  `numero_abortos` int(11) NOT NULL,
  `metodo_anticonceptivo` varchar(100) NOT NULL,
  KEY `id_revision` (`id_revision`),
  CONSTRAINT `embarazos_ibfk_1` FOREIGN KEY (`id_revision`) REFERENCES `revision_sistemas` (`id_revision`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `embarazos`
--

LOCK TABLES `embarazos` WRITE;
/*!40000 ALTER TABLE `embarazos` DISABLE KEYS */;
/*!40000 ALTER TABLE `embarazos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endocrino`
--

DROP TABLE IF EXISTS `endocrino`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `endocrino` (
  `id_revision` int(11) NOT NULL,
  `tiroides` tinyint(1) NOT NULL,
  `talla` tinyint(1) NOT NULL,
  KEY `id_revision` (`id_revision`),
  CONSTRAINT `endocrino_ibfk_1` FOREIGN KEY (`id_revision`) REFERENCES `revision_sistemas` (`id_revision`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endocrino`
--

LOCK TABLES `endocrino` WRITE;
/*!40000 ALTER TABLE `endocrino` DISABLE KEYS */;
/*!40000 ALTER TABLE `endocrino` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gastrointestinal`
--

DROP TABLE IF EXISTS `gastrointestinal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gastrointestinal` (
  `id_revision` int(11) NOT NULL,
  `acidez` tinyint(1) NOT NULL,
  `nauseas` tinyint(1) NOT NULL,
  `enfermedad` tinyint(1) NOT NULL,
  `sindrome` tinyint(1) NOT NULL,
  `sangre` tinyint(1) NOT NULL,
  KEY `id_revision` (`id_revision`),
  CONSTRAINT `gastrointestinal_ibfk_1` FOREIGN KEY (`id_revision`) REFERENCES `revision_sistemas` (`id_revision`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gastrointestinal`
--

LOCK TABLES `gastrointestinal` WRITE;
/*!40000 ALTER TABLE `gastrointestinal` DISABLE KEYS */;
/*!40000 ALTER TABLE `gastrointestinal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hematologico`
--

DROP TABLE IF EXISTS `hematologico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hematologico` (
  `id_revision` int(11) NOT NULL,
  `inflamacion` tinyint(1) NOT NULL,
  `tratamiento` tinyint(1) NOT NULL,
  `tratamiento_coagulos` varchar(100) NOT NULL,
  `sangrado` tinyint(1) NOT NULL,
  `sangrado_nasal` tinyint(1) NOT NULL,
  `moretones` tinyint(1) NOT NULL,
  KEY `id_revision` (`id_revision`),
  CONSTRAINT `hematologico_ibfk_1` FOREIGN KEY (`id_revision`) REFERENCES `revision_sistemas` (`id_revision`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hematologico`
--

LOCK TABLES `hematologico` WRITE;
/*!40000 ALTER TABLE `hematologico` DISABLE KEYS */;
/*!40000 ALTER TABLE `hematologico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historia_familiar`
--

DROP TABLE IF EXISTS `historia_familiar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historia_familiar` (
  `id_historia_familiar` int(11) NOT NULL AUTO_INCREMENT,
  `id_paciente` int(11) NOT NULL,
  `enfermedades` text NOT NULL,
  PRIMARY KEY (`id_historia_familiar`),
  KEY `id_paciente` (`id_paciente`),
  CONSTRAINT `historia_familiar_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id_paciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historia_familiar`
--

LOCK TABLES `historia_familiar` WRITE;
/*!40000 ALTER TABLE `historia_familiar` DISABLE KEYS */;
/*!40000 ALTER TABLE `historia_familiar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historia_social`
--

DROP TABLE IF EXISTS `historia_social`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historia_social` (
  `id_historia_social` int(11) NOT NULL AUTO_INCREMENT,
  `id_paciente` int(11) NOT NULL,
  `consumo_tabaco` tinyint(1) NOT NULL,
  `consumo_alcohol` tinyint(1) NOT NULL,
  `consumo_drogas` tinyint(1) NOT NULL,
  `empleo` varchar(100) NOT NULL,
  `discapacidad` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_historia_social`),
  KEY `id_paciente` (`id_paciente`),
  CONSTRAINT `historia_social_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id_paciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historia_social`
--

LOCK TABLES `historia_social` WRITE;
/*!40000 ALTER TABLE `historia_social` DISABLE KEYS */;
/*!40000 ALTER TABLE `historia_social` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historial_medico`
--

DROP TABLE IF EXISTS `historial_medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historial_medico` (
  `id_historial` int(11) NOT NULL AUTO_INCREMENT,
  `id_visita` int(11) NOT NULL,
  `problemas_actuales` text NOT NULL,
  `hospitalizaciones` text NOT NULL,
  `fracturas` text NOT NULL,
  `lesiones` text NOT NULL,
  `hepatitis_b` tinyint(1) NOT NULL,
  `hepatitis_c` tinyint(1) DEFAULT NULL,
  `vih` tinyint(1) NOT NULL,
  `cirugias_significativas` text NOT NULL,
  PRIMARY KEY (`id_historial`),
  KEY `id_visita` (`id_visita`),
  CONSTRAINT `historial_medico_ibfk_1` FOREIGN KEY (`id_visita`) REFERENCES `visita` (`id_visita`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial_medico`
--

LOCK TABLES `historial_medico` WRITE;
/*!40000 ALTER TABLE `historial_medico` DISABLE KEYS */;
/*!40000 ALTER TABLE `historial_medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicamentos`
--

DROP TABLE IF EXISTS `medicamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicamentos` (
  `id_medicamento` int(11) NOT NULL AUTO_INCREMENT,
  `id_paciente` int(11) NOT NULL,
  `nombre_medicamento` varchar(200) NOT NULL,
  `alergias_medicamentos` text NOT NULL,
  PRIMARY KEY (`id_medicamento`),
  KEY `id_paciente` (`id_paciente`),
  CONSTRAINT `medicamentos_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id_paciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicamentos`
--

LOCK TABLES `medicamentos` WRITE;
/*!40000 ALTER TABLE `medicamentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `medicamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `musculoesqueletal`
--

DROP TABLE IF EXISTS `musculoesqueletal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `musculoesqueletal` (
  `id_revision` int(11) NOT NULL,
  `dolor_cuerpo` tinyint(1) NOT NULL,
  `dolor_articulaciones` tinyint(1) NOT NULL,
  `articulaciones_dolor` varchar(100) DEFAULT NULL,
  `dolores_musculares` tinyint(1) NOT NULL,
  `musculares_dolores` varchar(100) DEFAULT NULL,
  `rigidez` tinyint(1) NOT NULL,
  `rigidez_corporal` varchar(100) DEFAULT NULL,
  `inflamacion` tinyint(1) NOT NULL,
  `inflamacion_articulaciones` varchar(100) DEFAULT NULL,
  `dedos` tinyint(1) NOT NULL,
  KEY `id_revision` (`id_revision`),
  CONSTRAINT `musculoesqueletal_ibfk_1` FOREIGN KEY (`id_revision`) REFERENCES `revision_sistemas` (`id_revision`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musculoesqueletal`
--

LOCK TABLES `musculoesqueletal` WRITE;
/*!40000 ALTER TABLE `musculoesqueletal` DISABLE KEYS */;
/*!40000 ALTER TABLE `musculoesqueletal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `neurologico`
--

DROP TABLE IF EXISTS `neurologico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `neurologico` (
  `id_revision` int(11) NOT NULL,
  `dolor_cabeza` tinyint(1) NOT NULL,
  `convulsiones` tinyint(1) NOT NULL,
  `entumecimiento` tinyint(1) NOT NULL,
  `entumecimiento_cuerpo` varchar(100) DEFAULT NULL,
  `ardor` tinyint(1) NOT NULL,
  `ardor_cuerpo` varchar(100) DEFAULT NULL,
  `hormigueo` tinyint(1) NOT NULL,
  `sensacion_hormigueo` varchar(100) DEFAULT NULL,
  `debilidad` tinyint(1) NOT NULL,
  `debilidad_parte` varchar(100) DEFAULT NULL,
  KEY `id_revision` (`id_revision`),
  CONSTRAINT `neurologico_ibfk_1` FOREIGN KEY (`id_revision`) REFERENCES `revision_sistemas` (`id_revision`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `neurologico`
--

LOCK TABLES `neurologico` WRITE;
/*!40000 ALTER TABLE `neurologico` DISABLE KEYS */;
/*!40000 ALTER TABLE `neurologico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oidos_nariz_garganta`
--

DROP TABLE IF EXISTS `oidos_nariz_garganta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oidos_nariz_garganta` (
  `id_revision` int(11) NOT NULL,
  `resequedad` tinyint(1) NOT NULL,
  `ulceras` tinyint(1) NOT NULL,
  `ronquera` tinyint(1) NOT NULL,
  `perdida_audicion` tinyint(1) NOT NULL,
  KEY `id_revision` (`id_revision`),
  CONSTRAINT `oidos_nariz_garganta_ibfk_1` FOREIGN KEY (`id_revision`) REFERENCES `revision_sistemas` (`id_revision`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oidos_nariz_garganta`
--

LOCK TABLES `oidos_nariz_garganta` WRITE;
/*!40000 ALTER TABLE `oidos_nariz_garganta` DISABLE KEYS */;
/*!40000 ALTER TABLE `oidos_nariz_garganta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ojos`
--

DROP TABLE IF EXISTS `ojos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ojos` (
  `id_revision` int(11) NOT NULL,
  `enrojecimiento` tinyint(1) NOT NULL,
  `dolor_ojos` tinyint(1) NOT NULL,
  `resequedad` tinyint(1) NOT NULL,
  `cambios_vision` tinyint(1) NOT NULL,
  KEY `id_revision` (`id_revision`),
  CONSTRAINT `ojos_ibfk_1` FOREIGN KEY (`id_revision`) REFERENCES `revision_sistemas` (`id_revision`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ojos`
--

LOCK TABLES `ojos` WRITE;
/*!40000 ALTER TABLE `ojos` DISABLE KEYS */;
/*!40000 ALTER TABLE `ojos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paciente` (
  `id_paciente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `primer_apellido` varchar(100) NOT NULL,
  `segundo_apellido` varchar(100) DEFAULT NULL,
  `fecha_nacimiento` date NOT NULL,
  `contacto` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_paciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piel`
--

DROP TABLE IF EXISTS `piel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piel` (
  `id_revision` int(11) NOT NULL,
  `cambios_pigmentacion` tinyint(1) NOT NULL,
  `soriasis` tinyint(1) NOT NULL,
  `erupciones` tinyint(1) NOT NULL,
  `erupciones_cutaneas` varchar(100) DEFAULT NULL,
  `picazon` tinyint(1) NOT NULL,
  `exposicion_sol` tinyint(1) NOT NULL,
  `cambios_uñas` tinyint(1) NOT NULL,
  `dedos` tinyint(1) NOT NULL,
  `perdida_cabello` tinyint(1) NOT NULL,
  KEY `id_revision` (`id_revision`),
  CONSTRAINT `piel_ibfk_1` FOREIGN KEY (`id_revision`) REFERENCES `revision_sistemas` (`id_revision`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piel`
--

LOCK TABLES `piel` WRITE;
/*!40000 ALTER TABLE `piel` DISABLE KEYS */;
/*!40000 ALTER TABLE `piel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psiquiatrico`
--

DROP TABLE IF EXISTS `psiquiatrico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psiquiatrico` (
  `id_revision` int(11) NOT NULL,
  `depresion` tinyint(1) NOT NULL,
  `ansiedad` tinyint(1) NOT NULL,
  `confusion` tinyint(1) NOT NULL,
  `trastornos` tinyint(1) NOT NULL,
  `trastorno_sueño` varchar(100) DEFAULT NULL,
  `problemas_dormir` tinyint(1) DEFAULT NULL,
  `problemas_mantenerse_dormido` tinyint(1) DEFAULT NULL,
  KEY `id_revision` (`id_revision`),
  CONSTRAINT `psiquiatrico_ibfk_1` FOREIGN KEY (`id_revision`) REFERENCES `revision_sistemas` (`id_revision`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psiquiatrico`
--

LOCK TABLES `psiquiatrico` WRITE;
/*!40000 ALTER TABLE `psiquiatrico` DISABLE KEYS */;
/*!40000 ALTER TABLE `psiquiatrico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `respiratorio`
--

DROP TABLE IF EXISTS `respiratorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `respiratorio` (
  `id_revision` int(11) NOT NULL,
  `dolor_pecho` tinyint(1) NOT NULL,
  `respiracion` tinyint(1) NOT NULL,
  `tos` tinyint(1) NOT NULL,
  `sibilancia` tinyint(1) NOT NULL,
  `ronquidos` tinyint(1) NOT NULL,
  `pulmonia` tinyint(1) NOT NULL,
  `asma` tinyint(1) NOT NULL,
  KEY `id_revision` (`id_revision`),
  CONSTRAINT `respiratorio_ibfk_1` FOREIGN KEY (`id_revision`) REFERENCES `revision_sistemas` (`id_revision`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respiratorio`
--

LOCK TABLES `respiratorio` WRITE;
/*!40000 ALTER TABLE `respiratorio` DISABLE KEYS */;
/*!40000 ALTER TABLE `respiratorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revision_sistemas`
--

DROP TABLE IF EXISTS `revision_sistemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `revision_sistemas` (
  `id_revision` int(11) NOT NULL AUTO_INCREMENT,
  `id_visita` int(11) NOT NULL,
  PRIMARY KEY (`id_revision`),
  KEY `id_visita` (`id_visita`),
  CONSTRAINT `revision_sistemas_ibfk_1` FOREIGN KEY (`id_visita`) REFERENCES `visita` (`id_visita`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revision_sistemas`
--

LOCK TABLES `revision_sistemas` WRITE;
/*!40000 ALTER TABLE `revision_sistemas` DISABLE KEYS */;
/*!40000 ALTER TABLE `revision_sistemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `urinario`
--

DROP TABLE IF EXISTS `urinario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `urinario` (
  `id_revision` int(11) NOT NULL,
  `dolor` tinyint(1) NOT NULL,
  `sangre` tinyint(1) NOT NULL,
  `calculos` tinyint(1) NOT NULL,
  `infecciones` tinyint(1) NOT NULL,
  `ulceras` tinyint(1) NOT NULL,
  KEY `id_revision` (`id_revision`),
  CONSTRAINT `urinario_ibfk_1` FOREIGN KEY (`id_revision`) REFERENCES `revision_sistemas` (`id_revision`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `urinario`
--

LOCK TABLES `urinario` WRITE;
/*!40000 ALTER TABLE `urinario` DISABLE KEYS */;
/*!40000 ALTER TABLE `urinario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visita`
--

DROP TABLE IF EXISTS `visita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visita` (
  `id_visita` int(11) NOT NULL AUTO_INCREMENT,
  `id_paciente` int(11) NOT NULL,
  `fecha_visita` date DEFAULT NULL,
  `motivo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_visita`),
  KEY `id_paciente` (`id_paciente`),
  CONSTRAINT `visita_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id_paciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visita`
--

LOCK TABLES `visita` WRITE;
/*!40000 ALTER TABLE `visita` DISABLE KEYS */;
/*!40000 ALTER TABLE `visita` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-02  3:58:50
