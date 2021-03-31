--1------------------------

SELECT st.name, st.surname
FROM student st
WHERE st.score BETWEEN 4 AND 4.5;
WHERE st.score >= 4 AND st.score >= 4.5;

--2------------------------

SELECT *
FROM student st
WHERE st.n_group::varchar ilike '4%' -- %, _;

--3------------------------

SELECT *
FROM student st
ORDER BY st.n_group DESC, st.name ASC;

--4------------------------

SELECT *
FROM student st
WHERE st.score > 4
ORDER BY st.score DESC

--5------------------------

SELECT hb.name, hb.risk
FROM hobby hb

--6------------------------

SELECT st_hb.id_hb, st_hb.id_st
FROM stud_hobby st_hb
WHERE st_hb.date_start BETWEEN '01.01.2004' AND '12.12.2018' 
	  AND st_hb.date_finish IS NOT NULL;

--7------------------------

SELECT *
FROM student st
WHERE st.score > 4.5
ORDER BY st.score DESC

--8------------------------

SELECT *
FROM student st
WHERE st.score > 4.5
ORDER BY st.score DESC
LIMIT 2

--9------------------------

SELECT *,
 CASE
 WHEN hb.risk >= 0.8 THEN 'Очень высокий'
 WHEN hb.risk >= 0.6 AND hb.risk < 0.8 THEN 'Высокий'
 WHEN hb.risk >= 0.4 AND hb.risk < 0.6 THEN 'Средний'
 WHEN hb.risk >= 0.2 AND hb.risk < 0.6 THEN 'Низкий'
 WHEN hb.risk < 0.2 THEN 'Очень низкий'
END
FROM hobby hb

--10------------------------

SELECT *
FROM hobby hb
ORDER BY hb.risk DESC
LIMIT 3