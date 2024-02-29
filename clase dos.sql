SHOW DATABASES;

CREATE TABLE estudiantes (
    id_estudiante INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45),
    apellido VARCHAR(45),
    edad INT,
    curso VARCHAR(45),
    nota_uno INT,
    nota_dos INT,
    nota_tres INT
);

ALTER TABLE estudiantes
    ADD FOREIGN KEY (nota_tres) REFERENCES notas(id_nota); 

INSERT INTO estudiantes( nombre, apellido, edad, curso, nota_uno, nota_dos, nota_tres) VALUES
('alex', 'rodriguez', 15, 'decimo', 1,5,7),
('maria', 'perez', 15, 'decimo', 2,5,9),
('juan', 'higita', 16, 'decimo', 2,6,8),
('miguel', 'otalvaro', 18, 'decimo', 3,6,7),
('jose', 'jimenez', 15, 'decimo', 6,4,9),
('andres', 'hernandez', 17, 'decimo', 8,4,10),
('esteban', 'castro', 17, 'decimo', 4,6,11),
('monica', 'castro', 16, 'decimo', 2,6,7),
('carolina', 'ochoa', 15, 'decimo', 1,5,9),
('juliana', 'perez', 14, 'decimo', 1,4,7)

CREATE TABLE materias (
    id_materia INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45),
    profesor VARCHAR(45)
)

INSERT INTO materias(nombre, profesor) VALUES
('matematicas', 'edwin'),
('español', 'maria'),
('sociales', 'rosa'),
('religion', 'juan'),
('ingles', 'carlos'),
('geometrira', 'edwin'),
('quimica', 'margarita'),
('fisica', 'margarita'),
('biologia', 'margarita'),
('quimica', 'margarita')

CREATE TABLE notas (
    id_nota INT PRIMARY KEY AUTO_INCREMENT,
    nota VARCHAR(20),
    id_materia INT
)

ALTER TABLE notas
    ADD FOREIGN KEY (id_materia) REFERENCES materias(id_materia)


