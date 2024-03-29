


-- 注意是所有课， 选出 这个老师的所有课

SELECT course_id FROM teacher t, course c WHERE t.teacher_id = c.teacher_id AND t.teacher_name = '赵四'; 


-- 分组计算 每个学生 上的该老师的课

SELECT stu.id, stu.name, course_id
FROM student stu, score s
WHERE stu.id = s.student_id 
AND course_id in (
    SELECT course_id FROM teacher t, course c WHERE t.teacher_id = c.teacher_id AND t.teacher_name = '赵四'
    )




SELECT id, name FROM student
WHERE id in (
    -- 这里选出的都是上了这个老师课的学生id
    SELECT student_id FROM score a, course b, teacher c
    WHERE a.course_id=b.course_id AND b.teacher_id=c.teacher_id AND c.teacher_name='Mr. Wang'
    GROUP BY student_id
    -- 用 having 控制 分组 出的学生的课程数 等于 该老师教的课程数
    HAVING COUNT(a.course_id) = (
        SELECT COUNT(course_id) FROM course d, teacher e
        WHERE d.teacher_id=e.teacher_id AND e.teacher_name='Mr. Wang'
    )
)