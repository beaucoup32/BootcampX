SELECT cohorts.name AS cohort, SUM(aq.completed_at - aq.started_at) AS total_duration
FROM cohorts
JOIN students ON students.cohort_id = cohorts.id
JOIN assistance_requests AS aq ON aq.student_id = students.id
GROUP BY cohorts.name
ORDER BY total_duration;
