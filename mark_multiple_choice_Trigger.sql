DELIMITER //
CREATE TRIGGER mark_multiple_choice_answer
BEFORE INSERT ON Selected_Answer
FOR EACH ROW
BEGIN
    DECLARE correct_option CHAR(1);
    
    IF (SELECT question_type FROM Questions WHERE question_id = NEW.question_id) = 'multiple_choice' THEN
        SELECT is_correct INTO correct_option 
        FROM Options 
        WHERE question_id = NEW.question_id AND option_id = NEW.option_id;
        
        SET NEW.is_correct = (NEW.option_id = (
            SELECT option_id 
            FROM Options 
            WHERE question_id = NEW.question_id AND is_correct = correct_option
        ));
    END IF;
END;//
DELIMITER ;
