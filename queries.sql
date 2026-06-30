-- Query 1: WHERE Query
-- Identify high-performing students who secured placements with a salary greater than 300,000.
SELECT ssc_p, degree_p, degree_t, status, salary 
FROM cleaned_dataset
WHERE status = 'Placed' AND salary > 300000;

-- Query 2: GROUP BY + COUNT/AVG Query
-- Calculate the total number of students and the average salary offered per degree stream.
SELECT degree_t AS degree_stream, 
       COUNT(*) AS total_students, 
       AVG(salary) AS average_salary
FROM cleaned_dataset
GROUP BY degree_t;

-- Query 3: ORDER BY DESC Query
-- Rank the top 10 highest-paid placement packages achieved by students.
SELECT status, degree_t, specialisation, salary
FROM cleaned_dataset
WHERE status = 'Placed'
ORDER BY salary DESC
LIMIT 10;

-- Query 4: HAVING Query
-- Find specializations where the average placement salary exceeds 250,000.
SELECT specialisation, 
       AVG(salary) AS avg_salary
FROM cleaned_dataset
GROUP BY specialisation
HAVING AVG(salary) > 250000;

-- Query 5: LIKE / BETWEEN Query
-- Filter students with degree percentages between 65% and 80% who specialized in Marketing fields.
SELECT degree_p, specialisation, status, salary
FROM cleaned_dataset
WHERE degree_p BETWEEN 65.0 AND 80.0 
  AND specialisation LIKE '%Mkt%';

-- Query 6: Advanced Analytical Query (Combining Subqueries, Aggregations, and Case Logic)
-- Evaluate the placement success rate (%) and max salary for each academic performance tier.
SELECT performance_tier,
       COUNT(*) AS total_students,
       SUM(CASE WHEN status = 'Placed' THEN 1 ELSE 0 END) AS students_placed,
       ROUND(SUM(CASE WHEN status = 'Placed' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS placement_rate_percentage,
       MAX(salary) AS highest_package
FROM cleaned_dataset
GROUP BY performance_tier
ORDER BY placement_rate_percentage DESC;