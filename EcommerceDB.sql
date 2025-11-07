Create database EcommerceDB;

use EcommerceDB;

create table Categories(
 CategoryName varchar(100),
 CategoryID int primary key
);

create table products(
 ProductID int primary key,
 Name   varchar(20), 
 Price  int,
 StockQuantity int, 
 CategoryID int,
 foreign key(CategoryID)
 references
 Categories(CategoryID)
);

create table Customers(
 CustomerID int primary Key,
 Name varchar(20),
 Email varchar(50)
);

create table orders(
 OrderID int primary key,
 OrderDate date,
 CustomerID int,
 foreign key(CustomerID)
 references
 Customers(CustomerID)
);

create table Discounts(
DiscountID int primary key,
DiscountAmount int,
 ProductID int ,
 foreign key(productID)
 references
 products(ProductId)
);

create table OrderDetails(
 DetailID int primary Key, 
 OrderID int,
 ProductID int,  
 Quantity  int,
 foreign key(OrderID)
 references
 orders(OrderId),
 foreign key(ProductId)
 references
 products(ProductID)
);

Create Table Reviews(
ReviewID int primary Key,  
 ProductID int, 
 CustomerID int,
 Rating  int ,      
 Comment varchar(200),
 foreign key(ProductID)
 references
  products(ProductID),
  foreign key(CustomerID)
  references
  Customers(CustomerID)
);

create table Shipping(
 ShippingID int primary key,
 OrderID int, 
 ShipDate Date,
 DeliveryDate  Date,
 foreign key(OrderID)
 references
 orders(OrderId)
);

INSERT INTO Categories (CategoryID, CategoryName) VALUES
(1, 'Category1'), (2, 'Category2'), (3, 'Category3'), (4, 'Category4'),
(5, 'Category5'), (6, 'Category6'), (7, 'Category7'), (8, 'Category8'),
(9, 'Category9'), (10, 'Category10'), (11, 'Category11'), (12, 'Category12'),
(13, 'Category13'), (14, 'Category14'), (15, 'Category15'), (16, 'Category16'),
(17, 'Category17'), (18, 'Category18'), (19, 'Category19'), (20, 'Category20'),
(21, 'Category21'), (22, 'Category22'), (23, 'Category23'), (24, 'Category24'),
(25, 'Category25'), (26, 'Category26'), (27, 'Category27'), (28, 'Category28'),
(29, 'Category29'), (30, 'Category30'), (31, 'Category31'), (32, 'Category32'),
(33, 'Category33'), (34, 'Category34'), (35, 'Category35'), (36, 'Category36'),
(37, 'Category37'), (38, 'Category38'), (39, 'Category39'), (40, 'Category40'),
(41, 'Category41'), (42, 'Category42'), (43, 'Category43'), (44, 'Category44'),
(45, 'Category45'), (46, 'Category46'), (47, 'Category47'), (48, 'Category48'),
(49, 'Category49'), (50, 'Category50'), (51, 'Category51'), (52, 'Category52'),
(53, 'Category53'), (54, 'Category54'), (55, 'Category55'), (56, 'Category56'),
(57, 'Category57'), (58, 'Category58'), (59, 'Category59'), (60, 'Category60'),
(61, 'Category61'), (62, 'Category62'), (63, 'Category63'), (64, 'Category64'),
(65, 'Category65'), (66, 'Category66'), (67, 'Category67'), (68, 'Category68'),
(69, 'Category69'), (70, 'Category70'), (71, 'Category71'), (72, 'Category72'),
(73, 'Category73'), (74, 'Category74'), (75, 'Category75'), (76, 'Category76'),
(77, 'Category77'), (78, 'Category78'), (79, 'Category79'), (80, 'Category80');


