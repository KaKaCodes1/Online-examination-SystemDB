-- This checks whether the exam date is before the current date
DELIMITER //
CREATE TRIGGER validate_exam_date
BEFORE INSERT ON Exam
FOR EACH ROW
BEGIN
    IF NEW.date < CURDATE() THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Exam date cannot be in the past';
    END IF;
END;//
DELIMITER ;
