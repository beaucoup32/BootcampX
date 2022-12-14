SELECT cohorts.name AS name, AVG(completed_at - started_at) AS average_assistance_request_duration
FROM cohorts
JOIN students ON students.cohort_id = cohorts.id
JOIN assistance_requests AS aq ON aq.student_id = students.id
GROUP BY cohorts.name
ORDER BY average_assistance_request_duration;