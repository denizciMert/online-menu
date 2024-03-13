CREATE DATABASE  IF NOT EXISTS `cafe_menu` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cafe_menu`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: cafe_menu
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `alcohols`
--

DROP TABLE IF EXISTS `alcohols`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alcohols` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `description` text COLLATE utf8mb3_unicode_ci,
  `image` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alcohols`
--

LOCK TABLES `alcohols` WRITE;
/*!40000 ALTER TABLE `alcohols` DISABLE KEYS */;
INSERT INTO `alcohols` VALUES 
(1,'Margarita',300.00,'A classic cocktail made with tequila, lime juice, and triple sec.','images/alcohols/margarita.jpg'),
(2,'Mojito',270.00,'A refreshing cocktail made with white rum, lime juice, mint leaves, soda water, and sugar.','images/alcohols/mojito.jpg'),
(3,'Martini',360.00,'A classic cocktail made with gin and dry vermouth, garnished with an olive or a lemon twist.','images/alcohols/martini.jpg'),
(4,'Cosmopolitan',330.00,'A cocktail made with vodka, triple sec, cranberry juice, and fresh lime juice.','images/alcohols/cosmopolitan.jpg'),
(5,'Pina Colada',300.00,'A tropical cocktail made with rum, coconut cream, and pineapple juice, typically served blended with ice.','images/alcohols/pinacolada.jpg'),
(6,'Long Island Iced Tea',360.00,'A strong cocktail made with vodka, tequila, rum, gin, triple sec, lemon juice, simple syrup, and a splash of cola.','images/alcohols/longisland.jpg'),
(7,'Negroni',330.00,'A classic Italian cocktail made with gin, sweet vermouth, and Campari, garnished with an orange peel.','images/alcohols/negroni.jpg'),
(8,'Old Fashioned',360.00,'A classic cocktail made with bourbon or rye whiskey, sugar, Angostura bitters, and a twist of citrus rind.','images/alcohols/oldfashioned.jpg'),
(9,'Daiquiri',270.00,'A classic cocktail made with rum, lime juice, and simple syrup.','images/alcohols/daiquiri.jpg'),
(10,'Manhattan',360.00,'A classic cocktail made with whiskey, sweet vermouth, and bitters, garnished with a cherry.','images/alcohols/manhattan.jpg');
/*!40000 ALTER TABLE `alcohols` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appetizers`
--

DROP TABLE IF EXISTS `appetizers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appetizers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `description` text COLLATE utf8mb3_unicode_ci,
  `image` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appetizers`
--

