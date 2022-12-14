SELECT AVG(total_duration) AS average_total_duration
FROM (
  SELECT SUM(aq.completed_at - aq.started_at) AS total_duration
  FROM cohorts
  JOIN students ON students.cohort_id = cohorts.id
  JOIN assistance_requests AS aq ON aq.student_id = students.id
  GROUP BY cohorts.name
  ORDER BY total_duration
) as average_table;