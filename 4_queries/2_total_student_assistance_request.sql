SELECT COUNT(aq.*) AS total_assistances, students.name AS name
FROM students 
JOIN assistance_requests AS aq ON aq.student_id = students.id
WHERE name LIKE ('Elliot Dickinson')
GROUP BY name;