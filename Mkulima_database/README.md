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
## Insertion of data procedure (manually)
- Run the XAMPP server and start *Apache* and *mySql*
- Open your favorite browser and search *localhost*
- Move/click to phpMyAdmin page
- Select the database mkulima from the list menu at the left of the page
- select the table you want to insert data, for example table called *region*
- move/click to import menu at the top menu of the page
- Import the file [Inserting Regions data](Inserting_regions.sql)

## Insertion of data procedure (using One_script_for_all_py.sql)
- In a terminal of your choice, run:
```python
python update_Osfa.py
```
- Enter your name as prompted
- Use the One_script_for_all_py.sql (note the '_py' extension, as there are two)\
 import SQL using the script

## Insertion of data procedure (using One_script_for_all.sql)
- NOTE: Read instructions in the first comment block first!
- Use the One_script_for_all.sql to import SQL using the script
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