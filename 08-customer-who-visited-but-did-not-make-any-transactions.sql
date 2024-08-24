/*

Table: Visits

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| visit_id    | int     |
| customer_id | int     |
+-------------+---------+
visit_id is the column with unique values for this table.
This table contains information about the customers who visited the mall.
 

Table: Transactions

+----------------+---------+
| Column Name    | Type    |
+----------------+---------+
| transaction_id | int     |
| visit_id       | int     |
| amount         | int     |
+----------------+---------+
transaction_id is column with unique values for this table.
This table contains information about the transactions made during the visit_id.
 

Write a solution to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.

Return the result table sorted in any order.

*/

-- Write your MySQL query statement below

SELECT v.customer_id, COUNT(customer_id) AS count_no_trans FROM Visits v LEFT JOIN Transactions t ON v.visit_id = t.visit_id WHERE t.transaction_id is NULL GROUP BY v.customer_id

/*

We have to traverse through the 'customer_id' on left table so we use LEFT JOIN, there is a condition given so we use WHERE and since we have to return an aggregate value of transactions done we use an aggregate function in this term COUNT() and since we have this function we use GROUP BY, the column name following this will always be included after SELECT.

*/