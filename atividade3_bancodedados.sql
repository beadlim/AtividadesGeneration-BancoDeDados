CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes (
 id INT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    idade INT NOT NULL,
    nota FLOAT NOT NULL,
    endereco VARCHAR(255),
    serie VARCHAR(50),
    primary key (id)
    );
    
INSERT INTO tb_estudantes (nome, idade, nota, endereco, serie)
VALUES("Ana Silva", 13, 8.5, "Rua das Flores, 123", "8ª Série");
INSERT INTO tb_estudantes (nome, idade, nota, endereco, serie)
VALUES ("João Santos", 15, 7.2, "Avenida Principal, 456", "8ª Série");   
INSERT INTO tb_estudantes (nome, idade, nota, endereco, serie)
VALUES ("Maria Oliveira", 12, 9.0, "Rua da Escola, 789", "6ª Série");  
INSERT INTO tb_estudantes (nome, idade, nota, endereco, serie)
VALUES ("Pedro Sousa", 14, 6.5, "Rua do Parque, 321", "7ª Série"); 
INSERT INTO tb_estudantes (nome, idade, nota, endereco, serie)
VALUES ("Clara Lima", 14, 8.8, "Rua da Praça, 567", "8ª Série");   
INSERT INTO tb_estudantes (nome, idade, nota, endereco, serie)
VALUES ("Lucas Fernandes", 13, 6.8, "Avenida Central, 789", "7ª Série");   
INSERT INTO tb_estudantes (nome, idade, nota, endereco, serie)
VALUES  ("Isabela Costa", 13, 7.7, "Rua da Biblioteca, 234", "8ª Série");   
INSERT INTO tb_estudantes (nome, idade, nota, endereco, serie)
VALUES ("Gabriel Pereira", 14, 5.9, "Rua do Campo, 890", "8ª Série");   

SELECT * FROM tb_estudantes WHERE nota > 7.0;

SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes SET nota = 6.8 WHERE id = 8;



 