INSERT INTO Products (ProductID, Name, Price, StockQuantity, CategoryID) VALUES
(1,'Product1',100,50,1),(2,'Product2',200,40,2),(3,'Product3',300,30,3),
(4,'Product4',400,20,4),(5,'Product5',500,10,5),(6,'Product6',150,60,6),
(7,'Product7',250,70,7),(8,'Product8',350,80,8),(9,'Product9',450,90,9),
(10,'Product10',550,100,10),(11,'Product11',120,55,11),(12,'Product12',220,45,12),
(13,'Product13',320,35,13),(14,'Product14',420,25,14),(15,'Product15',520,15,15),
(16,'Product16',180,65,16),(17,'Product17',280,75,17),(18,'Product18',380,85,18),
(19,'Product19',480,95,19),(20,'Product20',580,20,20),
(21,'Product21',110,22,21),(22,'Product22',210,32,22),(23,'Product23',310,42,23),
(24,'Product24',410,52,24),(25,'Product25',510,62,25),(26,'Product26',160,72,26),
(27,'Product27',260,82,27),(28,'Product28',360,92,28),(29,'Product29',460,12,29),
(30,'Product30',560,22,30),(31,'Product31',130,32,31),(32,'Product32',230,42,32),
(33,'Product33',330,52,33),(34,'Product34',430,62,34),(35,'Product35',530,72,35),
(36,'Product36',170,82,36),(37,'Product37',270,92,37),(38,'Product38',370,15,38),
(39,'Product39',470,25,39),(40,'Product40',570,35,40),
(41,'Product41',115,45,41),(42,'Product42',215,55,42),(43,'Product43',315,65,43),
(44,'Product44',415,75,44),(45,'Product45',515,85,45),(46,'Product46',165,95,46),
(47,'Product47',265,20,47),(48,'Product48',365,30,48),(49,'Product49',465,40,49),
(50,'Product50',565,50,50),(51,'Product51',135,60,51),(52,'Product52',235,70,52),
(53,'Product53',335,80,53),(54,'Product54',435,90,54),(55,'Product55',535,100,55),
(56,'Product56',175,15,56),(57,'Product57',275,25,57),(58,'Product58',375,35,58),
(59,'Product59',475,45,59),(60,'Product60',575,55,60),
(61,'Product61',145,65,61),(62,'Product62',245,75,62),(63,'Product63',345,85,63),
(64,'Product64',445,95,64),(65,'Product65',545,20,65),(66,'Product66',185,30,66),
(67,'Product67',285,40,67),(68,'Product68',385,50,68),(69,'Product69',485,60,69),
(70,'Product70',585,70,70),(71,'Product71',125,80,71),(72,'Product72',225,90,72),
(73,'Product73',325,100,73),(74,'Product74',425,15,74),(75,'Product75',525,25,75),
(76,'Product76',155,35,76),(77,'Product77',255,45,77),(78,'Product78',355,55,78),
(79,'Product79',455,65,79),(80,'Product80',555,75,80);


INSERT INTO Customers (CustomerID, Name, Email) VALUES
(1,'Customer1','customer1@mail.com'),(2,'Customer2','customer2@mail.com'),
(3,'Customer3','customer3@mail.com'),(4,'Customer4','customer4@mail.com'),
(5,'Customer5','customer5@mail.com'),(6,'Customer6','customer6@mail.com'),
(7,'Customer7','customer7@mail.com'),(8,'Customer8','customer8@mail.com'),
(9,'Customer9','customer9@mail.com'),(10,'Customer10','customer10@mail.com'),
(11,'Customer11','customer11@mail.com'),(12,'Customer12','customer12@mail.com'),
(13,'Customer13','customer13@mail.com'),(14,'Customer14','customer14@mail.com'),
(15,'Customer15','customer15@mail.com'),(16,'Customer16','customer16@mail.com'),
(17,'Customer17','customer17@mail.com'),(18,'Customer18','customer18@mail.com'),
(19,'Customer19','customer19@mail.com'),(20,'Customer20','customer20@mail.com'),
(21,'Customer21','customer21@mail.com'),(22,'Customer22','customer22@mail.com'),
(23,'Customer23','customer23@mail.com'),(24,'Customer24','customer24@mail.com'),
(25,'Customer25','customer25@mail.com'),(26,'Customer26','customer26@mail.com'),
(27,'Customer27','customer27@mail.com'),(28,'Customer28','customer28@mail.com'),
(29,'Customer29','customer29@mail.com'),(30,'Customer30','customer30@mail.com'),
(31,'Customer31','customer31@mail.com'),(32,'Customer32','customer32@mail.com'),
(33,'Customer33','customer33@mail.com'),(34,'Customer34','customer34@mail.com'),
(35,'Customer35','customer35@mail.com'),(36,'Customer36','customer36@mail.com'),
(37,'Customer37','customer37@mail.com'),(38,'Customer38','customer38@mail.com'),
(39,'Customer39','customer39@mail.com'),(40,'Customer40','customer40@mail.com'),
(41,'Customer41','customer41@mail.com'),(42,'Customer42','customer42@mail.com'),
(43,'Customer43','customer43@mail.com'),(44,'Customer44','customer44@mail.com'),
(45,'Customer45','customer45@mail.com'),(46,'Customer46','customer46@mail.com'),
(47,'Customer47','customer47@mail.com'),(48,'Customer48','customer48@mail.com'),
(49,'Customer49','customer49@mail.com'),(50,'Customer50','customer50@mail.com'),
(51,'Customer51','customer51@mail.com'),(52,'Customer52','customer52@mail.com'),
(53,'Customer53','customer53@mail.com'),(54,'Customer54','customer54@mail.com'),
(55,'Customer55','customer55@mail.com'),(56,'Customer56','customer56@mail.com'),
(57,'Customer57','customer57@mail.com'),(58,'Customer58','customer58@mail.com'),
(59,'Customer59','customer59@mail.com'),(60,'Customer60','customer60@mail.com'),
(61,'Customer61','customer61@mail.com'),(62,'Customer62','customer62@mail.com'),
(63,'Customer63','customer63@mail.com'),(64,'Customer64','customer64@mail.com'),
(65,'Customer65','customer65@mail.com'),(66,'Customer66','customer66@mail.com'),
(67,'Customer67','customer67@mail.com'),(68,'Customer68','customer68@mail.com'),
(69,'Customer69','customer69@mail.com'),(70,'Customer70','customer70@mail.com'),
(71,'Customer71','customer71@mail.com'),(72,'Customer72','customer72@mail.com'),
(73,'Customer73','customer73@mail.com'),(74,'Customer74','customer74@mail.com'),
(75,'Customer75','customer75@mail.com'),(76,'Customer76','customer76@mail.com'),
(77,'Customer77','customer77@mail.com'),(78,'Customer78','customer78@mail.com'),
(79,'Customer79','customer79@mail.com'),(80,'Customer80','customer80@mail.com');


