
-- 查询 课程成绩 小于 60的
-- 一名学生可能有很多门课的成绩 ，所以一定要针对一门课的成绩
-- 选出这门课的 所有成绩 


SELECT stu.id, stu.name, sco.score
FROM student stu, score sco
WHERE stu.id=sco.student_id
AND sco.course_id=(
    SELECT course_id FROM course WHERE course_name='Math'
)
AND sco.score<100;


-- 插入一个学渣
INSERT INTO student(id,name,gender,age) VALUE (6, '学渣本人','男', 24)
INSERT INTO score(student_id, course_id,score) VALUES (6,101,44),(6,102,23)

-- 如果是查询所有课都没及格的学生， 也就是找到那个 门门挂科的 学渣
-- 这又涉及到 比较 这个人学了几门课
-- 从AI那里学来的，反向操作 
SELECT id, name
FROM student stu
WHERE NOT EXISTS(
    SELECT student_id FROM score s
    WHERE stu.id = s.student_id AND s.score>60
)


-- 找到所有没及格的同学, 只要有一门没及格就算
SELECT id, name
FROM student
WHERE id in (
    SELECT student_id FROM score
    WHERE score<60
    GROUP BY student_id
    -- HAVING COUNT(course_id) = (SELECT COUNT(course_id) FROM course)
)