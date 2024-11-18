-- Creating a new database for the system
CREATE DATABASE onlineexam;
USE onlineexam;

-- Create student table
CREATE TABLE Student (
	student_id INT PRIMARY KEY AUTO_INCREMENT,
    
	student_name VARCHAR(100) NOT NULL, 
	
	email VARCHAR(100)NOT NULL UNIQUE , 
	
	password VARCHAR(255) NOT NULL	
);

-- Create lecturer table
CREATE TABLE Lecturer (
	lecturer_id INT PRIMARY KEY AUTO_INCREMENT, 
    
	lecturer_name VARCHAR(100) NOT NULL,
    
	email VARCHAR(100) UNIQUE NOT NULL,
    
	password VARCHAR(255) NOT NULL
);

-- Create Exam table
CREATE TABLE Exam (

	exam_id INT PRIMARY KEY AUTO_INCREMENT, 

	exam_name VARCHAR(100) NOT NULL, 

	description TEXT,

	date DATE, 

	total_marks INT
);

-- Create Results table
CREATE TABLE Results ( 

	result_id INT PRIMARY KEY AUTO_INCREMENT, 

	student_id INT, 

	exam_id INT, 

	score INT DEFAULT 0, 

	status ENUM('pass', 'fail') NOT NULL,
	 
	FOREIGN KEY (student_id) REFERENCES student(student_id), 

	FOREIGN KEY (exam_id) REFERENCES exam(exam_id) 

);
-- Create Questions table
CREATE TABLE Questions (

	 question_id INT PRIMARY KEY AUTO_INCREMENT,

	 question_text TEXT,

	 marks INT  NOT NULL,

	 exam_id INT,

	 FOREIGN KEY (exam_id) REFERENCES exam(exam_id)
);

-- Create Options table
CREATE TABLE Options (
    option_id INT PRIMARY KEY AUTO_INCREMENT,   

    option_a VARCHAR(255),
                     
    option_b VARCHAR(255), 
                     
    option_c VARCHAR(255), 
                      
    option_d VARCHAR(255),
    
    is_correct CHAR(1) CHECK (is_correct IN ('A', 'B', 'C', 'D')), 

    question_id INT,     
                         
    FOREIGN KEY (question_id) REFERENCES Questions(question_id)   
);

-- Create answers table
CREATE TABLE Answers(

	answer_id INT PRIMARY KEY AUTO_INCREMENT,

	student_id INT NOT NULL, 

	question_id INT NOT NULL,
 
	option_id INT NOT NULL,
 
	answer_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 

	FOREIGN KEY (student_id) REFERENCES student(student_id), 

	FOREIGN KEY (question_id) REFERENCES questions(question_id), 

	FOREIGN KEY (option_id) REFERENCES options(option_id)
);




