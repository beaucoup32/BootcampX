SELECT SUM(a_s.duration) AS "total_duration"
FROM students
JOIN assignment_submissions AS a_s
ON a_s.student_id = students.id
JOIN cohorts AS c
ON c.id = students.cohort_id
WHERE c.name LIKE 'FEB12';