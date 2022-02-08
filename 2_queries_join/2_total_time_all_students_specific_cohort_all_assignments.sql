--Get the total amount of time that all students from a specific cohort
--have spent on all assignments.
--FEB12
--total_duration

SELECT SUM(assignment_submissions.duration) AS total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12';