```sql
SELECT COUNT(*) FROM employees WHERE department = 'Sales';
```
This SQL query looks innocuous, but it can cause problems if the `employees` table is very large.  The `COUNT(*)` function needs to scan the entire table, which can be very slow and resource-intensive.  This is especially true if there's no index on the `department` column.