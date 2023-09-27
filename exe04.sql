CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT, 
    primary key (id)
    );
    
    INSERT INTO tb_categorias (nome, descricao)
VALUES
    ('Carnes', 'Produtos de origem animal, como carne bovina, suína, frango, etc.'),
    ('Vegetais', 'Produtos de origem vegetal, como frutas, legumes e verduras'),
    ('Laticínios', 'Produtos à base de leite, como queijos e iogurtes');
    
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
VALUES ('Filé Mignon', 29.99, 50, 'Corte nobre de carne bovina', 1),
    ('Maçãs', 4.99, 200, 'Frutas frescas e saudáveis', 2),
    ('Queijo Prato', 15.50, 30, 'Queijo de origem laticínia', 3),
    ('Picanha', 34.99, 40, 'Corte premium de carne bovina', 1),
    ('Tomates', 3.49, 150, 'Ingredientes essenciais para saladas', 2),
    ('Iogurte Natural', 6.99, 60, 'Iogurte sem adição de açúcar', 3),
    ('Peito de Frango', 12.99, 70, 'Corte de frango sem osso', 1),
    ('Cenouras', 2.99, 120, 'Legumes frescos e nutritivos', 2);
    
SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT tb_produtos.nome, tb_produtos.preco, tb_categorias.nome AS categoria
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

SELECT tb_produtos.nome, tb_produtos.preco, tb_categorias.nome AS categoria
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.nome = 'Vegetais';