LOCK TABLES `appetizers` WRITE;
/*!40000 ALTER TABLE `appetizers` DISABLE KEYS */;
INSERT INTO `appetizers` VALUES 
(1,'Bruschetta',240.00,'Toasted bread topped with diced tomatoes, garlic, basil, olive oil, and balsamic vinegar.','images/appetizers/bruschetta.jpg'),
(2,'Caprese Salad',300.00,'A simple salad made with sliced fresh mozzarella, tomatoes, basil, olive oil, and balsamic glaze.','images/appetizers/capresesalad.jpg'),
(3,'Spinach Artichoke Dip',270.00,'A creamy dip made with spinach, artichokes, cream cheese, sour cream, and various seasonings, often served with tortilla chips or bread.','images/appetizers/spinachdip.jpg'),
(4,'Chicken Wings',330.00,'Chicken wings fried and coated in a spicy or savory sauce, served with celery sticks and ranch or blue cheese dressing.','images/appetizers/chickenwings.jpg'),
(5,'Stuffed Mushrooms',300.00,'Mushroom caps filled with a mixture of breadcrumbs, garlic, herbs, cheese, and sometimes sausage, baked until golden brown.','images/appetizers/stuffedmushrooms.jpg'),
(6,'Shrimp Cocktail',360.00,'Chilled cooked shrimp served with a tangy cocktail sauce made from ketchup, horseradish, lemon juice, Worcestershire sauce, and hot sauce.','images/appetizers/shrimpcocktail.jpg'),
(7,'Spring Rolls',270.00,'Light and crispy rolls filled with vegetables, vermicelli noodles, and sometimes shrimp or chicken, served with a dipping sauce.','images/appetizers/springrolls.jpg'),
(8,'Potato Skins',270.00,'Halved potato shells filled with cheese, bacon, sour cream, and green onions, baked until crispy and golden brown.','images/appetizers/potatoskins.jpg'),
(9,'Calamari',360.00,'Sliced squid rings coated in seasoned flour and deep-fried until crispy, served with marinara sauce or aioli for dipping.','images/appetizers/calamari.jpg'),
(10,'Nachos',300.00,'Corn tortilla chips topped with melted cheese, jalapenos, black beans, salsa, sour cream, and guacamole.','images/appetizers/nachos.jpg');
/*!40000 ALTER TABLE `appetizers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `breakfasts`
--

DROP TABLE IF EXISTS `breakfasts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `breakfasts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `description` text COLLATE utf8mb3_unicode_ci,
  `image` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `breakfasts`
--

LOCK TABLES `breakfasts` WRITE;
/*!40000 ALTER TABLE `breakfasts` DISABLE KEYS */;
INSERT INTO `breakfasts` VALUES 
(1,'Eggs Benedict',360.00,'A classic breakfast dish consisting of two halves of an English muffin topped with a poached egg, bacon or ham, and hollandaise sauce.','images/breakfasts/eggsbenedict.jpg'),
(2,'Pancakes',240.00,'A breakfast staple made from a batter consisting of flour, eggs, milk, and butter, cooked on a griddle and served with toppings like maple syrup, fruit, or whipped cream.','images/breakfasts/pancakes.jpg'),
(3,'French Toast',270.00,'Slices of bread soaked in beaten eggs and milk, then fried until golden brown, often served with syrup, powdered sugar, or fruit.','images/breakfasts/frenchtoast.jpg'),
(4,'Omelette',300.00,'A dish made from beaten eggs cooked with various fillings such as cheese, vegetables, and meats, folded over to form a half-moon shape.','images/breakfasts/omelette.jpg'),
(5,'Breakfast Burrito',330.00,'A flour tortilla filled with scrambled eggs, cheese, and a choice of breakfast meats such as bacon, sausage, or ham, often served with salsa or sour cream.','images/breakfasts/breakfastburrito.jpg'),
(6,'Avocado Toast',300.00,'Sliced avocado served atop toasted bread, often seasoned with salt, pepper, and other toppings like cherry tomatoes, feta cheese, or poached eggs.','images/breakfasts/avocadotoast.jpg'),
(7,'Smoothie Bowl',270.00,'A thick smoothie served in a bowl and topped with granola, fresh fruit, nuts, seeds, or other toppings.','images/breakfasts/smoothiebowl.jpg'),
(8,'Bagel with Lox',390.00,'A bagel topped with cream cheese, smoked salmon (lox), sliced tomatoes, onions, and capers.','images/breakfasts/bagelandlox.jpg'),
(9,'Turkish Yogurt Parfait',210.00,'Layers of Turkish yogurt, granola, and fresh fruit, often served in a glass or bowl.','images/breakfasts/parfait.jpg'),
(10,'Breakfast Sandwich',300.00,'A sandwich made with breakfast ingredients such as eggs, cheese, bacon, sausage, or ham, served on bread or a roll.','images/breakfasts/breakfastsandwich.jpg');
/*!40000 ALTER TABLE `breakfasts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `button_id` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `button_name` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `img_src` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `img_alt` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `p_text` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES 
(1,'Alcohols','alcohols','Alcohols','images/category/alcohols.jpg','Alcohols','Alcohols'),
(2,'Appetizers','appetizers','Appetizers','images/category/appetizers.jpg','Appetizers','Appetizers'),
(3,'Breakfasts','breakfasts','Breakfasts','images/category/breakfasts.jpg','Breakfasts','Breakfasts'),
(4,'Cocktails','cocktails','Cocktails','images/category/cocktails.jpg','Cocktails','Cocktails'),
(5,'Coffees','coffees','Coffees','images/category/coffees.jpg','Coffees','Coffees'),
(6,'Fast Foods','fastfoods','Fast Foods','images/category/fastfoods.jpg','Fast Foods','Fast Foods'),
(7,'Main Courses','maincourses','Main Courses','images/category/maincourses.jpg','Main Courses','Main Courses'),
(8,'Soft Drinks','softdrinks','Soft Drinks','images/category/softdrinks.jpg','Soft Drinks','Soft Drinks'),
(9,'Teas','teas','Teas','images/category/teas.jpg','Teas','Teas');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cocktails`
--

DROP TABLE IF EXISTS `cocktails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cocktails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `description` text COLLATE utf8mb3_unicode_ci,
  `image` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cocktails`
--

LOCK TABLES `cocktails` WRITE;
/*!40000 ALTER TABLE `cocktails` DISABLE KEYS */;
INSERT INTO `cocktails` VALUES 
(1,'Virgin Mojito',150.00,'A refreshing mocktail made with lime juice, mint leaves, soda water, and sugar.','images/cocktails/virginmojito.jpg'),
(2,'Strawberry Daiquiri Mocktail',165.00,'A non-alcoholic version of the classic daiquiri made with strawberries, lime juice, and sugar.','images/cocktails/strawberrydaiquiri.jpg'),
(3,'Piña Colada Mocktail',180.00,'A tropical mocktail made with pineapple juice, coconut cream, and crushed ice.','images/cocktails/pinacoladamocktail.jpg'),
(4,'Sunset Punch',180.00,'A fruity mocktail with orange juice, cranberry juice, pineapple juice, and grenadine syrup.','images/cocktails/sunsetpunch.jpg'),
(5,'Mango Tango',165.00,'A vibrant mocktail made with mango juice, lime juice, ginger ale, and mint leaves.','images/cocktails/mangotango.jpg'),
(6,'Berry Blast',165.00,'A refreshing mocktail with mixed berries, lemon juice, soda water, and a hint of honey.','images/cocktails/berryblast.jpg'),
(7,'Tropical Paradise',180.00,'A refreshing mocktail with a blend of tropical fruits like mango, pineapple, and coconut water.','images/cocktails/tropicalparadise.jpg'),
(8,'Citrus Splash',150.00,'A zesty mocktail with a blend of citrus juices like orange, lemon, and lime, served over ice.','images/cocktails/citrussplash.jpg'),
(9,'Cool Cucumber',150.00,'A cooling mocktail made with cucumber slices, lime juice, mint leaves, and soda water.','images/cocktails/coolcucumber.jpg'),
(10,'Ginger Fizz',150.00,'A fizzy mocktail made with ginger syrup, lemon juice, soda water, and a dash of bitters.','images/cocktails/gingerfizz.jpg');
/*!40000 ALTER TABLE `cocktails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coffees`
--

DROP TABLE IF EXISTS `coffees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coffees` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `description` text COLLATE utf8mb3_unicode_ci,
  `image` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coffees`
--

LOCK TABLES `coffees` WRITE;
/*!40000 ALTER TABLE `coffees` DISABLE KEYS */;
INSERT INTO `coffees` VALUES 
(1,'Espresso',105.00,'A concentrated coffee brewed by forcing a small amount of nearly boiling water through finely ground coffee beans.','images/coffees/espresso.jpg'),
(2,'Cappuccino',120.00,'An espresso-based coffee drink that is traditionally prepared with equal parts double espresso, steamed milk, and milk foam.','images/coffees/cappuccino.jpg'),
(3,'Latte',127.50,'A coffee drink made with espresso and steamed milk.','images/coffees/latte.jpg'),
(4,'Americano',112.50,'A coffee drink prepared by diluting espresso with hot water.','images/coffees/americano.jpg'),
(5,'Mocha',135.00,'A coffee drink made with espresso, hot milk, and chocolate.','images/coffees/mocha.jpg'),
(6,'Macchiato',112.50,'An espresso-based coffee drink with a small amount of milk.','images/coffees/macchiato.jpg'),
(7,'Affogato',150.00,'An Italian coffee-based dessert made with a scoop of vanilla gelato or ice cream topped with a shot of hot espresso.','images/coffees/affogato.jpg'),
(8,'Flat White',127.50,'A coffee drink consisting of espresso with microfoam (steamed milk with small, fine bubbles and a glossy or velvety consistency).','images/coffees/flatwhite.jpg'),
(9,'Turkish Coffee',105.00,'A traditional method of preparing unfiltered coffee, finely ground coffee beans are simmered in water (with or without sugar) in a special pot called a cezve or ibrik.','images/coffees/turkishcoffee.jpg'),
(10,'Iced Coffee',120.00,'A chilled coffee drink usually served with ice cubes.','images/coffees/icedcoffee.jpg');
/*!40000 ALTER TABLE `coffees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fastfoods`
--

DROP TABLE IF EXISTS `fastfoods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fastfoods` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `description` text COLLATE utf8mb3_unicode_ci,
  `image` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fastfoods`
--

LOCK TABLES `fastfoods` WRITE;
/*!40000 ALTER TABLE `fastfoods` DISABLE KEYS */;
INSERT INTO `fastfoods` VALUES 
(1,'Cheeseburger',240.00,'A classic cheeseburger with a juicy beef patty, melted cheese, lettuce, tomato, onion, pickles, and condiments on a toasted bun.','images/fastfoods/cheeseburger.jpg'),
(2,'Chicken Nuggets',210.00,'Breaded and fried bite-sized pieces of chicken, often served with dipping sauces like barbecue, honey mustard, or ranch.','images/fastfoods/chickennuggets.jpg'),
(3,'Hot Dog',180.00,'A grilled or boiled sausage served in a sliced bun, typically topped with mustard, ketchup, onions, relish, and other condiments.','images/fastfoods/hotdog.jpg'),
(4,'French Fries',150.00,'Crispy and golden potato fries, often served with ketchup or other dipping sauces.','images/fastfoods/frenchfries.jpg'),
(5,'Pizza Slice',120.00,'A single slice of pizza topped with tomato sauce, cheese, and various toppings such as pepperoni, mushrooms, or peppers.','images/fastfoods/pizzaslice.jpg'),
(6,'Chicken Sandwich',240.00,'Grilled or breaded chicken breast served on a bun with lettuce, tomato, mayonnaise, and other toppings.','images/fastfoods/chickennuggets.jpg'),
(7,'Taco',180.00,'A Mexican dish consisting of a folded or rolled tortilla filled with various ingredients such as seasoned meat, cheese, lettuce, and salsa.','images/fastfoods/taco.jpg'),
(8,'Fried Chicken',270.00,'Crispy fried chicken pieces, often served with coleslaw, biscuits, and mashed potatoes.','images/fastfoods/friedchicken.jpg'),
(9,'Quesadilla',210.00,'A tortilla filled with melted cheese and other ingredients such as chicken, beef, or vegetables, folded in half and grilled until crispy.','images/fastfoods/quesadilla.jpg'),
(10,'Burrito',240.00,'A flour tortilla filled with rice, beans, cheese, meat, and other ingredients, wrapped into a cylindrical shape.','images/fastfoods/burrito.jpg');
/*!40000 ALTER TABLE `fastfoods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maincourses`
--

DROP TABLE IF EXISTS `maincourses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maincourses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `description` text COLLATE utf8mb3_unicode_ci,
  `image` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maincourses`
--

LOCK TABLES `maincourses` WRITE;
/*!40000 ALTER TABLE `maincourses` DISABLE KEYS */;
INSERT INTO `maincourses` VALUES 
(1,'Grilled Salmon',540.00,'Fresh salmon fillet seasoned and grilled to perfection, served with a side of vegetables and your choice of starch.','images/maincourses/grilledsalmon.jpg'),
(2,'Chicken Parmesan',480.00,'Breaded chicken breast topped with marinara sauce and melted mozzarella cheese, served with pasta.','images/maincourses/chickenparmesan.jpg'),
(3,'Beef Burger',420.00,'A juicy beef patty grilled to your preference, served on a toasted bun with lettuce, tomato, onion, and your choice of toppings and condiments.','images/maincourses/beefburger.jpg'),
(4,'Vegetable Stir-Fry',450.00,'A medley of fresh vegetables stir-fried in a savory sauce, served over rice or noodles.','images/maincourses/vegetablestirfry.jpg'),
(5,'Steak Frites',660.00,'Grilled steak served with crispy French fries and a side salad.','images/maincourses/steakfrites.jpg'),
(6,'Pasta Primavera',480.00,'A light and flavorful pasta dish made with mixed vegetables and a creamy Alfredo or marinara sauce.','images/maincourses/pastaprimavera.jpg'),
(7,'Mushroom Risotto',510.00,'Creamy risotto cooked with mushrooms, onions, garlic, white wine, and Parmesan cheese, topped with fresh herbs.','images/maincourses/mushroomrisotto.jpg'),
(8,'BBQ Ribs',600.00,'Slow-cooked pork ribs basted in barbecue sauce, served with coleslaw and cornbread.','images/maincourses/barbecueribs.jpg'),
(9,'Eggplant Parmesan',450.00,'Breaded and fried slices of eggplant topped with marinara sauce and melted mozzarella cheese, served with pasta.','images/maincourses/eggplantparmesan.jpg'),
(10,'Tofu Pad Thai',480.00,'A Thai-inspired dish made with stir-fried tofu, rice noodles, bean sprouts, peanuts, and a tangy sauce.','images/maincourses/veganpadthai.jpg');
/*!40000 ALTER TABLE `maincourses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `softdrinks`
--

DROP TABLE IF EXISTS `softdrinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `softdrinks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `description` text COLLATE utf8mb3_unicode_ci,
  `image` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `softdrinks`
--

LOCK TABLES `softdrinks` WRITE;
/*!40000 ALTER TABLE `softdrinks` DISABLE KEYS */;
INSERT INTO `softdrinks` VALUES 
(1,'Cola',75.00,'A carbonated soft drink containing caffeine and sweeteners.','images/softdrinks/cola.jpg'),
(2,'Lemonade',82.50,'A sweetened lemon-flavored beverage.','images/softdrinks/lemonade.jpg'),
(3,'Iced Tea',82.50,'A chilled tea beverage served with ice cubes.','images/softdrinks/icedtea.jpg'),
(4,'Orange Juice',90.00,'A juice made from oranges, often served chilled.','images/softdrinks/orangejuice.jpg'),
(5,'Apple Juice',90.00,'A juice made from apples, often served chilled.','images/softdrinks/applejuice.jpg'),
(6,'Ginger Ale',75.00,'A carbonated soft drink flavored with ginger.','images/softdrinks/gingerale.jpg'),
(7,'Root Beer',82.50,'A sweet carbonated beverage flavored with extracts from roots and herbs.','images/softdrinks/rootbeer.jpg'),
(8,'Sprite',75.00,'A lemon-lime flavored carbonated soft drink.','images/softdrinks/sprite.jpg'),
(9,'Fruit Punch',90.00,'A sweet beverage made from various fruit juices, often served chilled.','images/softdrinks/fruitpunch.jpg'),
(10,'Water',45.00,'Pure and refreshing water.','images/softdrinks/water.jpg');
/*!40000 ALTER TABLE `softdrinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teas`
--

DROP TABLE IF EXISTS `teas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `description` text COLLATE utf8mb3_unicode_ci,
  `image` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teas`
--

LOCK TABLES `teas` WRITE;
/*!40000 ALTER TABLE `teas` DISABLE KEYS */;
INSERT INTO `teas` VALUES 
(1,'Green Tea',75.00,'Green tea is made from Camellia sinensis leaves and buds.','images/teas/greentea.jpg'),
(2,'Black Tea',60.00,'Black tea is a type of tea that is more oxidized than oolong, green, and white teas.','images/teas/blacktea.jpg'),
(3,'Chamomile Tea',90.00,'Chamomile tea is made from dried chamomile flowers and is known for its calming effects.','images/teas/chamomiletea.jpg'),
(4,'Peppermint Tea',82.50,'Peppermint tea is made from peppermint leaves and has a refreshing taste.','images/teas/pepperminttea.jpg'),
(5,'Earl Grey Tea',75.00,'Earl Grey is a tea blend which has been flavoured with the addition of oil of bergamot.','images/teas/earlgreytea.jpg'),
(6,'Oolong Tea',97.50,'Oolong tea is a traditional Chinese tea produced through a process including withering the plant under strong sun and oxidation before curling and twisting.','images/teas/oolongtea.jpg'),
(7,'White Tea',105.00,'White tea is made from young leaves and buds of the Camellia sinensis plant.','images/teas/whitetea.jpg'),
(8,'Rooibos Tea',90.00,'Rooibos tea is a herbal tea made from the leaves of the Aspalathus linearis plant.','images/teas/rooibostea.jpg'),
(9,'Hibiscus Tea',97.50,'Hibiscus tea is made from the dried petals of the hibiscus flower and has a tart flavor.','images/teas/hibiscustea.jpg'),
(10,'Lemon Ginger Tea',82.50,'Lemon ginger tea is made from ginger root and lemon, often enjoyed for its soothing properties and citrusy flavor.','images/teas/lemongingertea.jpg');
/*!40000 ALTER TABLE `teas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-13  3:17:33