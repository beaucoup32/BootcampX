SELECT DISTINCT teachers.name AS teacher, cohorts.name AS cohort
FROM cohorts
JOIN students ON students.cohort_id = cohorts.id 
JOIN assistance_requests AS aq ON aq.student_id = students.id
JOIN teachers ON teachers.id = aq.teacher_id
WHERE cohorts.name LIKE 'JUL02'
GROUP BY teacher, cohort
ORDER BY teacher;