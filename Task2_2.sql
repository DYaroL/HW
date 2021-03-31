--1------------------------

SELECT COUNT(st.n_group), st.n_group
FROM student st
GROUP BY st.n_group

--2------------------------

SELECT st.n_group, MAX(st.score)
FROM student st
GROUP BY st.n_group

--3------------------------

SELECT COUNT(st.surname), st.surname
FROM student st
GROUP BY st.surname

--4------------------------

SELECT COUNT(to_char(date_birth, 'YYYY')), to_char(date_birth, 'YYYY')
FROM student st
GROUP BY to_char(date_birth, 'YYYY')

--5------------------------

SELECT st.n_group, AVG(st.score)::real as avg_score
FROM student st
GROUP BY st.n_group

--6------------------------

SELECT st.n_group, AVG(st.score)::real as avg_score
FROM student st
GROUP BY st.n_group
ORDER BY avg_score DESC
LIMIT 1

--7------------------------

SELECT st.n_group, AVG(st.score)::real as avg_score
FROM student st
GROUP BY st.n_group
HAVING AVG(st.score)::real > 3.5
ORDER BY avg_score DESC

--8------------------------

SELECT st.n_group,
	   COUNT(st.n_group),
	   MAX(st.score),
	   AVG(st.score)::real as avg_score,
	   MIN(st.score)
FROM student st
GROUP BY st.n_group

--9------------------------

SELECT st.n_group, MAX(st.score)
FROM student st
GROUP BY st.n_group, st.name


SELECT max(st.score)
FROM student st
WHERE st.n_group = 2222

SELECT *
FROM student st
WHERE st.n_group = 2222 AND st.score = (
	SELECT max(st.score)
	FROM student st
	WHERE st.n_group = 2222
)

--10------------------------

SELECT *
FROM student
INNER JOIN (
	SELECT max(st.score) as m_s, st.n_group
	FROM student st
	GROUP BY st.n_group
) t ON student.score = t.m_s AND student.n_group = t.n_group

