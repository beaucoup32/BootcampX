SELECT assignments.id AS id, assignments.name AS name, assignments.day AS day, assignments.chapter AS chapter, COUNT(aq.*) AS total_requests
FROM assignments
JOIN assistance_requests AS aq ON aq.assignment_id = assignments.id
GROUP BY assignments.id
ORDER BY total_requests DESC;