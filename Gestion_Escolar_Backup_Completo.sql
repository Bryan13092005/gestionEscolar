CREATE DATABASE  IF NOT EXISTS `gestionescolar` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gestionescolar`;
-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: gestionescolar
-- ------------------------------------------------------
-- Server version	8.0.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auditoriaactualizarcalificacion`
--

DROP TABLE IF EXISTS `auditoriaactualizarcalificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditoriaactualizarcalificacion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idMatriculaAntigua` int DEFAULT NULL,
  `idMatriculaNueva` int DEFAULT NULL,
  `notaAntigua` decimal(4,2) DEFAULT NULL,
  `notaNueva` decimal(4,2) DEFAULT NULL,
  `descripcionAntigua` varchar(100) DEFAULT NULL,
  `descripcionNueva` varchar(100) DEFAULT NULL,
  `fechaInsersion` datetime DEFAULT CURRENT_TIMESTAMP,
  `usuario` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoriaactualizarcalificacion`
--

LOCK TABLES `auditoriaactualizarcalificacion` WRITE;
/*!40000 ALTER TABLE `auditoriaactualizarcalificacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoriaactualizarcalificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoriaactualizarcurso`
--

DROP TABLE IF EXISTS `auditoriaactualizarcurso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditoriaactualizarcurso` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombreAntiguo` varchar(100) DEFAULT NULL,
  `nombreNuevo` varchar(100) DEFAULT NULL,
  `fechaInsersion` datetime DEFAULT CURRENT_TIMESTAMP,
  `usuario` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoriaactualizarcurso`
--

LOCK TABLES `auditoriaactualizarcurso` WRITE;
/*!40000 ALTER TABLE `auditoriaactualizarcurso` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoriaactualizarcurso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoriaactualizardocente`
--

DROP TABLE IF EXISTS `auditoriaactualizardocente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditoriaactualizardocente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombreAntiguo` varchar(100) DEFAULT NULL,
  `nombreNuevo` varchar(100) DEFAULT NULL,
  `fechaInsersion` datetime DEFAULT CURRENT_TIMESTAMP,
  `usuario` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoriaactualizardocente`
--

LOCK TABLES `auditoriaactualizardocente` WRITE;
/*!40000 ALTER TABLE `auditoriaactualizardocente` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoriaactualizardocente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoriaactualizarestudainte`
--

DROP TABLE IF EXISTS `auditoriaactualizarestudainte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditoriaactualizarestudainte` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombreAntiguo` varchar(100) DEFAULT NULL,
  `nombreNuevo` varchar(100) DEFAULT NULL,
  `fechaInsersion` datetime DEFAULT CURRENT_TIMESTAMP,
  `usuario` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoriaactualizarestudainte`
--