INSERT INTO Orders (OrderID, OrderDate, CustomerID) VALUES
(1,'2023-01-01',1),(2,'2023-01-02',2),(3,'2023-01-03',3),(4,'2023-01-04',4),
(5,'2023-01-05',5),(6,'2023-01-06',6),(7,'2023-01-07',7),(8,'2023-01-08',8),
(9,'2023-01-09',9),(10,'2023-01-10',10),(11,'2023-01-11',11),(12,'2023-01-12',12),
(13,'2023-01-13',13),(14,'2023-01-14',14),(15,'2023-01-15',15),(16,'2023-01-16',16),
(17,'2023-01-17',17),(18,'2023-01-18',18),(19,'2023-01-19',19),(20,'2023-01-20',20),
(21,'2023-01-21',21),(22,'2023-01-22',22),(23,'2023-01-23',23),(24,'2023-01-24',24),
(25,'2023-01-25',25),(26,'2023-01-26',26),(27,'2023-01-27',27),(28,'2023-01-28',28),
(29,'2023-01-29',29),(30,'2023-01-30',30),(31,'2023-01-31',31),(32,'2023-02-01',32),
(33,'2023-02-02',33),(34,'2023-02-03',34),(35,'2023-02-04',35),(36,'2023-02-05',36),
(37,'2023-02-06',37),(38,'2023-02-07',38),(39,'2023-02-08',39),(40,'2023-02-09',40),
(41,'2023-02-10',41),(42,'2023-02-11',42),(43,'2023-02-12',43),(44,'2023-02-13',44),
(45,'2023-02-14',45),(46,'2023-02-15',46),(47,'2023-02-16',47),(48,'2023-02-17',48),
(49,'2023-02-18',49),(50,'2023-02-19',50),(51,'2023-02-20',51),(52,'2023-02-21',52),
(53,'2023-02-22',53),(54,'2023-02-23',54),(55,'2023-02-24',55),(56,'2023-02-25',56),
(57,'2023-02-26',57),(58,'2023-02-27',58),(59,'2023-02-28',59),(60,'2023-03-01',60),
(61,'2023-03-02',61),(62,'2023-03-03',62),(63,'2023-03-04',63),(64,'2023-03-05',64),
(65,'2023-03-06',65),(66,'2023-03-07',66),(67,'2023-03-08',67),(68,'2023-03-09',68),
(69,'2023-03-10',69),(70,'2023-03-11',70),(71,'2023-03-12',71),(72,'2023-03-13',72),
(73,'2023-03-14',73),(74,'2023-03-15',74),(75,'2023-03-16',75),(76,'2023-03-17',76),
(77,'2023-03-18',77),(78,'2023-03-19',78),(79,'2023-03-20',79),(80,'2023-03-21',80);


