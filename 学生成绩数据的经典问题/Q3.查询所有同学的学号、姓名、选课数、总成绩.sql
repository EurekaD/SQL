
-- 学号 
-- 选课数 来自于 score 表 以 student_id 分组计数可得到


SELECT student_id, stu.name, COUNT(s.student_id), SUM(s.score)
FROM score s, student stu
WHERE s.student_id = stu.id
GROUP BY s.student_id, stu.name;


-- group by 后面可以添加多个 
-- 按照几个标准分组，