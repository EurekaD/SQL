

-- 关联子查询
/*
关联子查询 和 非关联子查询的区别：


非关联子查询：先执行内层查询（也就是先执行子查询语句），再执行外层查询

关联子查询：先执行外层查询，再执行内层查询（内层查询必须引用外层查询的变量）

*/


-- 例子：查询 每个学生的 最大成绩 和 平均成绩 的差值

SELECT name, diff_score
FROM student
WHERE id in (
    SELECT student_id, MAX(s.score)
    FROM course c, score s,
    (SELECT average_score FROM average_score) as avg_sco
    WHERE c.course_id = s.course_id, 
    GROUP BY student_id
)
(SELECT average_score FROM average_score WHERE course_name=)