LOCK TABLES `auditoriaactualizarestudainte` WRITE;
/*!40000 ALTER TABLE `auditoriaactualizarestudainte` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoriaactualizarestudainte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoriaactualizarmateria`
--

DROP TABLE IF EXISTS `auditoriaactualizarmateria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditoriaactualizarmateria` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombreAntiguo` varchar(100) DEFAULT NULL,
  `nombreNuevo` varchar(100) DEFAULT NULL,
  `fechaInsersion` datetime DEFAULT CURRENT_TIMESTAMP,
  `usuario` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoriaactualizarmateria`
--

LOCK TABLES `auditoriaactualizarmateria` WRITE;
/*!40000 ALTER TABLE `auditoriaactualizarmateria` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoriaactualizarmateria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoriaactualizarmatricula`
--

DROP TABLE IF EXISTS `auditoriaactualizarmatricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditoriaactualizarmatricula` (
  `id` int NOT NULL AUTO_INCREMENT,
  `estudianteIDA` int DEFAULT NULL,
  `estudianteIDN` int DEFAULT NULL,
  `cursoMateriaA` int DEFAULT NULL,
  `cursoMateriaN` int DEFAULT NULL,
  `fechaInsersion` datetime DEFAULT CURRENT_TIMESTAMP,
  `usuario` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoriaactualizarmatricula`
--

LOCK TABLES `auditoriaactualizarmatricula` WRITE;
/*!40000 ALTER TABLE `auditoriaactualizarmatricula` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoriaactualizarmatricula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoriaeliminarcalificacion`
--

DROP TABLE IF EXISTS `auditoriaeliminarcalificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditoriaeliminarcalificacion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idMatricula` int DEFAULT NULL,
  `nota` decimal(4,2) DEFAULT NULL,
  `fechaEliminacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `usuario` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoriaeliminarcalificacion`
--

LOCK TABLES `auditoriaeliminarcalificacion` WRITE;
/*!40000 ALTER TABLE `auditoriaeliminarcalificacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoriaeliminarcalificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoriaeliminarcurso`
--

DROP TABLE IF EXISTS `auditoriaeliminarcurso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditoriaeliminarcurso` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `fechaEliminacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `usuario` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoriaeliminarcurso`
--

LOCK TABLES `auditoriaeliminarcurso` WRITE;
/*!40000 ALTER TABLE `auditoriaeliminarcurso` DISABLE KEYS */;
INSERT INTO `auditoriaeliminarcurso` VALUES (1,'Segundo B','2026-01-29 23:30:17','root@localhost');
/*!40000 ALTER TABLE `auditoriaeliminarcurso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoriaeliminardocente`
--

DROP TABLE IF EXISTS `auditoriaeliminardocente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditoriaeliminardocente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `fechaEliminacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `usuario` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoriaeliminardocente`
--

LOCK TABLES `auditoriaeliminardocente` WRITE;
/*!40000 ALTER TABLE `auditoriaeliminardocente` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoriaeliminardocente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoriaeliminarestudainte`
--

DROP TABLE IF EXISTS `auditoriaeliminarestudainte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditoriaeliminarestudainte` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `fechaEliminacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `usuario` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoriaeliminarestudainte`
--

LOCK TABLES `auditoriaeliminarestudainte` WRITE;
/*!40000 ALTER TABLE `auditoriaeliminarestudainte` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoriaeliminarestudainte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoriaeliminarmateria`
--

DROP TABLE IF EXISTS `auditoriaeliminarmateria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditoriaeliminarmateria` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `fechaEliminacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `usuario` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoriaeliminarmateria`
--

LOCK TABLES `auditoriaeliminarmateria` WRITE;
/*!40000 ALTER TABLE `auditoriaeliminarmateria` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoriaeliminarmateria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoriaeliminarmatricula`
--

DROP TABLE IF EXISTS `auditoriaeliminarmatricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditoriaeliminarmatricula` (
  `id` int NOT NULL AUTO_INCREMENT,
  `estudianteID` int DEFAULT NULL,
  `cursoMateria` int DEFAULT NULL,
  `fechaEliminacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `usuario` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoriaeliminarmatricula`
--

LOCK TABLES `auditoriaeliminarmatricula` WRITE;
/*!40000 ALTER TABLE `auditoriaeliminarmatricula` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoriaeliminarmatricula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoriainsertarcalificacion`
--

DROP TABLE IF EXISTS `auditoriainsertarcalificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditoriainsertarcalificacion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idMatricula` int DEFAULT NULL,
  `nota` decimal(4,2) DEFAULT NULL,
  `fechaInsersion` datetime DEFAULT CURRENT_TIMESTAMP,
  `usuario` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoriainsertarcalificacion`
--

LOCK TABLES `auditoriainsertarcalificacion` WRITE;
/*!40000 ALTER TABLE `auditoriainsertarcalificacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoriainsertarcalificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoriainsertarcurso`
--

DROP TABLE IF EXISTS `auditoriainsertarcurso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditoriainsertarcurso` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `fechaInsersion` datetime DEFAULT CURRENT_TIMESTAMP,
  `usuario` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoriainsertarcurso`
--

LOCK TABLES `auditoriainsertarcurso` WRITE;
/*!40000 ALTER TABLE `auditoriainsertarcurso` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoriainsertarcurso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoriainsertardocente`
--

DROP TABLE IF EXISTS `auditoriainsertardocente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditoriainsertardocente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `fechaInsersion` datetime DEFAULT CURRENT_TIMESTAMP,
  `usuario` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoriainsertardocente`
--

LOCK TABLES `auditoriainsertardocente` WRITE;
/*!40000 ALTER TABLE `auditoriainsertardocente` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoriainsertardocente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoriainsertarestudainte`
--

DROP TABLE IF EXISTS `auditoriainsertarestudainte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditoriainsertarestudainte` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `fechaInsersion` datetime DEFAULT CURRENT_TIMESTAMP,
  `usuario` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoriainsertarestudainte`
--

LOCK TABLES `auditoriainsertarestudainte` WRITE;
/*!40000 ALTER TABLE `auditoriainsertarestudainte` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoriainsertarestudainte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoriainsertarmateria`
--

DROP TABLE IF EXISTS `auditoriainsertarmateria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditoriainsertarmateria` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `fechaInsersion` datetime DEFAULT CURRENT_TIMESTAMP,
  `usuario` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoriainsertarmateria`
--

LOCK TABLES `auditoriainsertarmateria` WRITE;
/*!40000 ALTER TABLE `auditoriainsertarmateria` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoriainsertarmateria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoriainsertarmatricula`
--

DROP TABLE IF EXISTS `auditoriainsertarmatricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditoriainsertarmatricula` (
  `id` int NOT NULL AUTO_INCREMENT,
  `estudianteID` int DEFAULT NULL,
  `cursoMateria` int DEFAULT NULL,
  `fechaInsersion` datetime DEFAULT CURRENT_TIMESTAMP,
  `usuario` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoriainsertarmatricula`
--

LOCK TABLES `auditoriainsertarmatricula` WRITE;
/*!40000 ALTER TABLE `auditoriainsertarmatricula` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoriainsertarmatricula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calificaciones`
--

DROP TABLE IF EXISTS `calificaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calificaciones` (
  `id_calificacion` int NOT NULL AUTO_INCREMENT,
  `id_matricula` int NOT NULL,
  `nota` decimal(4,2) NOT NULL DEFAULT '0.00',
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`id_calificacion`),
  KEY `FK_MATRICULA` (`id_matricula`),
  CONSTRAINT `FK_MATRICULA` FOREIGN KEY (`id_matricula`) REFERENCES `matricula` (`id_matricula`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `calificaciones_chk_1` CHECK (((`nota` >= 0) and (`nota` <= 10)))
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calificaciones`
--

LOCK TABLES `calificaciones` WRITE;
/*!40000 ALTER TABLE `calificaciones` DISABLE KEYS */;
INSERT INTO `calificaciones` VALUES (2,2,7.20,'Parcial 1'),(3,3,9.00,'Parcial 1'),(4,4,6.50,'Parcial 1'),(5,5,10.00,'Parcial 1'),(6,6,8.00,'Parcial 1'),(7,7,7.50,'Parcial 1'),(8,8,9.20,'Parcial 1'),(9,9,8.75,'Parcial 1'),(10,10,8.40,'Parcial 1'),(11,11,7.00,'Parcial 1'),(12,12,8.10,'Parcial 1'),(13,13,9.50,'Parcial 1'),(14,14,5.50,'Parcial 1'),(15,15,8.80,'Parcial 1'),(16,16,7.90,'Parcial 1'),(17,17,8.30,'Parcial 1'),(18,18,9.10,'Parcial 1'),(19,19,6.20,'Parcial 1'),(20,20,7.70,'Parcial 1'),(21,21,10.00,'Parcial 1'),(22,22,8.60,'Parcial 1'),(23,23,7.30,'Parcial 1'),(24,24,9.40,'Parcial 1'),(25,25,8.90,'Parcial 1'),(26,26,9.50,'Parcial 1'),(27,27,8.80,'Parcial 1'),(28,28,7.50,'Parcial 1'),(29,29,9.00,'Parcial 1'),(30,30,8.20,'Parcial 1'),(31,5,9.50,'Examen Final');
/*!40000 ALTER TABLE `calificaciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insertarCalificacion` BEFORE INSERT ON `calificaciones` FOR EACH ROW begin
declare usuarioA varchar(50);
set usuarioA= current_user();
insert into auditoriaInsertarCalificacion(idMatricula,nota,usuario) values(new.id_matricula,new.nota,usuarioA);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ActualizarCalificacion` BEFORE UPDATE ON `calificaciones` FOR EACH ROW begin
declare usuarioA varchar(50);
set usuarioA= current_user();
insert into auditoriaActualizarCalificacion(idMatriculaAntigua,idMatriculaNueva,notaAntigua,notaNueva,descripcionAntigua,descripcionNueva,usuario) values(old.id_matricula,new.id_matricula,old.nota,new.nota,old.descripcion,new.descripcion,usuarioA);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `EliminarCalificacion` BEFORE DELETE ON `calificaciones` FOR EACH ROW begin
declare usuarioA varchar(50);
set usuarioA= current_user();
insert into auditoriaEliminarCalificacion(idMatricula,nota,usuario) values(old.id_matricula,old.nota,usuarioA);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `id_curso` int NOT NULL AUTO_INCREMENT,
  `nombreCurso` varchar(50) NOT NULL,
  PRIMARY KEY (`id_curso`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'Primero A'),(2,'Primero B'),(3,'Segundo A'),(4,'Tercero A');
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insertarCurso` BEFORE INSERT ON `curso` FOR EACH ROW begin
declare usuarioA varchar(50);
set usuarioA= current_user();
insert into auditoriaInsertarCurso(nombre,usuario) values(new.nombreCurso,usuarioA);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ActualizarCurso` BEFORE UPDATE ON `curso` FOR EACH ROW begin
declare usuarioA varchar(50);
set usuarioA= current_user();
insert into auditoriaActualizarCurso(nombreAntiguo,nombreNuevo,usuario) values(old.nombreCurso,new.nombreCurso,usuarioA);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `EliminarCurso` BEFORE DELETE ON `curso` FOR EACH ROW begin
declare usuarioA varchar(50);
set usuarioA= current_user();
insert into auditoriaEliminarCurso(nombre,usuario) values(old.nombreCurso,usuarioA);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cursomateria`
--

DROP TABLE IF EXISTS `cursomateria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursomateria` (
  `id_cursoMateria` int NOT NULL AUTO_INCREMENT,
  `id_curso` int NOT NULL,
  `id_docente` int NOT NULL,
  `id_materia` int NOT NULL,
  PRIMARY KEY (`id_cursoMateria`),
  KEY `FK_CURSO` (`id_curso`),
  KEY `FK_MATERIA` (`id_materia`),
  KEY `FK_DOCENTE` (`id_docente`),
  CONSTRAINT `FK_CURSO` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id_curso`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_DOCENTE` FOREIGN KEY (`id_docente`) REFERENCES `docente` (`id_docente`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_MATERIA` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id_materia`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursomateria`
--

LOCK TABLES `cursomateria` WRITE;
/*!40000 ALTER TABLE `cursomateria` DISABLE KEYS */;
INSERT INTO `cursomateria` VALUES (1,1,1,1),(2,1,2,2),(3,1,4,4),(4,2,3,3),(5,2,5,5),(6,3,1,1),(7,3,2,2),(8,4,4,4);
/*!40000 ALTER TABLE `cursomateria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docente`
--

DROP TABLE IF EXISTS `docente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docente` (
  `id_docente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  PRIMARY KEY (`id_docente`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docente`
--

LOCK TABLES `docente` WRITE;
/*!40000 ALTER TABLE `docente` DISABLE KEYS */;
INSERT INTO `docente` VALUES (1,'Ana Rivera','0987654321','Lic. Matematicas'),(2,'Carlos Mendez','0976543210','Lic. Lengua'),(3,'Laura Gomez','0965432109','Msc. Ciencias de la Educación'),(4,'Diego Perez','0954321098','Lic. Ciencias'),(5,'Sofia Torres','0943210987','Lic. Ingles');
/*!40000 ALTER TABLE `docente` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insertarDocente` BEFORE INSERT ON `docente` FOR EACH ROW begin
declare usuarioA varchar(50);
set usuarioA= current_user();
insert into auditoriaInsertarDocente(nombre,usuario) values(new.nombre,usuarioA);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ActualizarDocente` BEFORE UPDATE ON `docente` FOR EACH ROW begin
declare usuarioA varchar(50);
set usuarioA= current_user();
insert into auditoriaActualizarDocente(nombreAntiguo,nombreNuevo,usuario) values(old.nombre,new.nombre,usuarioA);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `EliminarDocente` BEFORE DELETE ON `docente` FOR EACH ROW begin
declare usuarioA varchar(50);
set usuarioA= current_user();
insert into auditoriaEliminarDocente(nombre,usuario) values(old.nombre,usuarioA);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `estudiante`
--

DROP TABLE IF EXISTS `estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudiante` (
  `id_estudiante` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  PRIMARY KEY (`id_estudiante`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiante`
--

LOCK TABLES `estudiante` WRITE;
/*!40000 ALTER TABLE `estudiante` DISABLE KEYS */;
INSERT INTO `estudiante` VALUES (1,'Juan Perez','2008-03-12'),(2,'Maria Lopez','2007-11-02'),(3,'Pedro Santos','2008-07-21'),(4,'Lucia Vega','2009-01-15'),(5,'Carlos Ruiz','2007-06-05'),(6,'Ana Morales','2008-09-30'),(7,'Jose Castillo','2009-12-08'),(8,'Elena Herrera','2007-04-18'),(9,'Miguel Rojas','2008-02-27'),(10,'Paula Ortiz','2009-05-09'),(11,'Luis Castro','2008-10-10'),(12,'Diana Flores','2007-08-22'),(13,'Roberto Diaz','2009-03-30'),(14,'Marta Silva','2008-05-14'),(15,'Kevin Leon','2007-12-01'),(16,'Rosa Mejia','2009-07-07'),(17,'Ivan Soto','2008-11-11'),(18,'Sara Vera','2007-02-20'),(19,'Hugo Paz','2009-06-18'),(20,'Beatriz Lara','2008-04-04'),(21,'Jorge Luna','2007-09-09'),(22,'Alicia Solis','2009-01-01'),(23,'Oscar Polo','2008-08-08'),(24,'Felipe Jara','2007-10-25'),(25,'Gisela Caro','2009-11-15'),(26,'Fernando Torres','2007-05-20'),(27,'Gabriela Paz','2007-09-11'),(28,'Sebastian Reinoso','2008-01-30'),(29,'Camila Vaca','2007-12-15'),(30,'Mateo Salinas','2008-04-22'),(31,'Mateo Vizcaíno','2009-05-14');
/*!40000 ALTER TABLE `estudiante` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insertarEstudiante` BEFORE INSERT ON `estudiante` FOR EACH ROW begin
declare usuarioA varchar(50);
set usuarioA= current_user();
insert into auditoriaInsertarEstudiante(nombre,usuario) values(new.nombre,usuarioA);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ActualizarEstudiante` BEFORE UPDATE ON `estudiante` FOR EACH ROW begin
declare usuarioA varchar(50);
set usuarioA= current_user();
insert into auditoriaActualizarEstudiante(nombreAntiguo,nombreNuevo,usuario) values(old.nombre,new.nombre,usuarioA);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `EliminarEstudiante` BEFORE DELETE ON `estudiante` FOR EACH ROW begin
declare usuarioA varchar(50);
set usuarioA= current_user();
insert into auditoriaEliminarEstudiante(nombre,usuario) values(old.nombre,usuarioA);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `horariomateria`
--

DROP TABLE IF EXISTS `horariomateria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horariomateria` (
  `id_horarioMateria` int NOT NULL AUTO_INCREMENT,
  `id_cursoMateria` int NOT NULL,
  `horaInicio` time NOT NULL,
  `horaFin` time NOT NULL,
  `dia` varchar(9) NOT NULL,
  PRIMARY KEY (`id_horarioMateria`),
  KEY `FK_CURSO_MATERIA` (`id_cursoMateria`),
  CONSTRAINT `FK_CURSO_MATERIA` FOREIGN KEY (`id_cursoMateria`) REFERENCES `cursomateria` (`id_cursoMateria`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `horariomateria_chk_1` CHECK (((length(`dia`) >= 5) and (length(`dia`) <= 9)))
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horariomateria`
--

LOCK TABLES `horariomateria` WRITE;
/*!40000 ALTER TABLE `horariomateria` DISABLE KEYS */;
INSERT INTO `horariomateria` VALUES (2,2,'08:30:00','10:00:00','Lunes'),(3,3,'10:30:00','12:00:00','Martes'),(4,4,'07:00:00','08:30:00','Miercoles'),(5,5,'08:30:00','10:00:00','Miercoles'),(6,6,'07:00:00','08:30:00','Jueves'),(7,7,'08:30:00','10:00:00','Jueves'),(8,8,'07:00:00','08:30:00','Viernes');
/*!40000 ALTER TABLE `horariomateria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materia`
--

DROP TABLE IF EXISTS `materia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materia` (
  `id_materia` int NOT NULL AUTO_INCREMENT,
  `nombreMateria` varchar(70) NOT NULL,
  PRIMARY KEY (`id_materia`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materia`
--

LOCK TABLES `materia` WRITE;
/*!40000 ALTER TABLE `materia` DISABLE KEYS */;
INSERT INTO `materia` VALUES (1,'Matematicas'),(2,'Lengua'),(3,'Historia'),(4,'Ciencias'),(5,'Ingles'),(6,'Computacion');
/*!40000 ALTER TABLE `materia` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insertarMateria` BEFORE INSERT ON `materia` FOR EACH ROW begin
declare usuarioA varchar(50);
set usuarioA= current_user();
insert into auditoriaInsertarMateria(nombre,usuario) values(new.nombreMateria,usuarioA);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ActualizarMateria` BEFORE UPDATE ON `materia` FOR EACH ROW begin
declare usuarioA varchar(50);
set usuarioA= current_user();
insert into auditoriaActualizarMateria(nombreAntiguo,nombreNuevo,usuario) values(old.nombreMateria,new.nombreMateria,usuarioA);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `EliminarMateria` BEFORE DELETE ON `materia` FOR EACH ROW begin
declare usuarioA varchar(50);
set usuarioA= current_user();
insert into auditoriaEliminarMateria(nombre,usuario) values(old.nombreMateria,usuarioA);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `matricula`
--

DROP TABLE IF EXISTS `matricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matricula` (
  `id_matricula` int NOT NULL AUTO_INCREMENT,
  `id_estudiante` int NOT NULL,
  `id_cursoMateria` int NOT NULL,
  PRIMARY KEY (`id_matricula`),
  KEY `FK_CURSO_MATRICULA` (`id_cursoMateria`),
  KEY `FK_ESTUDIANTE` (`id_estudiante`),
  CONSTRAINT `FK_CURSO_MATRICULA` FOREIGN KEY (`id_cursoMateria`) REFERENCES `cursomateria` (`id_cursoMateria`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ESTUDIANTE` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiante` (`id_estudiante`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matricula`
--

LOCK TABLES `matricula` WRITE;
/*!40000 ALTER TABLE `matricula` DISABLE KEYS */;
INSERT INTO `matricula` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,1),(10,10,2),(11,11,3),(12,12,4),(13,13,5),(14,14,6),(15,15,7),(16,16,8),(17,17,1),(18,18,2),(19,19,3),(20,20,4),(21,21,5),(22,22,6),(23,23,7),(24,24,8),(25,25,1),(26,26,8),(27,27,8),(28,28,8),(29,29,8),(30,30,8);
/*!40000 ALTER TABLE `matricula` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insertarMatricula` BEFORE INSERT ON `matricula` FOR EACH ROW begin
declare usuarioA varchar(50);
set usuarioA= current_user();
insert into auditoriaInsertarMatricula(estudianteID,cursoMateria,usuario) values(new.id_estudiante,new.id_cursoMateria,usuarioA);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ActualizarMatricula` BEFORE UPDATE ON `matricula` FOR EACH ROW begin
declare usuarioA varchar(50);
set usuarioA= current_user();
insert into auditoriaInsertarMatricula(estudianteIDA,estudianteIDN,cursoMateriaA,cursoMateriaN,usuario) values(old.id_estudiante,new.id_estudiante,old.id_cursoMateria,new.id_cursoMateria,usuarioA);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `EliminarMatricula` BEFORE DELETE ON `matricula` FOR EACH ROW begin
declare usuarioA varchar(50);
set usuarioA= current_user();
insert into auditoriaEliminarMatricula(estudianteID,cursoMateria,usuario) values(old.id_estudiante,old.id_cursoMateria,usuarioA);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `veralumnos`
--

DROP TABLE IF EXISTS `veralumnos`;
/*!50001 DROP VIEW IF EXISTS `veralumnos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `veralumnos` AS SELECT 
 1 AS `id_estudiante`,
 1 AS `nombre`,
 1 AS `fechaNacimiento`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vercalificacionesgenerales`
--

DROP TABLE IF EXISTS `vercalificacionesgenerales`;
/*!50001 DROP VIEW IF EXISTS `vercalificacionesgenerales`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vercalificacionesgenerales` AS SELECT 
 1 AS `id_calificacion`,
 1 AS `id_matricula`,
 1 AS `nota`,
 1 AS `descripcion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vercursos`
--

DROP TABLE IF EXISTS `vercursos`;
/*!50001 DROP VIEW IF EXISTS `vercursos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vercursos` AS SELECT 
 1 AS `id_curso`,
 1 AS `nombreCurso`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `verdocente`
--

DROP TABLE IF EXISTS `verdocente`;
/*!50001 DROP VIEW IF EXISTS `verdocente`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `verdocente` AS SELECT 
 1 AS `id_docente`,
 1 AS `nombre`,
 1 AS `telefono`,
 1 AS `titulo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vermaterias`
--

DROP TABLE IF EXISTS `vermaterias`;
/*!50001 DROP VIEW IF EXISTS `vermaterias`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vermaterias` AS SELECT 
 1 AS `id_materia`,
 1 AS `nombreMateria`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vermatriculas`
--

DROP TABLE IF EXISTS `vermatriculas`;
/*!50001 DROP VIEW IF EXISTS `vermatriculas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vermatriculas` AS SELECT 
 1 AS `id_matricula`,
 1 AS `id_estudiante`,
 1 AS `id_cursoMateria`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_alumnos_reprobados`
--

DROP TABLE IF EXISTS `vista_alumnos_reprobados`;
/*!50001 DROP VIEW IF EXISTS `vista_alumnos_reprobados`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_alumnos_reprobados` AS SELECT 
 1 AS `estudiante`,
 1 AS `nota`,
 1 AS `descripcion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_docentes_materias`
--

DROP TABLE IF EXISTS `vista_docentes_materias`;
/*!50001 DROP VIEW IF EXISTS `vista_docentes_materias`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_docentes_materias` AS SELECT 
 1 AS `docente`,
 1 AS `nombreMateria`,
 1 AS `nombreCurso`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_edad_estudiantes`
--

DROP TABLE IF EXISTS `vista_edad_estudiantes`;
/*!50001 DROP VIEW IF EXISTS `vista_edad_estudiantes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_edad_estudiantes` AS SELECT 
 1 AS `nombre`,
 1 AS `edad`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_resumen_matricula`
--

DROP TABLE IF EXISTS `vista_resumen_matricula`;
/*!50001 DROP VIEW IF EXISTS `vista_resumen_matricula`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_resumen_matricula` AS SELECT 
 1 AS `nombreCurso`,
 1 AS `alumnos_inscritos`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'gestionescolar'
--

--
-- Dumping routines for database 'gestionescolar'
--
/*!50003 DROP PROCEDURE IF EXISTS `agregarDocente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarDocente`(in nombreD varchar(100),in tituloD varchar(50), in telefonoD varchar(10))
begin
insert into docente (nombre, telefono, titulo) values(nombreD,telefonoD,tituloD);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `crearCurso` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `crearCurso`(
    IN nombre VARCHAR(50),
    IN idDocente INT,
    IN idMateria INT,
    IN horaI TIME,
    IN horaF TIME,
    IN diaI VARCHAR(9)
)
BEGIN
    DECLARE idCursoNuevo INT;
    DECLARE idCMNuevo INT;

    -- Insertar curso
    INSERT INTO curso(nombreCurso)
    VALUES (nombre);

    SET idCursoNuevo = LAST_INSERT_ID();

    -- Insertar curso-materia
    INSERT INTO cursoMateria(id_curso, id_docente, id_materia)
    VALUES (idCursoNuevo, idDocente, idMateria);

    SET idCMNuevo = LAST_INSERT_ID();

    -- Insertar horario
    INSERT INTO horarioMateria(id_cursoMateria, horaInicio, horaFin, dia)
    VALUES (idCMNuevo, horaI, horaF, diaI);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `crearEstudiante` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `crearEstudiante`(in nombreI varchar(50),in fechaN date)
begin
insert into estudiante(nombre,fechaNacimiento) values(nombreI,fechaN);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `crearMateria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `crearMateria`(in nombreM varchar(50))
begin
insert into materia(nombreMateria) values(nombreM);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertarCalificacion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertarCalificacion`(in idMatricula int, in notaI decimal, in descripcionI varchar(100))
begin
insert into calificaciones(id_matricula,nota,descripcion) values(idMatricula,notaI,descripcionI);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `matricular` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `matricular`(in idEstudiante int,in idCM int)
begin
insert into matricula(id_estudiante,id_cursoMateria) values(idEstudiante,idCM);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `veralumnos`
--

/*!50001 DROP VIEW IF EXISTS `veralumnos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `veralumnos` AS select `estudiante`.`id_estudiante` AS `id_estudiante`,`estudiante`.`nombre` AS `nombre`,`estudiante`.`fechaNacimiento` AS `fechaNacimiento` from `estudiante` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vercalificacionesgenerales`
--

/*!50001 DROP VIEW IF EXISTS `vercalificacionesgenerales`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vercalificacionesgenerales` AS select `calificaciones`.`id_calificacion` AS `id_calificacion`,`calificaciones`.`id_matricula` AS `id_matricula`,`calificaciones`.`nota` AS `nota`,`calificaciones`.`descripcion` AS `descripcion` from `calificaciones` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vercursos`
--

/*!50001 DROP VIEW IF EXISTS `vercursos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vercursos` AS select `curso`.`id_curso` AS `id_curso`,`curso`.`nombreCurso` AS `nombreCurso` from `curso` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `verdocente`
--

/*!50001 DROP VIEW IF EXISTS `verdocente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `verdocente` AS select `docente`.`id_docente` AS `id_docente`,`docente`.`nombre` AS `nombre`,`docente`.`telefono` AS `telefono`,`docente`.`titulo` AS `titulo` from `docente` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vermaterias`
--

/*!50001 DROP VIEW IF EXISTS `vermaterias`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vermaterias` AS select `materia`.`id_materia` AS `id_materia`,`materia`.`nombreMateria` AS `nombreMateria` from `materia` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vermatriculas`
--

/*!50001 DROP VIEW IF EXISTS `vermatriculas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vermatriculas` AS select `matricula`.`id_matricula` AS `id_matricula`,`matricula`.`id_estudiante` AS `id_estudiante`,`matricula`.`id_cursoMateria` AS `id_cursoMateria` from `matricula` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_alumnos_reprobados`
--

/*!50001 DROP VIEW IF EXISTS `vista_alumnos_reprobados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_alumnos_reprobados` AS select `e`.`nombre` AS `estudiante`,`ca`.`nota` AS `nota`,`ca`.`descripcion` AS `descripcion` from ((`estudiante` `e` join `matricula` `ma` on((`e`.`id_estudiante` = `ma`.`id_estudiante`))) join `calificaciones` `ca` on((`ma`.`id_matricula` = `ca`.`id_matricula`))) where (`ca`.`nota` < 7.00) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_docentes_materias`
--

/*!50001 DROP VIEW IF EXISTS `vista_docentes_materias`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_docentes_materias` AS select `d`.`nombre` AS `docente`,`m`.`nombreMateria` AS `nombreMateria`,`c`.`nombreCurso` AS `nombreCurso` from (((`docente` `d` join `cursomateria` `cm` on((`d`.`id_docente` = `cm`.`id_docente`))) join `materia` `m` on((`cm`.`id_materia` = `m`.`id_materia`))) join `curso` `c` on((`cm`.`id_curso` = `c`.`id_curso`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_edad_estudiantes`
--

/*!50001 DROP VIEW IF EXISTS `vista_edad_estudiantes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_edad_estudiantes` AS select `estudiante`.`nombre` AS `nombre`,timestampdiff(YEAR,`estudiante`.`fechaNacimiento`,curdate()) AS `edad` from `estudiante` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_resumen_matricula`
--

/*!50001 DROP VIEW IF EXISTS `vista_resumen_matricula`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_resumen_matricula` AS select `c`.`nombreCurso` AS `nombreCurso`,count(`m`.`id_matricula`) AS `alumnos_inscritos` from ((`curso` `c` left join `cursomateria` `cm` on((`c`.`id_curso` = `cm`.`id_curso`))) left join `matricula` `m` on((`cm`.`id_cursoMateria` = `m`.`id_cursoMateria`))) group by `c`.`nombreCurso` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-29 23:44:16
