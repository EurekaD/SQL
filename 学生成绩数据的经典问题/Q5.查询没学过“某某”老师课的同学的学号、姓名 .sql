

-- 有名老师 叫 赵四， 查询 没学过 他的课 的同学


-- 选出 赵四老师 所有的课
SELECT course_name, course_id
FROM course c
WHERE c.teacher_id = (SELECT teacher_id from teacher WHERE teacher_name='赵四');



SELECT student_id, course_id
FROM score
WHERE course_id = '101'
GROUP BY student_id, course_id; 


SELECT sco.course_id, stu.name
FROM score sco, student stu
WHERE sco.student_id = stu.id
and course_id not in (
    SELECT course_id
    FROM course c
    WHERE c.teacher_id = (SELECT teacher_id from teacher WHERE teacher_name='赵四')
)


SELECT sco.course_id, stu.name
FROM score sco, student stu
WHERE course_id not in (
    SELECT course_id
    FROM course c
    WHERE c.teacher_id = (SELECT teacher_id from teacher WHERE teacher_name='赵四')
) and sco.student_id = stu.id
GROUP BY student_id;



-- 思路是 找到所有成绩是 某某老师的课， 不在这其中的学生学号及对应了 答案
select stu.id, stu.name from student stu
where stu.id not in   
(
    -- 连接student和score表， 找出 有 （子查询：赵四老师的课）课的成绩的数据
    select a.id 
    from student a,score b 
    where a.id = b.student_id and 
    course_id in (
        select d.course_id 
        from teacher c,course d 
        where c.teacher_id=d.teacher_id and 
            c.teacher_name='赵四'
    )
)