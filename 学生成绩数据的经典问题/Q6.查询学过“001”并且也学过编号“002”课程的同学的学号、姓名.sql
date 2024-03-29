

DECLARE @course_id_0 VARCHAR(20) = '101';
DECLARE @course_id_1 VARCHAR(20) = '102';


-- 查询的关键在于 同一列 不同行 的对比
-- 类似与问题1 ，应该使用自连接

SELECT student_id,name,course_id
FROM score, student
WHERE score.student_id = student.id
AND course_id IN ('101', '102')
GROUP BY student_id, course_id;


SELECT a.student_id,name
FROM score a, score b, student stu
WHERE a.student_id = stu.id
AND b.student_id = stu.id
AND a.course_id = '101'
AND b.course_id = '102';