/**
 * One_script_for_all.sql - Holds all the scripts in this directory
 *
 * Description: All scripts are put here for easier execution.
 * If the last modified date is later than any of the files, update it,
 * or run the individual scripts in the order provided to by the README
 * at the base of this directory.
 *
 * Files (SQL Scripts) copied here:
 * 1. Mkulima_database.sql
 * 2. Inserting_regions.sql
 * 3. Inserting_county.sql
 * 4. Inserting_crops.sql
 * 5. Inserting_seeds.sql
 * 6. Inserting_fertilizer.sql
 * 7. Inserting_crop_fertilizer.sql
 *
 * Last Updated: 23/03/2024 at 03:26 AM by Josphat Kahihia
 * Up to date: Yes[~] No[]
 */

/**
 * Mkulima_database.sql - Creates the tables and defines the associations
 *
 * IMPORTANT!!: Before running this query's first create a database called mkulima
 * The query command is: CREATE DATABASE `mkulima`; note that these (``) are
 * backticks and not single quotes ('').
 * The query's below creates 8 tables namely: Region, County, Crop, Crop_fertilizer,
 * Fertilizer, Users, Seeds and finally: Crop_farm_procedure
 */
CREATE TABLE IF NOT EXISTS `Region`(
    `Region_id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Region_name` VARCHAR(255) NOT NULL
);
CREATE TABLE IF NOT EXISTS `County`(
    `County_id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `County_name` VARCHAR(255) NOT NULL,
    `Region_id` BIGINT NOT NULL,
    `Min_temp` DOUBLE NOT NULL,
    `Max_temp` DOUBLE NOT NULL,
    `Avg_rainfall` DOUBLE NOT NULL,
    `Soil_type` VARCHAR(255) NOT NULL,
    `Altitude` DOUBLE NOT NULL
);
CREATE TABLE IF NOT EXISTS `Crop`(
    `Crop_id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Crop_name` VARCHAR(255) NOT NULL,
    `Min_temp` DOUBLE NOT NULL,
    `Max_temp` DOUBLE NOT NULL,
    `Avg_rainfall` DOUBLE NOT NULL
);
CREATE TABLE IF NOT EXISTS `Crop_fertilizer`(
    `Crop_fertilizer_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `First_phase` VARCHAR(255) NOT NULL,
    `Second_phase` VARCHAR(255) NOT NULL,
    `Third_phase` VARCHAR(255) NULL,
    `Crop_id` BIGINT NOT NULL
);
CREATE TABLE IF NOT EXISTS `Fertilizer`(
    `Fertilizer_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Fertilizer_name` VARCHAR(255) NOT NULL
);
CREATE TABLE IF NOT EXISTS `Users`(
    `User_id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `First_name` VARCHAR(255) NOT NULL,
    `Password` VARCHAR(255) NOT NULL,
    `Email` BIGINT NOT NULL
);
CREATE TABLE IF NOT EXISTS `Seeds`(
    `Seed_id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Seed_name` VARCHAR(255) NOT NULL,
    `Crop_id` BIGINT NOT NULL,
    `Distinct_characteristic` VARCHAR(255) NOT NULL
);
CREATE TABLE IF NOT EXISTS `Crop_farm_procedure`(
    `Crop_procedure_id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Procedure_file` VARCHAR(255) NULL,
    `Crop_id` BIGINT NOT NULL
);
ALTER TABLE `County`
ADD FOREIGN KEY (`Region_id`) REFERENCES Region(`Region_id`);
ALTER TABLE `Crop_fertilizer`
ADD FOREIGN KEY (`Crop_id`) REFERENCES Crop(`Crop_id`);
ALTER TABLE `seeds`
ADD FOREIGN KEY (`Crop_id`) REFERENCES Crop(`Crop_id`);
ALTER TABLE `Crop_farm_procedure`
ADD FOREIGN KEY (`Crop_id`) REFERENCES Crop(`Crop_id`);

/**
 * Inserting_regions.sql - Inserts data into region table
 *
 */
INSERT INTO region (Region_id, Region_name)
VALUES
(1, 'nyanza'),
(2, 'coastal'),
(3, 'Central'),
(4, 'north eastern'),
(5, 'rift valley'),
(6, 'eastern'),
(7, 'western');

/**
 * Inserting_county.sql - Inserts data into county table
 *
 * IMPORTANT!!: Before inserting data into county table, make sure that you first
 * insert data into region table because this table has
 * foreign region_id attribute key
 */
INSERT INTO county (County_id, County_name, Region_id, Min_temp, Max_temp, Avg_rainfall, Soil_type, Altitude)
VALUES
(1, 'homabay', 1, 16.00, 31.00, 1500.00, 'black cotton', 1131.00),
(2, 'kisii', 1, 15.00, 30.00, 1500.00, 'red volcanic', 1694.13),
(3, 'kisumu', 1, 17.50, 30.50, 1350.00, 'black cotton', 1187.83),
(4, 'migori', 1, 24.00, 31.00, 1200.00, 'black cotton', 1393.59),
(5, 'nyamira', 1, 10.10, 28.70, 1800.00, 'red volcanic', 1936.83),
(6, 'siaya', 1, 17.00, 27.00, 1800.00, 'black cotton', 1318.43),
(7, 'kilifi', 2, 24.00, 29.07, 102.11, 'sandy clay', 51.09),
(8, 'kwale', 2, 24.06, 30.09, 63.81, 'sandy clay', 382.14),
(9, 'lamu', 2, 25.27, 29.58, 112.89, 'sand/peat', 20.55),
(10, 'mombasa', 2, 24.06, 30.09, 63.81, 'silty clay', 22.74),
(11, 'taita taveta', 2, 19.48, 29.38, 144.51, 'clay/sand', 796.21),
(12, 'tana river', 2, 24.04, 33.66, 57.99, 'red soil', 100.90),
(13, 'Nyeri', 3, 10.90, 28.00, 1800.00, 'red soil', 1750.00),
(14, 'Nyandarua', 3, 11.41, 23.90, 1500.00, 'Andosols', 2667.10),
(15, 'kirinyanga', 3, 14.00, 25.11, 1900.00, 'Red soils', 1158.81),
(16, 'kiambu', 3, 14.78, 24.90, 1200.00, 'plateau soils', 1683.00),
(17, 'muranga', 3, 23.00, 34.00, 1200.00, 'red volcanic', 1255.00),
(18, 'marsabit', 6, 15.00, 26.00, 695.00, 'organic matter', 1865.00),
(19, 'mandera', 4, 23.00, 34.00, 91.70, 'reddish soils', 1200.00),
(20, 'samburu', 5, 19.00, 31.00, 306.10, 'young volcanic', 1230.00),
(21, 'west pokot', 5, 24.00, 29.00, 127.70, 'sandy clay', 1500.00),
(22, 'wajir', 4, 24.24, 33.35, 245.00, 'clay loams', 1200.00),
(23, 'garissa', 4, 23.50, 35.40, 375.00, 'dark red loams', 151.00),
(24, 'Baringo', 5, 10.00, 30.00, 600.00, 'Volcanic soil', 1861.50),
(25, 'Bomet', 5, 10.00, 25.00, 1500.00, 'Volcanic soil', 1900.00),
(26, 'Elgeyo Marakwet', 5, 12.00, 30.00, 1000.00, 'Volcanic soil', 2500.00),
(27, 'Kajiado', 5, 15.00, 30.00, 650.00, 'Volcanic soil', 1600.00),
(28, 'Kericho', 5, 10.00, 25.00, 1750.00, 'Volcanic soil', 2100.00),
(29, 'Nandi', 5, 10.00, 30.00, 1400.00, 'Volcanic soil', 1850.00),
(30, 'Laikipia', 5, 5.00, 20.00, 1000.00, 'Volcanic soil', 2200.00),
(31, 'Nakuru', 5, 10.00, 30.00, 1050.00, 'Volcanic soil', 2400.00),
(32, 'Uashin Gishu', 5, 11.52, 23.81, 220.00, 'Andosols', 2164.67),
(33, 'Meru', 6, 12.00, 25.00, 1000.00, 'Volcanic soil', 1400.00),
(34, 'Isiolo', 6, 10.00, 30.00, 350.00, 'volcanic soil', 1150.00),
(35, 'Machakos', 6, 11.00, 25.00, 600.00, 'Rocky soil', 1250.00),
(36, 'Tharaka Nithi', 6, 10.00, 25.00, 1000.00, 'volcanic soil', 1500.00),
(37, 'Makueni', 6, 10.00, 25.00, 600.00, 'loamy soil', 1250.00),
(38, 'Embu', 6, 14.37, 25.11, 147.98, 'alluvial', 515.00),
(39, 'Vihiga', 7, 15.00, 30.00, 1600.00, 'volcanic soil', 1700.00),
(40, 'Busia', 7, 15.00, 30.00, 1600.00, 'Red soil', 1700.00),
(41, 'Trans Nzoia', 5, 12.33, 25.38, 1600.00, 'Andosols', 1700.00),
(42, 'Turkana', 5, 12.00, 38.00, 382.50, 'volcanic soil', 1000.00),
(43, 'Kakamega', 7, 15.00, 30.00, 1600.00, 'Red soil', 1700.00),
(44, 'Bugoma', 7, 15.00, 30.00, 1600.00, 'volcanic soil', 1700.00),
(45, 'Kitui', 6, 15, 30, 550, 'sand clay', 1000),
(46, 'Narok', 5, 12, 25, 1000, 'Volcanic soil', 2000);

/**
 * Inserting_crops.sql - Inserts data into crop table
 *
 */
INSERT INTO crop (Crop_id, Crop_name, Min_temp, Max_temp, Avg_rainfall)
VALUES
(1, 'maize', 10.00, 20.00, 400.00),
(2, 'wheat', 15.00, 25.00, 1000.00),
(3, 'rice', 21.00, 37.00, 1200.00),
(4, 'coffee', 10.00, 30.00, 1500.00),
(5, 'tea', 20.00, 27.00, 2200.00),
(6, 'sugarcane', 25.00, 35.00, 2000.00),
(7, 'cotton', 21.00, 30.00, 1000.00),
(8, 'bananas', 10.00, 40.00, 2000.00),
(9, 'beans', 18.00, 27.00, 1200.00),
(10, 'pyrethrum', 15.00, 20.00, 1000.00),
(11, 'sweet potatoes', 26.00, 30.00, 800.00),
(12, 'cassava', 25.00, 29.00, 800.00),
(13, 'coconut', 21.00, 35.00, 1750.00),
(14, 'mangoes', 24.00, 27.00, 750.00),
(15, 'cowpeas', 20.00, 34.00, 450.00),
(16, 'pineapple', 18.00, 30.00, 1100.00),
(17, 'pawpaw', 16.00, 30.00, 1000.00),
(18, 'irish potatoes', 16.00, 20.00, 1100.00),
(19, 'Sukuma wiki', 17.00, 30.00, 750.00),
(20, 'Tomatoes', 20.00, 25.00, 600.00),
(21, 'Avocado', 20.00, 24.00, 1500.00),
(22, 'macadamia', 25.00, 35.00, 1000.00),
(23, 'carrots', 15.00, 20.00, 500.00),
(24, 'Sisal', 20.00, 32.00, 650.00),
(25, 'watermelons', 21.00, 32.00, 600.00),
(26, 'onion bulb', 10.00, 35.00, 650.00),
(27, 'sorghum', 10.00, 30.00, 300.00),
(28, 'oranges', 15.50, 29.00, 930.00),
(29, 'millet', 15.00, 30.00, 350.00),
(30, 'soyabeans', 17.00, 25.00, 400.00),
(31, 'corn', 15.50, 30.00, 500.00),
(32, 'greengrams', 20.00, 32.00, 650.00),
(33, 'passion fruits', 15.00, 28.00, 1500.00),
(34, 'cabbages', 20.00, 33.00, 500.00),
(35, 'Barley', 12.00, 32.00, 1000.00),
(36, 'Pegion Peas', 13.00, 30.00, 800.00),
(37, 'Mirra', 12.00, 30.00, 1200.00);

/**
 * Inserting_seeds.sql - Inserts data into seeds table
 *
 * IMPORTANT!!: Before Inserting data into this table, make sure you have
 * inserted data into crop table because this table 
 * has foreign crop_id attribute key
 */
INSERT INTO seeds (Seed_id, Seed_name, Crop_id, Distinct_characteristic)
VALUES
(1, 'H624', 1, 'round shape, 75-85 days maturity'),
(2, 'H614', 1, 'tolerant to weevil attack, blight and leaf diseases'),
(3, 'H512', 1, 'highly prolific'),
(4, 'durum', 2, 'kernels are amber coloured'),
(5, 'robin', 2, 'early maturity, widely adapted'),
(6, 'kenya eagle', 2, 'susceptible to yellow rust, stronger stem'),
(7, 'nerica 10', 3, 'high aromatic, early maturing long grain'),
(8, 'nerica 11', 3, 'good tolerance to blast'),
(9, 'nerica 1', 3, 'aromatic, medium tolerance'),
(10, 'SL28', 4, 'bears after two years, high yield'),
(11, 'SL34', 4, 'adapted to high altitude areas'),
(12, 'K7', 4, 'tall and wide spread leaves, mild acidity and subtle'),
(13, 'chica', 5, 'small erect leaves'),
(14, 'assam', 5, 'broad leaves'),
(15, 'assamica', 5, 'medium sized leaves'),
(16, 'co 421', 6, 'susceptible to mosaic virus, 20-22 months to mature'),
(17, 'co 617', 6, 'resistant to mosaic virus, 17-19 months to mature'),
(18, 'N14', 6, 'green yellow stalks'),
(19, 'hart 89M', 7, 'production potential of 2500kg/ha'),
(20, 'KSA8M', 7, 'high production'),
(21, 'grand naine', 8, 'disease resistant, fast growth, high yield'),
(22, 'valery', 8, 'sweet taste'),
(23, 'FH1A17', 8, 'suitable for small scale farmers'),
(24, 'rose coco', 9, 'large cream coloured with red dots'),
(25, 'black beans', 9, 'high nutritional value'),
(26, 'yellow beans', 9, 'large kidney shaped seeds'),
(27, 'p4', 10, 'suitable in places with high altitude'),
(28, 'k128', 10, 'high, medium or low altitude'),
(29, 'k235', 10, 'high, medium or low altitude'),
(30, 'garnet sweet potato', 11, 'dusty brown maroon coloured'),
(31, 'Hannah sweet potato', 11, 'cream coloured'),
(32, 'Japanese sweet potato', 11, 'reddish purple skin'),
(33, 'KME 1', 12, 'high yield, 6 months to mature'),
(34, 'Tajirika', 12, 'resistant to cassava mosaic virus'),
(35, 'KME 3', 12, 'suitable for various soil types'),
(36, 'east African tall', 13, 'lifespan up to 80 years, higher oil content'),
(37, 'dwarf', 13, '40 years lifespan'),
(38, 'apple', 14, 'rich yellow to red colour'),
(39, 'kent', 14, 'greenish yellow skin'),
(40, 'tommy atkins', 14, 'numerous white lenticels'),
(41, 'M66', 15, 'semi-spreading variety, flowers 55-60 days after germination'),
(42, 'K80', 15, '50 days to flower'),
(43, 'KVU 27-1', 15, 'moderately resistant to pests and diseases'),
(44, 'smooth cayenne', 16, 'high sugar and acid content'),
(45, 'Hill', 16, 'no slips but numerous suckers'),
(46, 'giant kew', 16, 'large fruit weighing 2.75 - 4.5kg'),
(47, 'calina papaya', 17, 'purely dwarf, large and oval'),
(48, 'solo sunrise', 17, 'bears at 6 months up to over 60 fruits'),
(49, 'red lady', 17, 'long productive lifespan'),
(50, 'rooster', 18, 'oval shape with red skin'),
(51, 'kerrs pink', 18, 'irregular round shape with pink skin'),
(52, 'british queens', 18, 'great flavor and flavory flesh'),
(53, 'premier kale', 19, 'high yield, delicious, nutritious green leaves'),
(54, 'red russian', 19, 'good for salads, best known by gardeners'),
(55, 'kinale kale', 19, 'high yielding, 3 months maturity'),
(56, 'rio grande', 20, 'fresh market and processing variety, 75-85 days maturity'),
(57, 'assila f1', 20, 'good keeping quality and transportability'),
(58, 'kilele f1', 20, 'suitable for drier or humid areas, medium to early maturing'),
(59, 'hass', 21, 'available all year, rich nutty flavor'),
(60, 'fuerte', 21, 'medium seed sized, rich oily creamy texture'),
(61, 'jumbo', 21, 'used as rootstocks'),
(62, 'MRG 20', 22, 'white flowers, rounded leaves without apex'),
(63, 'EMB 1', 22, 'white flowers, curly leaves with few spines'),
(64, 'KRG 15', 22, 'leaves with moderate spines with apex'),
(65, 'nantaise', 23, 'thin surface and easier to scar, high sugar content'),
(66, 'chantenay', 23, 'short, blunt tipped, deep orange color'),
(67, 'samson', 23, 'seeds are produced in the second year'),
(68, 'sisalana', 24, 'leaves yield more fibre'),
(69, 'natale', 24, 'leaves yield less fibre'),
(70, 'vergross', 24, 'leaves yield more fibre'),
(71, 'picnic', 25, 'large, red flesh'),
(72, 'seedless', 25, 'tiny undeveloped seeds'),
(73, 'yellow/orange', 25, 'round, both seedless and seeded'),
(74, 'red onion', 26, 'spanish red skin, white flesh tangled with red'),
(75, 'white onion', 26, 'color of thin skin and white flesh'),
(76, 'red creole', 26, 'deep red color'),
(77, 'serena', 27, '3-4 months maturity, drought resistant'),
(78, 'E1291', 27, '5 months maturity period'),
(79, 'gadam', 27, '3 months maturity period'),
(80, 'navel', 28, 'most popular, high vitamin C'),
(81, 'blood', 28, 'easy to peel'),
(82, 'tangerine', 28, 'deep orange skin and flesh'),
(83, 'finger millet', 29, 'bulk density, oil absorption capacity'),
(84, 'sorghum millet', 29, 'rich in vitamins and minerals, swelling power'),
(85, 'pearl millet', 29, 'protein rich, high fibre'),
(86, 'pioneer breed A series', 30, 'highest yielding'),
(87, 'DPSB19', 30, 'early maturity, high protein content'),
(88, 'R15 2422', 30, 'drought resistant'),
(89, 'flour', 31, 'yellow maize, high yield potential'),
(90, 'pop', 31, 'high in fibre, low energy density'),
(91, 'sweet', 31, 'sold fresh, frozen, canned as vegetable'),
(92, 'KAT 00301', 32, 'maturity period between 60-70 days; shortest maturity period'),
(93, 'KAT00309', 32, 'maturity period between 65-75 days; longer maturity period'),
(94, 'KAT 00308', 32, 'maturity period between 60-75 days'),
(95, 'purple passion fruits', 33, 'less acid, rich in aroma'),
(96, 'yellow passion fruits', 33, 'debated, hybrid'),
(97, 'sweet granadilla', 33, 'good source of vitamin A, C, K'),
(98, 'F1 kimodo', 34, 'hybrid variety, best in rainy season'),
(99, 'red cabbage', 34, 'has a vibrant purple hue'),
(100, 'green boy', 34, 'best for hot weather'),
(101, 'Hordeum distichum', 35, 'used in malting process for brewing, has two rows of kernels'),
(102, 'Hordeum vulgare', 35, 'high protein content'),
(103, 'Hulless barley', 35, 'easy to process, easy for consumption'),
(104, 'Malting barley', 35, 'high enzyme content, uniform kernel size'),
(105, 'Tropical pigeon peas', 36, 'resistance to pest and diseases, well adapted to hot and humid climates'),
(106, 'short duration', 36, 'shorter maturity period, quicker harvest cycles'),
(107, 'high yielding', 36, 'large pod size, high seed yield per plant'),
(108, 'dual purpose', 36, 'used as fodders'),
(109, 'Kenyan miraa', 37, 'has high stimulating effects'),
(110, 'Yemeni miraa', 37, 'enriched in good potency and flavours');

/**
 * Inserting_fertilizer.sql - Inserts data into fertilizer table
 *
 * IMPORTANT!!: Before Inserting data into this table, make sure you have inserted data
 * into crop table because this table has foreign crop_id attribute key
*/
INSERT INTO fertilizer (Fertilizer_id, Fertilizer_name)
VALUES
(1, 'Phosphate'),
(2, 'nitrogen'),
(3, 'zinc'),
(4, 'urea'),
(5, 'TSP'),
(6, 'nitrate'),
(7, 'Ammonium'),
(8, 'sulfate'),
(9, 'potasium'),
(10, 'sulphate'),
(11, 'Optimizer'),
(12, 'Calcium'),
(13, 'DAP'),
(14, 'SSP'),
(15, 'potash'),
(16, 'potassium'),
(17, 'NPK'),
(18, 'CAN'),
(19, 'phosphorus'),
(20, 'Phosphorus'),
(21, 'Potassium'),
(22, 'Nitrogen'),
(23, 'Nitrate'),
(24, 'Nitrate'),
(25, 'sulphate'),
(26, 'N+K2O'),
(27, 'murate of potash'),
(28, 'Ammonium phosphate'),
(29, 'Ammonium Sulphate'),
(30, 'Ammonium nitrate');

/**
 * Inserting_crop_fertilizer.sql - Inserts data into crop_fertilizer table
 * 
 * IMPORTANT!!: Before Inserting data into this table, make sure that you have
 * inserted data into crop table because this table has
 * foreign crop_id attribute key
 */
INSERT INTO crop_fertilizer (Crop_fertilizer_id, First_phase, Second_phase, Third_phase, Crop_id)
VALUES
(1, 22, 21, 19, 1),
(2, 21, 22, 19, 2),
(3, 29, 22, 9, 3),
(4, 15, 19, 2, 4),
(5, 13, 15, 22, 5),
(6, 22, 10, NULL, 6),
(7, 22, 19, 21, 7),
(8, 21, 19, 22, 8),
(9, 18, 19, NULL, 9),
(10, 5, 14, NULL, 10),
(11, 19, 21, NULL, 11),
(12, 4, 5, 13, 12),
(13, 17, 4, 27, 13),
(14, 18, 21, NULL, 14),
(15, 5, 14, 9, 15),
(16, 13, 6, NULL, 16),
(17, 17, 22, NULL, 17),
(18, 22, 18, 11, 18),
(19, 3, 18, 2, 19),
(20, 20, 18, 18, 20),
(21, 22, 19, 21, 21),
(22, 22, 9, 12, 22),
(23, 21, 7, NULL, 23),
(24, 22, 19, 21, 24),
(25, 22, 21, 19, 25),
(26, 17, 22, 22, 26),
(27, 19, 2, 3, 27),
(28, 22, 29, 28, 28),
(29, 4, 30, 9, 29),
(30, 22, 19, 21, 30),
(31, 26, 22, 2, 31),
(32, 22, 3, 19, 32),
(33, 22, 20, 21, 33),
(34, 22, 19, 21, 34),
(35, 22, 19, 15, 35),
(36, 22, 19, 21, 36),
(37, 22, 19, 21, 37);