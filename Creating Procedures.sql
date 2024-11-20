USE online_exam;
Adding new student
DELIMITER //

CREATE PROCEDURE AddStudent(
    IN p_student_name VARCHAR(100),
    IN p_email VARCHAR(100),
    IN p_password VARCHAR(255)
)
BEGIN
    INSERT INTO Student (student_name, email, password)
    VALUES (p_student_name, p_email, SHA2(p_password, 256));
END //

DELIMITER ;



-- Add new exam
DELIMITER //

CREATE PROCEDURE AddExam(
    IN p_exam_name VARCHAR(100),
    IN p_description TEXT,
    IN p_date DATE,
    IN p_total_marks INT,
    IN p_lecturer_id INT
)
BEGIN
    INSERT INTO Exam (exam_name, description, date, total_marks, lecturer_id)
    VALUES (p_exam_name, p_description, p_date, p_total_marks, p_lecturer_id);
END //

DELIMITER ;

-- Adding a question
DELIMITER //

CREATE PROCEDURE AddQuestion(
    IN p_question_text TEXT,
    IN p_marks INT,
    IN p_exam_id INT,
    IN p_question_type ENUM('multiple_choice', 'text')
)
BEGIN
    INSERT INTO Questions (question_text, marks, exam_id, question_type)
    VALUES (p_question_text, p_marks, p_exam_id, p_question_type);
END //

DELIMITER ;


-- Adding options
DELIMITER //

CREATE PROCEDURE AddOptions(
    IN p_option_a VARCHAR(255),
    IN p_option_b VARCHAR(255),
    IN p_option_c VARCHAR(255),
    IN p_option_d VARCHAR(255),
    IN p_is_correct CHAR(1),
    IN p_question_id INT
)
BEGIN
    INSERT INTO Options (option_a, option_b, option_c, option_d, is_correct, question_id)
    VALUES (p_option_a, p_option_b, p_option_c, p_option_d, p_is_correct, p_question_id);
END //

DELIMITER ;

-- Recording a student's answer
DELIMITER //
CREATE PROCEDURE RecordAnswer(
    IN p_student_id INT,
    IN p_question_id INT,
    IN p_option_id INT,
    IN p_selected_option CHAR(1),
    IN p_text_answer TEXT
)
BEGIN
    -- Insert the selected answer
    INSERT INTO Selected_Answer (student_id, question_id, option_id, selected_option, text_answer)
    VALUES (p_student_id, p_question_id, p_option_id, p_selected_option, p_text_answer);
    
    SELECT is_correct 
    FROM Selected_Answer 
    WHERE student_id = p_student_id AND question_id = p_question_id;
END;
//
DELIMITER ;

-- Getting student results
DELIMITER //

CREATE PROCEDURE GetStudentResults(
    IN p_student_id INT
)
BEGIN
    SELECT r.result_id, e.exam_name, r.score, r.status, e.total_marks
    FROM Results r
    JOIN Exam e ON r.exam_id = e.exam_id
    WHERE r.student_id = p_student_id;
END //

DELIMITER ;



