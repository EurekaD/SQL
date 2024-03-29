
-- 选出 teacher 中所有符合条件的 数据行， 计数即可

-- LIKE 条件
/*
% 通配符表示零个或多个字符的通配
_ 通配符表示单个字符的通配符
可以使用转义字符 \ 来转义特殊字符，包括 % 和 _

*/

SELECT COUNT(teacher_id)
FROM teacher
WHERE teacher_name LIKE "赵%";



-- 如果有同名老师可以显示出来
SELECT COUNT(teacher_id), teacher_name
FROM teacher
WHERE teacher_name LIKE "赵%"
GROUP BY teacher_name;