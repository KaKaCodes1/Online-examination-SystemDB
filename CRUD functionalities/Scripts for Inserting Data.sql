-- Creating Students
INSERT INTO Student (student_name, email, password)
VALUES 
('Hamisi Juma', 'hamisi@gmail.com', SHA2('password12',256)),
('Ashford Kipleting', 'ashford@gmail.com', SHA2('password76',256)),
('Kevin Kimtai', 'kev@gmail.com', SHA2('password333',256)),
('David Erick', 'david@gmail.com', SHA2('password031',256)),
('Collins Ondeki', 'collins@gmail.com', SHA2('password67',256));

-- Creating Lecturers
INSERT INTO Lecturer (lecturer_name, email, password)
VALUES
('Salome Njoki', 'njoki@lec.com', SHA2('password2345',256)),
('Alfred Omondi', 'alfred@lec.com', SHA2('password0#',256)),
('Leonard Doe', 'doe@lec.com', SHA2('password165',256)),
('Mary Lee', 'lee@lec.com', SHA2('password432',256));

-- Creating Exams
INSERT INTO Exam (exam_name, description, date, total_marks, lecturer_id)
VALUES 
('Introduction To Computing', 'End of Semister Exam', '2024-12-01', 70, 1),
('Differential Calculus', 'End of Semister Exam', '2024-12-02', 70, 2 ),
('Advanced Database', 'CAT 1', '2024-12-03', 20,3)
;

-- Creating questions for exams
INSERT INTO Questions (question_text, marks, exam_id, question_type)
VALUES 
('Which on is NOT a hardware component?', 2, 100, 'multiple_choice'),
('Define Tuple', 10, 102, 'text');

-- Creating the choices for a question with multiple choices
INSERT INTO Options (option_a, option_b, option_c, option_d, is_correct, question_id)
VALUES 
('Monitor', 'Operating System', 'Keyboard', 'Mouse', 'B', 1);

-- Creating results data
INSERT INTO Results (student_id, exam_id, score, status)
VALUES 
(1000, 100, 60, 'pass'),
(1001, 100, 20, 'fail'),
(1002, 100, 18, 'fail');




