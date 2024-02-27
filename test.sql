SHOW DATABASES;

CREATE TABLE estudiantes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45),
    apellido VARCHAR(45),
    email VARCHAR(150),
    fecha_nacimiento DATE
);
CREATE TABLE estudiante (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45),
    apellido VARCHAR(45),
    email VARCHAR(150),
    fecha_nacimiento DATE
);

SELECT * FROM users WHERE genero = 'M';

SELECT nombres, apellidos FROM users WHERE genero = 'M' AND edad < 30 and edad > 20;

SELECT MIN(edad) FROM users;

SELECT * FROM users ORDER BY edad ASC LIMIT 1;

SELECT COUNT(*) FROM users;

SELECT COUNT(*) FROM users;

SELECT * FROM users WHERE pais != 'colombia';

SELECT * FROM users WHERE pais != 'ecuador' and pais != 'panama';

SELECT COUNT(*) FROM users WHERE pais = 'colombia' AND musica = 'rock';

UPDATE users SET musica = 'carranga' WHERE musica = 'metal';

UPDATE users SET musica = 'rock' WHERE musica = 'carranga';

SELECT * FROM users WHERE pais = 'colombia' AND musica = 'carranga' AND edad BETWEEN 10 AND 20;

UPDATE users SET musica = 'carranga' WHERE edad = 99;

SELECT * FROM users WHERE edad = 99;

SELECT * FROM users WHERE nombres LIKE 'a%' OR nombres LIKE 'A%';

SELECT * FROM users WHERE nombres LIKE '%z' OR nombres LIKE '%Z';

UPDATE users SET musica = 'null' WHERE edad = 50;

SELECT * FROM users WHERE edad = 50;

SELECT * FROM users WHERE musica = 'null';



SELECT * FROM users WHERE correo LIKE '%.net'

SELECT SUM(edad) FROM users;

SELECT COUNT(*) FROM users WHERE pais = 'ecuador';

SELECT COUNT(*) FROM users WHERE pais = 'colombia' AND musica = 'vallenato';

SELECT * FROM users WHERE correo;   

INSERT INTO estudiante (nombre,apellido,email,fecha_nacimiento) VALUES ('John', 'Miranda', 'Jhon@gmail.com', '2024-01-12')
