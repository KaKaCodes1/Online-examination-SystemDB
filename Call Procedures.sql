-- Fetching students results
CALL GetStudentResults(1000);

-- To add a student
CALL AddStudent('King James', 'king@gmail.com', 'securePass123');

-- To add an exam
CALL AddStudent('King James', 'king@gmail.com', 'securePass123');

-- To add a new exam
CALL AddExam(
    'Basic Mathematics',
    'End of Semister 1 Exam',
    '2024-12-15',
    100,
    2
);

-- To add a new question
CALL AddQuestion(
    'What is 2 X 4?',
    2,
    103,
    'multiple_choice'
);

-- To add new options
CALL AddOptions(
    '8',
    '4',
    '2',
    '6',
    'A',
    3
);
-- To record answers
CALL RecordAnswer(
    1001, 
    3, 
    3,
    'D',
    NULL 
    
);




