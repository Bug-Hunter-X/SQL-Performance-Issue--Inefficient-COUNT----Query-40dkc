```sql
-- Create an index on the department column
CREATE INDEX idx_department ON employees (department);

-- Optimized query using the index
SELECT COUNT(*) FROM employees WHERE department = 'Sales';

--Alternative approach: (If you frequently need counts for different departments)
--Create a summary table
CREATE TABLE department_counts AS
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;

--Query the summary table
SELECT employee_count FROM department_counts WHERE department = 'Sales';
```