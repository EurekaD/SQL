CREATE TABLE score (
    student_id INT,
    course_id INT,
    score INT,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES student(id),
    FOREIGN KEY (course_id) REFERENCES course(course_id)
);

-- 主键 和 外键 PRIMARY KEY， FOREIGN KEY
-- FOREIGN KEY (student_id) REFERENCES student(id) 表示 score 表中的 id 列是一个外键，它引用了 student 表中的 student_id 列

INSERT INTO score (student_id, course_id, score) VALUES
(1, 101, 85),
(1, 102, 78),
(2, 101, 92),
(2, 102, 85),
(3, 101, 75),
(3, 102, 80);
