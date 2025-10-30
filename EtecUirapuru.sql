CREATE DATABASE EtecUirapuru;

USE etecUirapuru;

CREATE TABLE aluno(
id INT auto_increment PRIMARY KEY,
nome VARCHAR (250),
curso VARCHAR (250),
idade int
);

select * from aluno;

ALTER TABLE aluno ADD genero VARCHAR (10);
ALTER TABLE aluno DROP COLUMN feminino;

UPDATE aluno SET cargo = 'programador' WHERE id=1;

INSERT INTO aluno (nome, curso, idade, genero) VALUES ('João', 'Desenvolvimento de Sistemas', 17, 'masculino');

INSERT INTO aluno (nome, curso, idade, genero) VALUES ('Amando', 'Desenvolvimento de Sistemas', 100, 'masculino');

INSERT INTO aluno (nome, curso, idade, genero) VALUES ('Ana', 'Desenvolvimento de Sistemas', 33, 'feminino');

SELECT * FROM aluno WHERE idade>=18;

UPDATE aluno
SET nome = 'Paulo'
WHERE id=1;

SELECT COUNT(*) FROM aluno WHERE idade > 30; 

SELECT AVG(idade) FROM aluno;

SELECT AVG(idade) AS medidade FROM aluno;

SELECT * FROM aluno WHERE idade = (SELECT MAX(idade) FROM aluno);

SELECT * FROM aluno WHERE idade = (SELECT MIN(idade) FROM aluno);

SELECT * FROM aluno WHERE idade BETWEEN 30 AND 33;

select count(*) as qtmulheres from aluno where genero = 'femininos'; 

select count(*) as qthomens from aluno where genero = 'masculino'; 