CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT, 
    PRIMARY KEY (id)
);

INSERT INTO tb_categorias (nome, descricao)
VALUES
    ("Salgadas", "Pizzas salgadas tradicionais."),
    ("Doces", "Pizzas doces deliciosas.");

CREATE TABLE tb_pizzas (
	id INT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    ingredientes TEXT NOT NULL,
    primary key (id)
    );

ALTER TABLE tb_pizzas ADD categoria_id int;

ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categorias
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id);

INSERT INTO tb_pizzas (nome, preco, ingredientes, categoria_id)
VALUES ('Pizza Margherita', 60.00, 'Molho de tomate, mussarela, manjericão', 1),
    ('Pizza Pepperoni', 55.00, 'Molho de tomate, pepperoni, queijo', 1),
    ('Pizza Calabresa', 45.00, 'Molho de tomate, calabresa, cebola', 1),
    ('Pizza Chocolate', 60.00, 'Chocolate, morangos, chantilly', 2),
    ('Pizza Banana', 48.00, 'Banana, açúcar, canela', 2),
    ('Pizza Frango com Catupiry', 58.00, 'Molho de tomate, frango desfiado, catupiry', 1),
    ('Pizza Quatro Queijos', 52.00, 'Molho de tomate, mussarela, provolone, gorgonzola, parmesão', 1),
    ('Pizza Vegetariana', 49.00, 'Molho de tomate, vegetais diversos', 1);

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT tb_pizzas.nome, tb_pizzas.preco, tb_categorias.nome AS categoria
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT tb_pizzas.nome, tb_pizzas.preco, tb_categorias.nome AS categoria
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.nome = 'Doces';
