CREATE DATABASE  db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categorias (
id INT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT,
    PRIMARY KEY (id)
    );
    
    INSERT INTO tb_categorias (nome, descricao)
VALUES ('Ferramentas', 'Categoria de ferramentas para construção.'),
    ('Materiais de Construção', 'Categoria de materiais diversos para construção civil.'),
    ('Elétrica', 'Categoria de produtos elétricos.'),
    ('Hidráulica', 'Categoria de produtos hidráulicos.'),
    ('Pintura', 'Categoria de produtos para pintura e acabamento.');
    
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
VALUES ('Martelo', 15.99, 50, 'Martelo de construção resistente.', 1),
    ('Tijolos', 0.50, 1000, 'Tijolos para construção de paredes.', 2),
    ('Fio Elétrico', 9.99, 200, 'Fio elétrico para instalações.', 3),
    ('Torneira', 12.50, 80, 'Torneira para pias e banheiros.', 4),
    ('Tinta Látex', 25.00, 40, 'Tinta látex para pintura de interiores.', 5),
    ('Serra Circular', 99.99, 30, 'Serra circular para corte de madeira.', 1),
    ('Cimento', 12.00, 200, 'Saco de cimento para construção.', 2),
    ('Disjuntor', 8.99, 60, 'Disjuntor elétrico para painéis.', 3);
    
SELECT * FROM tb_produtos WHERE preco > 100.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT tb_produtos.nome, tb_produtos.preco, tb_categorias.nome AS categoria
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

SELECT tb_produtos.nome, tb_produtos.preco, tb_categorias.nome AS categoria
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.nome = 'Pintura';