SELECT cohorts.name AS cohort, COUNT(a_s.*) as total_submissions
FROM students
JOIN cohorts
ON cohorts.id = cohort_id
JOIN assignment_submissions AS a_s
ON a_s.student_id = students.id
GROUP BY cohort
ORDER BY total_submissions DESC;