INSERT INTO Discounts (DiscountID, DiscountAmount, ProductID) VALUES
(1,10,1),(2,15,2),(3,20,3),(4,25,4),(5,30,5),(6,5,6),(7,12,7),(8,18,8),
(9,22,9),(10,8,10),(11,11,11),(12,13,12),(13,14,13),(14,16,14),(15,19,15),
(16,21,16),(17,23,17),(18,9,18),(19,7,19),(20,17,20),(21,10,21),(22,15,22),
(23,20,23),(24,25,24),(25,30,25),(26,5,26),(27,12,27),(28,18,28),(29,22,29),
(30,8,30),(31,11,31),(32,13,32),(33,14,33),(34,16,34),(35,19,35),(36,21,36),
(37,23,37),(38,9,38),(39,7,39),(40,17,40),(41,10,41),(42,15,42),(43,20,43),
(44,25,44),(45,30,45),(46,5,46),(47,12,47),(48,18,48),(49,22,49),(50,8,50),
(51,11,51),(52,13,52),(53,14,53),(54,16,54),(55,19,55),(56,21,56),(57,23,57),
(58,9,58),(59,7,59),(60,17,60),(61,10,61),(62,15,62),(63,20,63),(64,25,64),
(65,30,65),(66,5,66),(67,12,67),(68,18,68),(69,22,69),(70,8,70),(71,11,71),
(72,13,72),(73,14,73),(74,16,74),(75,19,75),(76,21,76),(77,23,77),(78,9,78),
(79,7,79),(80,17,80);


INSERT INTO OrderDetails (DetailID, OrderID, ProductID, Quantity) VALUES
(1,1,1,2),(2,2,2,1),(3,3,3,4),(4,4,4,3),(5,5,5,2),(6,6,6,5),(7,7,7,1),(8,8,8,2),
(9,9,9,3),(10,10,10,4),(11,11,11,2),(12,12,12,3),(13,13,13,5),(14,14,14,2),
(15,15,15,1),(16,16,16,4),(17,17,17,3),(18,18,18,2),(19,19,19,5),(20,20,20,1),
(21,21,21,2),(22,22,22,4),(23,23,23,3),(24,24,24,2),(25,25,25,1),(26,26,26,5),
(27,27,27,4),(28,28,28,3),(29,29,29,2),(30,30,30,1),(31,31,31,4),(32,32,32,2),
(33,33,33,5),(34,34,34,3),(35,35,35,2),(36,36,36,4),(37,37,37,1),(38,38,38,5),
(39,39,39,2),(40,40,40,3),(41,41,41,4),(42,42,42,2),(43,43,43,1),(44,44,44,5),
(45,45,45,2),(46,46,46,3),(47,47,47,4),(48,48,48,2),(49,49,49,5),(50,50,50,1),
(51,51,51,4),(52,52,52,2),(53,53,53,3),(54,54,54,5),(55,55,55,1),(56,56,56,4),
(57,57,57,3),(58,58,58,2),(59,59,59,1),(60,60,60,5),(61,61,61,4),(62,62,62,2),
(63,63,63,3),(64,64,64,1),(65,65,65,5),(66,66,66,2),(67,67,67,4),(68,68,68,3),
(69,69,69,2),(70,70,70,5),(71,71,71,1),(72,72,72,4),(73,73,73,2),(74,74,74,3),
(75,75,75,5),(76,76,76,1),(77,77,77,4),(78,78,78,2),(79,79,79,3),(80,80,80,5);


