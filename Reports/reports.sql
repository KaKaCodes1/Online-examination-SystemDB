-- Report on the results of a specific student
CALL GetStudentResults(1000);

-- Report on the correct answers of a specific exam
CREATE VIEW MarkingScheme AS
SELECT 
    q.question_id,
    q.question_text,
    CASE o.is_correct
        WHEN 'A' THEN o.option_a
        WHEN 'B' THEN o.option_b
        WHEN 'C' THEN o.option_c
        WHEN 'D' THEN o.option_d
    END AS correct_answer_text,
    o.is_correct AS correct_option,
    q.exam_id  
FROM 
    Questions q
JOIN 
    Options o ON q.question_id = o.question_id
WHERE 
    o.is_correct IN ('A', 'B', 'C', 'D');
    
-- Viewing the marking scheme
SELECT * FROM MarkingScheme
WHERE exam_id = 100;


CREATE VIEW ExamResults AS
SELECT 
	r.result_id,
    r.student_id,
    s.student_name,
    e.exam_id,
    e.exam_name,
    r.score,
    r.status
FROM 
    Results r
JOIN 
    Student s ON r.student_id = s.student_id
JOIN 
    Exam e ON r.exam_id = e.exam_id
ORDER BY 
    e.exam_id DESC, r.score DESC;
    
SELECT * 
FROM ExamResults
WHERE exam_id = 102;

CREATE VIEW ViewExamQuestions AS
SELECT 
    q.exam_id,
    e.exam_name,
    q.question_id,
    q.question_text,
    q.question_type,
    o.option_id,
    o.option_a,
    o.option_b,
    o.option_c,
    o.option_d
FROM 
    Questions q
LEFT JOIN 
    Options o ON q.question_id = o.question_id
JOIN 
    Exam e ON q.exam_id = e.exam_id;

    
SELECT *
FROM ViewExamQuestions
WHERE exam_id = 100;
