
-- 平均成绩 
-- 选出一门课的所有成绩

SELECT course_name, score FROM course c, score s
WHERE c.course_id=s.course_id
GROUP BY course_name, score;



-- ORDER BY ORDER BY 子句用于对查询结果进行排序。
-- 你可以根据一个或多个列来指定排序顺序，并且可以选择升序（ASC）或降序（DESC）排序

SELECT course_name, AVG(score) AS average_score FROM course c, score s
WHERE c.course_id=s.course_id
GROUP BY course_name
ORDER BY average_score DESC