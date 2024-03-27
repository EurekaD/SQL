-- 同一张表上 作比较， 但是在不同的行

-- 此种情况 应该使用 自连接， 
-- 具体操作就是， 同一张表 使用两次别名

SELECT s1.student_id
FROM score s1, score s2
WHERE 
s1.course_id = '101' AND
s2.course_id = '102' AND
s1.score > s2.score AND
s1.student_id = s2.student_id;

SELECT s1.student_id
FROM score s1
INNER JOIN score s2 
ON  s1.course_id = '101' AND
    s2.course_id = '102' AND
    s1.score > s2.score;





-- 何为内连接
/*
内连接（INNER JOIN）是 SQL 中一种常见的连接类型，
它用于根据两个或多个表之间的共同值将它们连接起来。内连接会返回满足连接条件的行，即两个表中共同符合连接条件的行。
要使用 ON 指定如何连接

如果 两两张表没有相同列 ？还能连接吗

*/

SELECT * FROM score INNER JOIN student
ON score.student_id = student.id;

SELECT * FROM score LEFT JOIN student
ON score.student_id = student.id;

SELECT * FROM score RIGHT JOIN student
ON score.student_id = student.id;