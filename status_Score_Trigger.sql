DELIMITER //
CREATE TRIGGER set_exam_result_status 
BEFORE INSERT ON Results 
FOR EACH ROW
BEGIN
    DECLARE pass_threshold INT DEFAULT 50;
    IF NEW.score >= pass_threshold THEN
        SET NEW.status = 'pass';
    ELSE
        SET NEW.status = 'fail';
    END IF;
END;//
DELIMITER ;
