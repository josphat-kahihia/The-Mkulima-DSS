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
- Import the file **Mkulima_database.sql**
---
## Insertion of data procedure
- Run the XAMPP server and start *Apache* and *mySql*
- Open your favorite browser and search *localhost*
- Move/click to phpMyAdmin page
- Select the database mkulima from the list menu at the left of the page
- select the table you want to insert data, for example table called *region*
- move/click to import menu at the top menu of the page
- Import the file [Inserting Regions data](Inserting_regions.sql)
---
## Data Definition Language
Make sure to first create a database called **mkulima**
```sql
CREATE DATABASE mkulima;
```
**Mkulima_database.sql**
This file creates the tables in the mkulima database to be used in the system.
## Data Manipulation Language
1. **Inserting_county.sql**
This file inserts data in the county table
2. **Inserting_crop_fertilizer.sql**
This file inserts data in the crop fertilizer table
3. **Inserting_crops.sql**
This file inserts data in the crops table
4. **Inserting_fertilizer.sql**
This file inserts data in the fertilizer table
5. **Inserting_regions.sql**
This file inserts data in the regions table
6. **Inserting_seeds.sql**
This file inserts data in the seeds table