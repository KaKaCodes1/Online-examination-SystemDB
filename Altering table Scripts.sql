-- Adding lecturer_id to exam table as a foreign key
-- ALTER TABLE Exam
-- ADD lecturer_id INT;

-- ALTER TABLE Exam
-- ADD CONSTRAINT fk_lecID
-- FOREIGN KEY (lecturer_id) REFERENCES Lecturer(lecturer_id);

-- Renaming Questions and Answer tables
-- ALTER TABLE Question
-- RENAME TO Questions;

-- ALTER TABLE Answers
-- RENAME TO Selected_Answer;

-- Adding is_correct to check whether selected answer is correct
-- ALTER TABLE Selected_Answer
-- ADD is_correct BOOLEAN;

-- Making student ids to begin from 1000
-- ALTER TABLE Student AUTO_INCREMENT = 1000;

-- Making exam ids to begin from 001
-- ALTER TABLE exam AUTO_INCREMENT = 100;

-- To allow allow both multiple and non-multiple questions
-- ALTER TABLE Questions
-- ADD COLUMN question_type ENUM('multiple_choice', 'text') NOT NULL DEFAULT 'multiple_choice';

-- Storing the text answer
-- ALTER TABLE Selected_Answer
-- ADD COLUMN text_answer TEXT NULL;