INSERT INTO Reviews (ReviewID, ProductID, CustomerID, Rating, Comment) VALUES
(1,1,1,5,'Good product'),(2,2,2,4,'Nice quality'),(3,3,3,3,'Average'),
(4,4,4,2,'Not great'),(5,5,5,1,'Bad product'),(6,6,6,5,'Excellent'),
(7,7,7,4,'Worth it'),(8,8,8,3,'Okayish'),(9,9,9,2,'Needs improvement'),
(10,10,10,1,'Disappointed'),(11,11,11,5,'Loved it'),(12,12,12,4,'Good deal'),
(13,13,13,3,'Fine'),(14,14,14,2,'Not as expected'),(15,15,15,1,'Poor'),
(16,16,16,5,'Awesome'),(17,17,17,4,'Great'),(18,18,18,3,'Decent'),
(19,19,19,2,'Low quality'),(20,20,20,1,'Worst'),(21,21,21,5,'Superb'),
(22,22,22,4,'Pretty good'),(23,23,23,3,'Average'),(24,24,24,2,'Could be better'),
(25,25,25,1,'Bad'),(26,26,26,5,'Excellent'),(27,27,27,4,'Satisfied'),
(28,28,28,3,'Okay'),(29,29,29,2,'Below average'),(30,30,30,1,'Not good'),
(31,31,31,5,'Amazing'),(32,32,32,4,'Solid'),(33,33,33,3,'Fine'),
(34,34,34,2,'Weak'),(35,35,35,1,'Terrible'),(36,36,36,5,'Fantastic'),
(37,37,37,4,'Really good'),(38,38,38,3,'Neutral'),(39,39,39,2,'Poor build'),
(40,40,40,1,'Bad'),(41,41,41,5,'Great value'),(42,42,42,4,'Happy'),
(43,43,43,3,'Mediocre'),(44,44,44,2,'Flawed'),(45,45,45,1,'Awful'),
(46,46,46,5,'Impressive'),(47,47,47,4,'Quality'),(48,48,48,3,'Passable'),
(49,49,49,2,'Weak'),(50,50,50,1,'Bad'),(51,51,51,5,'Perfect'),
(52,52,52,4,'Nice'),(53,53,53,3,'Average'),(54,54,54,2,'Cheap'),
(55,55,55,1,'Horrible'),(56,56,56,5,'Amazing'),(57,57,57,4,'Very good'),
(58,58,58,3,'Neutral'),(59,59,59,2,'Poor design'),(60,60,60,1,'Not worth it'),
(61,61,61,5,'Excellent'),(62,62,62,4,'Decent'),(63,63,63,3,'Fine'),
(64,64,64,2,'Weak'),(65,65,65,1,'Worst ever'),(66,66,66,5,'Awesome'),
(67,67,67,4,'Good one'),(68,68,68,3,'Okay'),(69,69,69,2,'Bad finish'),
(70,70,70,1,'Useless'),(71,71,71,5,'Outstanding'),(72,72,72,4,'Nice'),
(73,73,73,3,'Average'),(74,74,74,2,'Poor'),(75,75,75,1,'Terrible'),
(76,76,76,5,'Superb'),(77,77,77,4,'Good choice'),(78,78,78,3,'So-so'),
(79,79,79,2,'Not great'),(80,80,80,1,'Bad experience');


