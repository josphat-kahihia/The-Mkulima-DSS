# Mkulima Database
## Database Creation Procedure
- Install Xampp server or any database server
- Run the server and start *Apache* and *mySql*
- Open your favorite browser and search *localhost*
- Move/click to phpMyAdmin page
- Open the console located at the bottom of the page
- Create a database called mkulima
```sql
CREATE DATABASE mkulima;
```
- Select the database mkulima from the list menu at the left of the page
- move/click to import menu at the top menu of the page
- Import the file [Mkulima database.sql](Mkulima_database.sql)
---
## Insertion of data procedure
- Run the server and start *Apache* and *mySql*
- Open your favorite browser and search *localhost*
- Move/click to phpMyAdmin page
- Select the database mkulima from the list menu at the left of the page
- select the table you want to insert data, for example table called *region*
- move/click to import menu at the top menu of the page
- Import the file [Inserting Regions data](Inserting_regions.sql)
---
## Data Definition Language
Make sure first create a database called **mkulima**
```sql
CREATE DATABASE mkulima;
```
[Mkulima database.sql](Mkulima_database/Mkulima_database.sql) 
This file creates the tables in the mkulima database to be used in the system.
## Data Manipulation Language
1. [Inserting County data](Mkulima_database/Inserting_county.sql)
This file inserts data in the county table
2. [Inserting Crop fertilizer data](Mkulima_database/Inserting_crop_fertilizer.sql)
This file inserts data in the crop fertilizer table
3. [Inserting Crops data](Mkulima_database/Inserting_crops.sql)
This file inserts data in the crops table
4. [Inserting Fertilizer data](Mkulima_database/Inserting_fertilizer.sql)
This file inserts data in the fertilizer table
5. [Inserting Regions data](Mkulima_database/Inserting_regions.sql)
This file inserts data in the regions table
6. [Inserting Seeds data](Mkulima_database/Inserting_seeds.sql)
This file inserts data in the seeds table