# SQL Performance Issue: Inefficient COUNT(*) Query

This repository demonstrates a common SQL performance problem: using `COUNT(*)` without proper indexing on large tables.  The `bug.sql` file shows an inefficient query, while `solution.sql` provides an optimized version.

**Problem:** The original query performs a full table scan to count the rows, which is slow for large datasets. 

**Solution:** Create an index on the `department` column to speed up the query.  For even better performance, consider using a different technique if only the count for the specific condition is required, such as a pre-aggregated table or a materialized view.
