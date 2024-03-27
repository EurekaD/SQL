CREATE TABLE course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    teacher_id INT
);


INSERT INTO course (course_id, course_name, teacher_id) VALUES
(101, 'Math', 201),
(102, 'English', 202),
(103, 'Computer Science', 203);
