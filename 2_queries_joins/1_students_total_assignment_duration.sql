SELECT SUM(a.duration) AS "total_duration"
FROM students
JOIN assignment_submissions AS a
ON a.student_id = students.id
WHERE students.name LIKE 'Ibrahim Schimmel';