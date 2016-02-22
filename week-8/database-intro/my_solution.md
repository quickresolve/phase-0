
#8.4 Introduction to Database Schemas and SQL

##Reflections

####What are databases for?

Databases are for organizing relational information in a table format that is easily accessible, sortable, and manipulated.

####What is a one-to-many relationship?

In a one-to-many relationship, each row in the related to table can be related to many rows in the relating table. This allows frequently used information to be saved only once in a table and referenced many times in all other tables. In a one-to-many relationship between Table A and Table B, each row in Table A is linked to 0, 1 or many rows in Table B. The number of rows in Table A is almost always less than the number of rows in Table B.

####What is a primary key? What is a foreign key? How can you determine which is which?

Primary key uniquely identify a record in the table. Primary Key can't accept null values. By default, Primary key is clustered index and data in the database table is physically organized in the sequence of clustered index. We can have only one Primary key in a table.

Foreign key is a field in the table that is primary key in another table. Foreign key can accept multiple null value. Foreign key do not automatically create an index, clustered or non-clustered. You can manually create an index on foreign key. We can have more than one foreign key in a table.

It is almost always good design to define a primary key for all tables. In some cases, it is not possible to identify a column to be used as the primary key. In such cases, most designers create a dummy column which simply contains a running number to make each and every record in the table unique

####How can you select information out of a SQL database? What are some general guidelines for that?

The SQL USE statement is used to select any existing database in SQL schema. SQL SELECT statement is used to fetch the data from a database table which returns data in the form of result table. These result tables are called result-sets.

The basic syntax of SELECT statement is as follows:

SELECT column1, column2, columnN FROM table_name;
Here, column1, column2...are the fields of a table whose values you want to fetch. If you want to fetch all the fields available in the field, then you can use the following syntax:

SELECT * FROM table_name;



![Database Schema](/DB-Schema.png)