INSERT INTO Shipping (ShippingID, OrderID, ShipDate, DeliveryDate) VALUES
(1,1,'2023-01-03','2023-01-06'),(2,2,'2023-01-04','2023-01-07'),
(3,3,'2023-01-05','2023-01-08'),(4,4,'2023-01-06','2023-01-09'),
(5,5,'2023-01-07','2023-01-10'),(6,6,'2023-01-08','2023-01-11'),
(7,7,'2023-01-09','2023-01-12'),(8,8,'2023-01-10','2023-01-13'),
(9,9,'2023-01-11','2023-01-14'),(10,10,'2023-01-12','2023-01-15'),
(11,11,'2023-01-13','2023-01-16'),(12,12,'2023-01-14','2023-01-17'),
(13,13,'2023-01-15','2023-01-18'),(14,14,'2023-01-16','2023-01-19'),
(15,15,'2023-01-17','2023-01-20'),(16,16,'2023-01-18','2023-01-21'),
(17,17,'2023-01-19','2023-01-22'),(18,18,'2023-01-20','2023-01-23'),
(19,19,'2023-01-21','2023-01-24'),(20,20,'2023-01-22','2023-01-25'),
(21,21,'2023-01-23','2023-01-26'),(22,22,'2023-01-24','2023-01-27'),
(23,23,'2023-01-25','2023-01-28'),(24,24,'2023-01-26','2023-01-29'),
(25,25,'2023-01-27','2023-01-30'),(26,26,'2023-01-28','2023-01-31'),
(27,27,'2023-01-29','2023-02-01'),(28,28,'2023-01-30','2023-02-02'),
(29,29,'2023-01-31','2023-02-03'),(30,30,'2023-02-01','2023-02-04'),
(31,31,'2023-02-02','2023-02-05'),(32,32,'2023-02-03','2023-02-06'),
(33,33,'2023-02-04','2023-02-07'),(34,34,'2023-02-05','2023-02-08'),
(35,35,'2023-02-06','2023-02-09'),(36,36,'2023-02-07','2023-02-10'),
(37,37,'2023-02-08','2023-02-11'),(38,38,'2023-02-09','2023-02-12'),
(39,39,'2023-02-10','2023-02-13'),(40,40,'2023-02-11','2023-02-14'),
(41,41,'2023-02-12','2023-02-15'),(42,42,'2023-02-13','2023-02-16'),
(43,43,'2023-02-14','2023-02-17'),(44,44,'2023-02-15','2023-02-18'),
(45,45,'2023-02-16','2023-02-19'),(46,46,'2023-02-17','2023-02-20'),
(47,47,'2023-02-18','2023-02-21'),(48,48,'2023-02-19','2023-02-22'),
(49,49,'2023-02-20','2023-02-23'),(50,50,'2023-02-21','2023-02-24'),
(51,51,'2023-02-22','2023-02-25'),(52,52,'2023-02-23','2023-02-26'),
(53,53,'2023-02-24','2023-02-27'),(54,54,'2023-02-25','2023-02-28'),
(55,55,'2023-02-26','2023-03-01'),(56,56,'2023-02-27','2023-03-02'),
(57,57,'2023-02-28','2023-03-03'),(58,58,'2023-03-01','2023-03-04'),
(59,59,'2023-03-02','2023-03-05'),(60,60,'2023-03-03','2023-03-06'),
(61,61,'2023-03-04','2023-03-07'),(62,62,'2023-03-05','2023-03-08'),
(63,63,'2023-03-06','2023-03-09'),(64,64,'2023-03-07','2023-03-10'),
(65,65,'2023-03-08','2023-03-11'),(66,66,'2023-03-09','2023-03-12'),
(67,67,'2023-03-10','2023-03-13'),(68,68,'2023-03-11','2023-03-14'),
(69,69,'2023-03-12','2023-03-15'),(70,70,'2023-03-13','2023-03-16'),
(71,71,'2023-03-14','2023-03-17'),(72,72,'2023-03-15','2023-03-18'),
(73,73,'2023-03-16','2023-03-19'),(74,74,'2023-03-17','2023-03-20'),
(75,75,'2023-03-18','2023-03-21'),(76,76,'2023-03-19','2023-03-22'),
(77,77,'2023-03-20','2023-03-23'),(78,78,'2023-03-21','2023-03-24'),
(79,79,'2023-03-22','2023-03-25'),(80,80,'2023-03-23','2023-03-26');


-- ---------------------------------------------------------------- --

desc  OrderDetails;
use EcommerceDB;
-- 1)List all products along with their category names.

select P.Name ,C.CategoryName from products P 
inner join Categories C
on P.CategoryID=C.CategoryID;

-- 2) Show the orders with customer names and order dates.

select  o.orderId,c.Name,o.OrderDate
from orders o
inner join Customers c
on o.CustomerID=c.CustomerID;

-- 3) Display all order details with product names and quantities.

select  o.DetailID,o.orderID,o.ProductID,o.quantity,P.Name,p.StockQuantity from orderdetails o 
inner join products p 
on o.productID=p.productID;

-- 4) Find all customers who have placed an order (with their order IDs).

select c.Name ,o.OrderID from customers c
inner join orders o
on c.CustomerID=o.CustomerID;

-- 5)List all reviews with product names and customer names.

select r.ReviewID,r.Rating,r.Comment,p.Name,c.Name from reviews r 
inner join products p 
on r.productID=p.productID
inner join customers c 
on r.CustomerID=c.customerID ;

-- 6)Show products with their discounts (if any).

select p.name,d.DiscountAmount from products p
left join discounts d 
on p.productID=d.productID;

-- 7)Find all orders along with their shipping details (ship date & delivery date).

select o.orderID,s.shipdate,s.deliverydate from orders o
left join shipping s 
on o.orderID=s.orderID;

-- 8)Display customers who reviewed a product but never ordered it.

