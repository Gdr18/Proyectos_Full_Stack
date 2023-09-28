USE university_sch;

-- Registro Estudiantes
INSERT INTO students(students_name, students_email)
VALUES ('Demo 1', 'test1@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 2', 'test2@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 3', 'test3@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 4', 'test4@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 5', 'test5@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 6', 'test6@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 7', 'test7@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 8', 'test8@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 9', 'test9@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 10', 'test10@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 11', 'test11@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 12', 'test12@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 13', 'test13@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 14', 'test14@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 15', 'test15@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 16', 'test16@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 17', 'test17@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 18', 'test18@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 19', 'test19@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 20', 'test20@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 21', 'test21@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 22', 'test22@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 23', 'test23@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 24', 'test24@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 25', 'test25@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 26', 'test26@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 27', 'test27@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 28', 'test28@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 29', 'test29@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 30', 'test30@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 31', 'test31@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 32', 'test32@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 33', 'test33@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 34', 'test34@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 35', 'test35@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 36', 'test36@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 37', 'test37@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 38', 'test38@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 39', 'test39@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 40', 'test40@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 41', 'test41@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 42', 'test42@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 43', 'test43@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 44', 'test44@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 45', 'test45@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 46', 'test46@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 47', 'test47@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 48', 'test48@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 49', 'test49@test.com');
INSERT INTO students(students_name, students_email)
VALUES ('Demo 50', 'test50@test.com');

-- Registro profesores 
INSERT INTO professors(professors_name, professors_email)
VALUES ('Roberto García', 'demo1.1@test.com');

INSERT INTO professors(professors_name, professors_email)
VALUES ('Manuel Martín', 'demo2.1@test.com');

INSERT INTO professors(professors_name, professors_email)
VALUES ('Gloria Serra', 'demo3.1@test.com');

INSERT INTO professors(professors_name, professors_email)
VALUES ('Irene Montero', 'demo4.1@test.com');

INSERT INTO professors(professors_name, professors_email)
VALUES ('Belén Esteban', 'demo5.1@test.com');

-- Registro cursos
INSERT INTO courses(courses_title, courses_professor_id)
VALUES ('SQL', 4);

INSERT INTO courses(courses_title, courses_professor_id)
VALUES ('Python', 8);

INSERT INTO courses(courses_title, courses_professor_id)
VALUES ('HTML', 5);

INSERT INTO courses(courses_title, courses_professor_id)
VALUES ('CSS', 5);

INSERT INTO courses(courses_title, courses_professor_id)
VALUES ('JavaScript', 7);

INSERT INTO courses(courses_title, courses_professor_id)
VALUES ('UML', 6);

INSERT INTO courses(courses_title, courses_professor_id)
VALUES ('MongoDB', 4);

-- Combinación UNIQUE entre dos columnas
ALTER TABLE `grades` ADD UNIQUE `unique_index`(`grades_students_id`, `grades_courses_id`);

-- Registro notas(100 registros)
INSERT INTO grades(grades_note, grades_students_id, grades_courses_id)
VALUES ((RAND() * (10 - 0)) + 0, (RAND() * (50 - 1)) + 1, (RAND() * (25 - 20)) + 20);

-- Nota media de cada profesor
SELECT professors_name AS 'Professor Name', AVG(grades_note) AS 'Grade Avarage'
FROM grades g
JOIN courses c
ON g.grades_courses_id = c.courses_id
JOIN professors p
ON c.courses_professor_id = p.professors_id
GROUP BY p.professors_name;

-- Mejores calificaciones de cada estudiante
SELECT students_name AS "Student Name", MAX(grades_note) AS "Top Grade"
FROM students s
JOIN grades g
ON s.students_id = g.grades_students_id
GROUP BY s.students_name
ORDER BY MAX(grades_note) DESC;

-- Ordena a los estudiantes por los cursos en los que están matriculados
SELECT students_name AS "Student Name", courses_title AS "Courses"
FROM students s
JOIN grades g
ON s.students_id = g.grades_students_id
JOIN courses c
ON g.grades_courses_id = c.courses_id
ORDER BY s.students_name;

-- Informe resumido de los cursos y sus calificaciones promedio, ordenados desde el curso más desafiante hasta el cursos más fácil.
SELECT courses_title AS "Courses", AVG(grades_note) AS "Average"
FROM grades g
JOIN courses c
ON g.grades_courses_id = c.courses_id
GROUP BY c.courses_title
ORDER BY AVG(grades_note) ASC;

-- Encontrar qué estudiante y profesor tienen más cursos en común.
SELECT students_name, professors_name, COUNT(professors_id) AS courses_in_common
FROM students s
JOIN grades g
ON s.students_id = g.grades_students_id 
JOIN courses c
ON g.grades_courses_id = c.courses_id
JOIN professors p
ON c.courses_professor_id = p.professors_id
GROUP BY s.students_name, p.professors_name
ORDER BY courses_in_common DESC;




