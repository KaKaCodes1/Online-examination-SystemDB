-- Adding lecturer_id to exam table as a foreign key
ALTER TABLE Exam
ADD lecturer_id INT;

ALTER TABLE Exam
ADD CONSTRAINT fk_lecID
FOREIGN KEY (lecturer_id) REFERENCES Lecturer(lecturer_id);

-- Renaming Questions and Answer tables
ALTER TABLE Questions
RENAME TO Question;

ALTER TABLE Answers
RENAME TO Selected_Answer;

-- Adding is_correct to check whether selected answer is correct
ALTER TABLE Selected_Answer
ADD is_correct BOOLEAN;