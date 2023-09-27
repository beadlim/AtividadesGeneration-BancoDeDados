CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
    id INT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    tipo VARCHAR(255) NOT NULL,
    descricao TEXT, 
    PRIMARY KEY (id)
);

INSERT INTO tb_classes (nome, tipo, descricao)
VALUES("Guerreiro", "Melee", "Classe especializada em combate corpo a corpo.");
INSERT INTO tb_classes (nome, tipo, descricao)
VALUES("Mago", "Magia", "Classe que domina magia e feitiços.");
INSERT INTO tb_classes (nome, tipo, descricao)
VALUES ("Clérigo", "Magia", "Classe que cura e protege aliados.");
INSERT INTO tb_classes (nome, tipo, descricao)
VALUES("Arqueiro", "Ranged", "Classe habilidosa em ataques à distância.");
INSERT INTO tb_classes (nome, tipo, descricao)
VALUES("Ladino", "Melee", "Classe furtiva e ágil.");

CREATE TABLE tb_personagens (
    id INT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    nivel INT NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    primary key (id)
    );

ALTER TABLE tb_personagens ADD classe_id int;

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes
FOREIGN KEY (classe_id) REFERENCES tb_classes (id);

INSERT INTO tb_personagens(nome, nivel, poder_ataque, poder_defesa, classe_id)		
values("Aragorn", 30, 2500, 2000, 1),
("Gandalf", 40, 1800, 2200, 2),
("Cleric", 20, 1000, 1800, 3),
("Legolas", 25, 2000, 1800, 4),
("Frodo", 10, 800, 1200, 1),
("Saruman", 35, 2200, 1800, 2),
("Robin Hood", 20, 2100, 1500, 4),
("Rogue", 15, 1600, 900, 5);

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT tb_personagens.nome, tb_personagens.nivel, tb_classes.nome AS classe
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id;

SELECT tb_personagens.nome, tb_personagens.nivel, tb_classes.nome AS classe
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id
WHERE tb_classes.nome = 'Arqueiro';
