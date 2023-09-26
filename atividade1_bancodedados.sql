CREATE DATABASE db_colaboradores;

USE db_colaboradores;

CREATE TABLE tb_colaboradores(
id bigint auto_increment,
nome varchar(255) not null,
cargo varchar(255) not null, 
salario decimal not null,
departamento varchar(255),
data_admissao DATE,
primary key (id)

);

-- Registros na tabela "colaboradores"

INSERT INTO tb_colaboradores (nome, cargo, salario, departamento, data_admissao)
VALUES("João Silva", "Gerente de Projetos", 3000.00, "TI", '2020-02-15');
INSERT INTO tb_colaboradores (nome, cargo, salario, departamento, data_admissao)
VALUES ("Maria Santos", "Analista de Marketing", 2200.00, "Marketing", '2021-05-10');
INSERT INTO tb_colaboradores (nome, cargo, salario, departamento, data_admissao)
VALUES("Pedro Oliveira", "Analista Financeiro", 1800.00, "Financeiro", '2019-09-20');
INSERT INTO tb_colaboradores (nome, cargo, salario, departamento, data_admissao)
VALUES("Ana Sousa", "Desenvolvedor Web", 2500.00, "TI", '2021-03-28');
INSERT INTO tb_colaboradores (nome, cargo, salario, departamento, data_admissao)
VALUES("Carlos Costa", "Analista de Recursos Humanos", 2100.00, "RH", '2022-01-12');

-- SELECT de colaboradores com salário maior do que 2000
SELECT * FROM colaboradores WHERE salario > 2000;

-- SELECT de colaboradores com salário menor do que 2000
SELECT * FROM colaboradores WHERE salario < 2000;

-- Atualização de um registro
UPDATE tb_colaboradores SET salario = 2300.00 WHERE id = 2;

-- SELECT para verificar a atualização

SELECT * FROM tb_colaboradores WHERE id = 2;

