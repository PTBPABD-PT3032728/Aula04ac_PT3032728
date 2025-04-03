--Questão 01. Crie uma relação a partir da união das tabelas student e takes.
SELECT * FROM student s FULL OUTER JOIN takes t ON s.ID = t.ID;

--Questão 2. Contar a quantidade de cursos realizados pelos alunos do departamento de Civil Eng. 
--Ordenar de maneira descendente a quantidade de cursos associada aos alunos.
SELECT s.ID, s.name, COUNT(course_id) AS 'Quantidade de cursos' FROM student s INNER JOIN takes ON s.ID = takes.ID
WHERE s.dept_name = 'Civil Eng.'
GROUP BY s.ID , s.name 
ORDER BY 'Quantidade de cursos' DESC;

--Questão 3. Criar uma view chamada 'civil_eng_students' a partir da relação construída na Questão 2.
CREATE VIEW civil_eng_students AS
(SELECT s.ID, s.name, COUNT(course_id) AS 'Quantidade de cursos' FROM student s INNER JOIN takes ON s.ID = takes.ID
WHERE s.dept_name = 'Civil Eng.'
GROUP BY s.ID , s.name);

SELECT * FROM civil_eng_students ORDER BY 'Quantidade de cursos' DESC;
