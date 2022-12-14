SELECT COUNT(aq.*) AS total_assistances, teachers.name AS name
FROM teachers 
JOIN assistance_requests AS aq ON aq.teacher_id = teachers.id
WHERE name LIKE ('Waylon Boehm')
GROUP BY name;