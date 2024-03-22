/* Before running this query's first create a database called mkulima
The query command is 
CREATE DATABASE `mkulima`;
Note
`` This are backticks and not single quotes
*/
-- The query's below creates 8 tables namely
/*
Region
County
Crop
Crop_fertilizer
Fertilizer
Users
Seeds
Crop_farm_procedure
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