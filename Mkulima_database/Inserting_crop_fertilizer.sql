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