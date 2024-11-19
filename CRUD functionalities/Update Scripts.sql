-- Editing student email
UPDATE Student
SET email = 'juma@gmail.com'
WHERE student_id = 1000;

-- Editing exam description
UPDATE Exam
SET description = 'new description'
WHERE exam_id = 102;

-- Editing marks for a question
UPDATE Questions
SET marks = 2
WHERE question_id = 4;

-- Editing results for a student
UPDATE results
SET score = 62
WHERE student_id = 1000;
