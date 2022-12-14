SELECT cohorts.name, avg(completed_at - started_at) as average_assistance_time
FROM assistance_requests 
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time DESC
LIMIT 1;

-- SELECT MAX(average_assistance_request_duration) as average_assistance_time
-- FROM (
--   SELECT cohorts.name AS name, AVG(completed_at - started_at) AS average_assistance_request_duration
--   FROM cohorts
--   JOIN students ON students.cohort_id = cohorts.id
--   JOIN assistance_requests AS aq ON aq.student_id = students.id
--   GROUP BY cohorts.name
-- ) as longest_average;