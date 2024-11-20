
DELIMITER //
CREATE TRIGGER mark_multiple_choice_answer
BEFORE INSERT ON Selected_Answer
FOR EACH ROW
BEGIN
    DECLARE correct_option CHAR(1);
    
    -- Check if the question is of type 'multiple_choice'
    IF (SELECT question_type FROM Questions WHERE question_id = NEW.question_id) = 'multiple_choice' THEN
        -- Retrieve the correct option for the question
        SELECT is_correct INTO correct_option 
        FROM Options 
        WHERE question_id = NEW.question_id;

        -- Compare the selected option with the correct option
        IF NEW.selected_option = correct_option THEN
            SET NEW.is_correct = TRUE; -- Answer is correct
        ELSE
            SET NEW.is_correct = FALSE; -- Answer is incorrect
        END IF;
    ELSE
        -- If the question is not 'multiple_choice', leave is_correct as NULL
        SET NEW.is_correct = NULL;
    END IF;
END;
//
DELIMITER ;
