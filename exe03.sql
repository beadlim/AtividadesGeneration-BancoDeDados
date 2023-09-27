CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
id INT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT,
    PRIMARY KEY (id)
    );
    
    INSERT INTO tb_categorias (nome, descricao)
VALUES
    ("Medicamentos", "Categoria de medicamentos diversos."),
    ("Cosméticos", "Categoria de produtos de beleza e cuidados com a pele."),
    ("Higiene", "Categoria de produtos de higiene pessoal."),
    ("Suplementos", "Categoria de suplementos alimentares."),
    ("Acessórios", "Categoria de alcessórios de cabelo e unhas.");
    
    CREATE TABLE tb_produtos (
    id INT AUTO_INCREMENT ,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL,
    descricao TEXT,
    PRIMARY KEY (id)
);
    ALTER TABLE tb_produtos ADD categoria_id int;

ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id);

INSERT INTO tb_produtos (nome, preco, estoque, descricao, categoria_id)
VALUES ('Aspirina', 10.50, 100, 'Analgésico e antitérmico', 1),
    ('Creme Facial', 25.90, 50, 'Hidratação para a pele', 2),
    ('Sabonete Líquido', 5.99, 200, 'Limpeza corporal', 3),
    ('Vitamina C', 30.00, 80, 'Suplemento vitamínico', 4),
    ('Prendedor de cabelo', 7.50, 150, 'Acessório para amarrar o cabelo', 5),
    ('Shampoo Anticaspa', 15.75, 60, 'Cuidado com o couro cabeludo', 3),
    ('Protetor Solar', 18.50, 70, 'Proteção contra raios UV', 2),
    ('Antisséptico Bucal', 8.99, 120, 'Higiene bucal diária', 3);
    
SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT tb_produtos.nome, tb_produtos.preco, tb_categorias.nome AS categoria
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

SELECT tb_produtos.nome, tb_produtos.preco, tb_categorias.nome AS categoria
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.nome = 'Cosméticos';










    