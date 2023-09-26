CREATE DATABASE DB_eCommerce;

USE DB_eCommerce;

CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
descricao TEXT,
preco decimal not null,
estoque int not null,
categoria varchar(100),
primary key (id)
); 

INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria)
VALUES ("Smartphone Sumsung", "Um smartphone de última geração", 4999.99, 100, "Eletrônicos");
INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria)
VALUES("Notebook UltraSlim", "Notebook leve e rápido", 3299.99, 50, "Informática");
INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria)
VALUES("Televisão 4K", "Televisão de alta resolução", 7000.00, 30, "Eletrônicos");
INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria)
VALUES("Fone de Ouvido com Cancelamento de Ruído", "Fone de ouvido para uma experiência sonora premium", 249.99, 80, "Eletrônicos");
INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria)
VALUES ("Fone de Ouvido Bluetooth", "Fone de ouvido sem fio", 49.99, 150, "Eletrônicos");
INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria)
VALUES("Bicicleta de Montanha", "Bicicleta para trilhas", 2000.00, 40, 'Esportes');
INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria)
VALUES  ("Smartwatch XYZ", "Relógio inteligente com monitor de atividades", 299.99, 50, "Eletrônicos");
INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria)
VALUES ("Tablet Android", "Tablet com sistema operacional Android", 1999.99, 30, "Eletrônicos");
INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria)
VALUES("Impressora Multifuncional", "Impressora de alta qualidade de impressão", 949.99, 25, "Informática");

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 6000.00 WHERE id = 1;

SELECT * FROM tb_produtos WHERE id = 1;