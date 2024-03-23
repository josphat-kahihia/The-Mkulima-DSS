/**
 * Inserting_county.sql - Inserts data into county table
 *
 * IMPORTANT!!: Before inserting data into county table, make sure that you first
 * insert data into region table because this table has
 * foreign region_id attribute key
 */
USE mkulima;
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