CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
id INT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT,
    PRIMARY KEY (id)
    );
    
    INSERT INTO tb_categorias (nome, descricao)
VALUES
	('Programação', 'Cursos relacionados à programação.'),
    ('Design Gráfico', 'Cursos relacionados ao design gráfico.'),
    ('Marketing Digital', 'Cursos de marketing online.'),
    ('Inglês', 'Cursos de língua inglesa.'),
    ('Data Science', 'Cursos de ciência de dados.');
    
    CREATE TABLE tb_cursos (
    id INT AUTO_INCREMENT ,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    descricao TEXT,
    PRIMARY KEY (id)
);
    ALTER TABLE tb_cursos ADD categoria_id int;

ALTER TABLE tb_cursos ADD CONSTRAINT fk_cursos_categorias
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id);

INSERT INTO tb_cursos (nome, descricao, preco, categoria_id)
VALUES  ('Curso de Python Avançado', 'Aprofunde-se em Python.', 599.99, 1),
    ('Curso de Design de Logotipos', 'Aprenda a criar logotipos.', 799.99, 2),
    ('Curso de Marketing de Conteúdo', 'Estratégias de marketing digital.', 699.99, 3),
    ('Curso de Inglês para Negócios', 'Inglês para o ambiente de negócios.', 899.99, 4),
    ('Curso de Machine Learning', 'Aprenda machine learning.', 1199.99, 5),
    ('Curso de JavaScript Avançado', 'Domine JavaScript.', 699.99, 1),
    ('Curso de Ilustração Digital', 'Crie ilustrações digitais.', 799.99, 2),
    ('Curso de SEO Avançado', 'Otimização de motores de busca.', 899.99, 3);
    
SELECT * FROM tb_cursos WHERE preco > 500.00;

SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE nome LIKE "%J%";

SELECT tb_cursos.nome AS curso, tb_categorias.nome AS categoria
FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.categoria_id = tb_categorias.id;

SELECT tb_cursos.nome AS curso, tb_categorias.nome AS categoria
FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.categoria_id = tb_categorias.id
WHERE tb_categorias.nome = 'Programação';