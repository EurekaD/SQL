
-- 平均成绩 是 由同一个学号的行， 也就是每个学生的各科成绩 计算的
-- 涉及到一个表中的特定的多行的 计算， 说明要 进行分组
-- 平均函数 avg()

SELECT student_id, AVG(score) FROM score
GROUP BY student_id
HAVING AVG(score) > 60;


-- 错误
SELECT student_id, AVG(score) FROM score
WHERE AVG(score) > 60;

/*
聚合函数 GROUP Function
所谓的 group function 当然要和 group by 一起用

聚合函数通常与 GROUP BY 子句一起使用，以便在每个组上应用聚合函数并返回每个组的单个值。
聚合函数也可以用在 SELECT 语句中的 HAVING 子句中，用于过滤 GROUP BY 分组后的结果。

常见的 SQL 聚合函数包括：
COUNT()：用于计算指定列或行的行数。
SUM()：用于计算指定列的总和。
AVG()：用于计算指定列的平均值。
MIN()：用于获取指定列的最小值。
MAX()：用于获取指定列的最大值。
STDDEV() 用于计算标准偏差、 VAR() 用于计算方差等。
*/