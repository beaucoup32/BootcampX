SELECT teachers.name AS teacher, cohorts.name AS cohort, COUNT(aq.*) AS total_assistances
FROM teachers
JOIN assistance_requests AS aq ON aq.teacher_id = teachers.id
JOIN students ON students.id = aq.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
WHERE cohorts.name LIKE 'JUL02'
GROUP BY teacher, cohort
ORDER BY total_assistances DESC;