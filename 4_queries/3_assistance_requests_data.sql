SELECT teachers.name AS teacher, students.name AS student, assignments.name AS assignment, (aq.completed_at - aq.started_at) AS duration
FROM assistance_requests AS aq
JOIN teachers ON teachers.id = aq.teacher_id
JOIN students ON students.id = aq.student_id
JOIN assignments ON assignments.id = aq.assignment_id
ORDER BY duration;