select c.name,r.productID,r.Rating,r.Comment  from customers c 
inner	join reviews r 
on c.customerID=r.customerID
where c.customerId  not in (select o.orderID from orders o);

-- 9) List all products that appear in order details but do not have any discount.

select p.name from products p
inner join orderdetails o 
on p.productID=o.productID
where p.productID not in (select d.productID from discounts d );

-- 10)Find customers who placed multiple orders.

select c.name from customers c 
inner join orders o 
on c.customerID=o.customerID
 GROUP BY c.CustomerID, c.Name
HAVING COUNT(o.OrderID) > 1;

-- 11)Show the products with their stock quantity and total ordered quantity.

select p.Name,p.stockQuantity,sum(o.Quantity) from products p 
inner join orderdetails o 
on p.ProductID=o.ProductID
group by p.productID,p.Name,p.stockQuantity;

-- 12) Find all orders where the shipping delivery date is later than 7 days after the order date.

select o.orderID from orders o
inner join shipping s 
on o.OrderID=s.OrderID
where s.DeliveryDate >o.OrderDate + INTERVAL 7 DAY;

-- 13)Show all reviews with customer names and product categories.

select r.ReviewID,r.Rating,c.name from reviews r 
inner join customers  c
on r.CustomerID=c.CustomerID 
inner join products p 
on r.ProductID=p.ProductID
inner join  categories ca
on p.CategoryID=ca.CategoryID;

-- 14)Find the total number of orders placed by each customer.

select c.name,c.CustomerID,count(o.CustomerID) from customers c 
left join orders o 
on c.CustomerID=o.CustomerID
group by c.CustomerID,c.name;

-- 15)Display customers who ordered products from more than 1 category.

select c.name,c.CustomerID from customers c 
inner join orders o 
on c.CustomerID=o.CustomerID
inner join orderdetails R 
on o.OrderID=r.OrderID
inner join products p 
on r.ProductID=p.ProductID
inner join categories ca 
on p.CategoryID=ca.CategoryID
group by c.CustomerID,c.name 
having count(DISTINCT ca.CategoryID)>1;

-- 16) Find orders that contain discounted products.

select o.OrderID,p.name,d.DiscountAmount from orderdetails o 
inner join products p 
on o.ProductID=p.ProductID
inner join discounts d 
on p.ProductID=d.ProductID;

-- 17)List the customers and the products they ordered, including quantity.

select c.name,p.name,d.Quantity from customers c 
inner join orders o  
on c.CustomerID=o.CustomerID
inner join orderdetails d
on o.OrderID=d.OrderID
inner join products p 
on d.ProductID=p.ProductID;

-- 18) Show the highest rated product (with average rating) and its category.

SELECT p.Name AS ProductName,c.CategoryName,AVG(r.Rating) AS AvgRating FROM products p
INNER JOIN categories c 
ON p.CategoryID = c.CategoryID
INNER JOIN reviews r 
ON p.ProductID = r.ProductID
GROUP BY p.ProductID, p.Name, c.CategoryName
ORDER BY AvgRating DESC
LIMIT 1;

-- 19) Find customers who placed an order but did not leave any review.

select c.name from customers c 
left join orders o 
on c.customerID = o.customerID
left join reviews r 
on o.CustomerID = r.CustomerID
where r.customerID is null;

-- 20) List all products never ordered by any customer.

select p.productID,p.name from products p 
left join orderdetails o 
on p.ProductID = o.ProductID 
where o.ProductID is null; 


-- 21)Find the most expensive product in each category.

select p.name,p.price from products p
where  price = (select max(p2.price) from products p2 where p.CategoryID=p2.CategoryID);

-- 22) Display customers who ordered the cheapest product.

select c.name from customers c 
where c.customerID in(
 select o.customerID from orders o 
where o.orderID in (
select d.orderID from orderdetails d 
where d.productID in (
select p.productID from products p 
where price=(select min(p.price) from products p))));

-- 23)Find the product(s) with the maximum discount.

select p.Name from products p 
where p.productID in (
select d.productID from discounts d
where d.discountAmount =(
select max(d.DiscountAmount) from discounts));

-- 24)List customers who have not placed any order.

select c.name from customers c 
where c.customerID  not in (
select o.customerID from orders o
);

-- 25)Show all products whose price is higher than the average product price.

select name from products  
where price  > (select avg(price)from products);

-- 26)Find customers who placed more than 3 orders.

