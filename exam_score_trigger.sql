DELIMITER //
CREATE TRIGGER update_exam_score
AFTER INSERT ON Selected_Answer
FOR EACH ROW
BEGIN
    DECLARE question_marks INT;
    DECLARE exam_id_var INT;
    
    SELECT marks INTO question_marks 
    FROM Questions 
    WHERE question_id = NEW.question_id;
    
    SELECT exam_id INTO exam_id_var 
    FROM Questions 
    WHERE question_id = NEW.question_id;
    
    UPDATE Results r
    SET r.score = r.score + (CASE WHEN NEW.is_correct THEN question_marks ELSE 0 END)
    WHERE r.student_id = NEW.student_id AND r.exam_id = exam_id_var;
END;//
DELIMITER ;
