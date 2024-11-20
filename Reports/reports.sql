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



