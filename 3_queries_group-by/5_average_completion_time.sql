SELECT students.name AS student, AVG(a_s.duration) AS average_assignment_duration
FROM students
JOIN assignment_submissions AS a_s
ON a_s.student_id = students.id
WHERE students.end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration DESC;
