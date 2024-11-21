-- Creating Students
INSERT INTO Student (student_name, email, password)
VALUES 
('Hamisi Juma', 'hamisi@gmail.com', SHA2('password12',256)),
('Ashford Kipleting', 'ashford@gmail.com', SHA2('password76',256)),
('Kevin Kimtai', 'kev@gmail.com', SHA2('password333',256)),
('David Erick', 'david@gmail.com', SHA2('password031',256)),
('Collins Ondeki', 'collins@gmail.com', SHA2('password67',256)),
('Joy Kamau', 'joy@gmail.com', SHA2('newpass2',256)),
('Christine Achola', 'achola@gmail.com', SHA2('pass237890',256)),
('Jeff Mulwa', 'jef@gmail.com', SHA2('password5673',256)),
('Danny Samuel', 'dan@gmail.com', SHA2('pass45359',256)),
('Chris Zawadi', 'gift@gmail.com', SHA2('pas545567',256)),
('Fiona Waziri', 'fifi@gmail.com', SHA2('newpas00008',256)),
('Elton Kawia', 'ela@gmail.com', SHA2('passki44444',256));

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
('Advanced Database', 'Final Exam', '2024-12-03', 100,3)
;

-- Creating questions for exams
INSERT INTO Questions (question_text, marks, exam_id, question_type)
VALUES 
('Which on is NOT a hardware component?', 2, 100, 'multiple_choice'),
('Define Tuple', 10, 102, 'text');

-- Inserting more questions
INSERT INTO Questions (question_text, marks, exam_id, question_type) VALUES
('What is the main function of the CPU in a computer?', 1, 100, 'multiple_choice'),
('Which of the following is an example of an input device?', 1, 100, 'multiple_choice'),
('What does the term "RAM" stand for in computing?', 1, 100, 'multiple_choice'),
('What is the primary purpose of an operating system?', 1, 100, 'multiple_choice'),
('Which programming language is commonly used for web development?', 1, 100, 'multiple_choice');

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

-- Inserting more results
INSERT INTO Results (student_id, exam_id, score)
VALUES 
(1000, 103, 50),
(1001, 103, 60),
(1002, 103, 54);

INSERT INTO Results (student_id, exam_id, score) VALUES  (1000, 102, 68), (1001, 102, 90), (1003, 102, 35), (1004, 102, 53), (1005, 102, 87), (1006, 102, 46), (1007, 102, 80), (1008, 102, 60), (1009, 102, 69), (1010, 102, 71), (1011, 102, 30), (1012, 102, 54)