select c.name from customers c 
where 3 < (
select count(*) from orders o
where c.customerID=o.customerID
);

-- 27)Display products that received a rating higher than the average rating of all products.

select p.name from products p 
where p.productID in (
select r.productID from reviews r
where r.Rating >(select avg(r2.rating) from reviews r2 )
);

-- 28)Find customers who ordered all products from Category 1.

select c.name from customers c 
where CustomerID in (
select o.CustomerID from orders o 
where o.orderID in (
select d.OrderID from orderdetails d 
where d.ProductID in (
select p.ProductID from products p 
where p.CategoryID =1)));

-- 29) Show products whose stock quantity is less than the total quantity ordered.

select p.Name from products p 
where stockQuantity < (select sum(o.Quantity) from orderdetails o
 where p.productID = o.ProductID);
 
-- 30)List customers who ordered at least one product but never received a discount.

select c.name from  customers c 
where CustomerID in (
select o.customerID from orders o 
where o.orderID in (
select d.orderID from orderdetails d 
where d.productID not in (
select ProductID from discounts i 
where DiscountAmount is not Null)));

-- 31)Find orders that contain more than 3 products.

select o.OrderID from orders o 
where o.OrderID in (
select d.OrderID from orderdetails d 
group by d.OrderID
having count(d.ProductID) > 3);

-- 32)Show customers who have placed an order but their shipping has not been done yet.

select c.Name from customers c 
where c.customerID in (
select o.customerID from orders o 
where o.orderID  not in (
select s.orderID from shipping s where s.ShipDate is not NULL) );

-- 33)Find the first product with the lowest average rating.

SELECT p.Name
FROM products p
WHERE p.ProductID = (
select r.ProductID from reviews r 
group by r.productID
order by avg(r.rating) asc
limit 1
);

-- 34)Display customers who gave the maximum rating to any product.

select c.name from customers c 
where c.CustomerID in (
select r.CustomerID from reviews r 
where r.Rating =(
select max(r2.Rating) from reviews r2));

-- 35) Find all orders where the order total (price × quantity − discount) exceeds 10,000.

select o.orderID from Orders o
where o.orderID in (
select s.orderID from orderdetails s 
inner join  products p
on s.ProductID=p.ProductID
left join discounts d
on p.ProductID=d.ProductID
group by s.OrderID
having sum((p.Price * s.Quantity)-d.DiscountAmount) >10000
);

-- 36)Find the product with the highest price.

select p.name from products p 
where p.price =(select max(p2.price) from products p2);

-- 37)List customers who have never placed an order.

select c.Name from customers c 
where c.CustomerID  in (select o.customerID from orders o  where  o.orderID is null );

-- 38)Find products that are cheaper than the average product price.

select p.name from products p 
where price < (select avg(p2.price) from products p2);

-- 39)List products that have never been ordered.
select p.Name from products p
where p.ProductID  not in  ( select o.ProductID from orderdetails o );

-- 40)Find the orders placed on the latest order date.

select o.OrderID from orders o where o.orderDate =(
select MAX(o2.OrderDate) from orders o2);

-- 41) String To Date 

select str_to_date('22-JULY-2025','%d-%M-%Y') as C; 

-- 42)Find the lowest stock product

SELECT ProductID, Name, StockQuantity
FROM Products
ORDER BY StockQuantity ASC
LIMIT 1;


-- 43)Find the top 3 selling products

SELECT ProductID, SUM(Quantity) AS TotalSold
FROM OrderDetails
GROUP BY ProductID
ORDER BY TotalSold DESC
LIMIT 3;


-- 44) Print current date and order date 

select current_date(),o.OrderDate from orders o ;

-- 45)Find the minimum stock quantity among products.
select p.productID,p.StockQuantity from products p
group by p.productID
order by p.StockQuantity asc 
limit 1
;

-- 46) Display the total sales amount (Price × Quantity) from OrderDetails.

select sum(p.price*o.Quantity) as totalsales from orderDetails o 
inner join products p
on o.ProductID=p.ProductID;

-- 47)Find the total number of products

SELECT COUNT(*) AS TotalProducts
FROM Products;


-- 48)Count how many products have price greater than 500.
select ProductID,Price from products 
where price >500;

-- 49)Show the earliest order date from Orders table.

select max(orderdate) from orders;

-- 50)Show top 5 most expensive products.

select productID,price from products
 order by price desc
 limit 5;