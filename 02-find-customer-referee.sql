/* Table: Customer

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
| referee_id  | int     |
+-------------+---------+
In SQL, id is the primary key column for this table.
Each row of this table indicates the id of a customer, their name, and the id of the customer who referred them.
 

Find the names of the customer that are not referred by the customer with id = 2.

Return the result table in any order. */


-- Write your MySQL query statement below

SELECT name from Customer WHERE referee_id is NULL OR referee_id != 2 


/*

Remember that you've to take care of NULL values differently because sql gets rid of them by default

*/