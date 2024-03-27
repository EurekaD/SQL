
DROP TABLE student;

CREATE TABLE student(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    gender VARCHAR(10),
    age INT
);


INSERT INTO student (id, name, gender, age) VALUES
(1, 'John', 'Male', 20),
(2, 'Emily', 'Female', 21),
(3, 'Michael', 'Male', 19);


SELECT * FROM student;