const { Pool } = require("pg");

const pool = new Pool({
  user: "labber",
  password: "labber",
  host: "localhost",
  database: "bootcampx",
});

const [cohortName] = process.argv.slice(2);
const dbOptions = [cohortName];

const dbQuery = `
SELECT DISTINCT teachers.name AS teacher, cohorts.name AS cohort
FROM cohorts
JOIN students ON students.cohort_id = cohorts.id 
JOIN assistance_requests AS aq ON aq.student_id = students.id
JOIN teachers ON teachers.id = aq.teacher_id
WHERE cohorts.name LIKE $1
GROUP BY teacher, cohort
ORDER BY teacher;
`;

pool
  .query(dbQuery, dbOptions)
  .then((res) => {
    res.rows.forEach((user) => {
      console.log(`${user.cohort} : ${user.teacher}`);
    });
  })
  .catch((err) => console.error("query error", err.stack));
