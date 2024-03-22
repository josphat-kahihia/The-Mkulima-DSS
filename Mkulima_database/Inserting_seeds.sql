-- Inserts data into seeds table
/*Before Inserting data into this table
Make sure you have inserted data into crop table because this table has foreign crop_id attribute key
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