CREATE DATABASE  IF NOT EXISTS `lookeasy` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `lookeasy`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: lookeasy
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `peliculas`
--

DROP TABLE IF EXISTS `peliculas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `peliculas` (
  `id` bigint NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `descripcion` longtext,
  `Año` int NOT NULL,
  `Duracion` int NOT NULL,
  `Genero` varchar(255) DEFAULT NULL,
  `imagen` tinytext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ID_Contenido_UNIQUE` (`id`),
  UNIQUE KEY `Titulo_UNIQUE` (`titulo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peliculas`
--

LOCK TABLES `peliculas` WRITE;
/*!40000 ALTER TABLE `peliculas` DISABLE KEYS */;
INSERT INTO `peliculas` VALUES (55,'cdds','cdscs',2002,233,'cddsf','https://img.asmedia.epimg.net/resizer/kOEmXGAp0RNjOSvhwn9THAMzD_I=/644x362/cloudfront-eu-central-1.images.arcpublishing.com/diarioas/25IAY3O4ZVF4LPEHALL2C7Y4YU.jpg'),(302,'Barbie','Una muñeca que vive en \'Barbieland\' es expulsada al mundo real por no ser lo suficientemente perfecta. Basada en la popular muñeca Barbie.',2019,120,'comedia','https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/media/image/2022/07/barbie-2748009.jpg'),(402,'flash','Cuando su intento de salvar a su familia altera el futuro sin darse cuenta, Barry Allen queda atrapado en una realidad en la que el general Zod ha regresado y no hay superhéroes a los que recurrir. ',2023,140,'accion','https://www.mundodeportivo.com/alfabeta/hero/2023/08/the_flash_dc.jpg?width=1200'),(403,'Transformers: El despertar de las bestias','Una aventura alrededor del mundo con los Autobots que introducirá una nueva facción de Transformers - los Maximals - en la batalla existente en la Tierra entre Autobots y Decepticons.',2023,132,'Accion','https://img.asmedia.epimg.net/resizer/kOEmXGAp0RNjOSvhwn9THAMzD_I=/644x362/cloudfront-eu-central-1.images.arcpublishing.com/diarioas/25IAY3O4ZVF4LPEHALL2C7Y4YU.jpg'),(406,'Megalodón 2: El gran abismo',' Un equipo de investigación inicia una misión que va a explorar las profundidades más abismales del mar. Pero su viaje se convierte en caos cuando un malévolo operativo minero amenaza su misión y los obliga a librar una batalla de alto riesgo por la supervivencia. Enfrentados a colosales Megalodones y a implacables saqueadores medioambientales, nuestros héroes deben correr más rápido, ser más astutos y nadar a mayor velocidad que sus despiadados depredadores en una trepidante carrera contra el tiempo.',2024,156,'accion','https://i0.wp.com/cinemedios.com/wp-content/uploads/2023/08/megalodon2_elgran_abismo_resena.jpg?fit=1200%2C675&ssl=1');
/*!40000 ALTER TABLE `peliculas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-24  8:19:08
