CREATE TABLE cidade (
    cod_cidade INT PRIMARY KEY,
    nome VARCHAR(70) NOT NULL
);

CREATE TABLE curso (
    cod_curso INT PRIMARY KEY,
    nome VARCHAR(200),
    cod_cidade INT,
    FOREIGN KEY (cod_cidade) REFERENCES cidade(cod_cidade)
);

CREATE TABLE aluno (
    cod_aluno INT PRIMARY KEY,
    nome VARCHAR(100),
    cod_cidade INT,
    cod_curso INT,
    FOREIGN KEY (cod_cidade) REFERENCES cidade(cod_cidade),
    FOREIGN KEY (cod_curso) REFERENCES curso(cod_curso)
);


INSERT INTO cidade VALUES
(1901, 'Cuitegi'),
(1232, 'Araçagi'),
(1900, 'Guarabira');

INSERT INTO curso VALUES
(1, 'Edificações', 1901),
(2, 'Informática', 1232);

INSERT INTO aluno VALUES
(230, 'Júllya', 1232, 2),
(430, 'Iago', 1901, 1);

SELECT *  FROM cidade;
SELECT * FROM curso;
SELECT * FROM aluno ORDER BY nome;

UPDATE cidade
SET nome = 'Pirões'
WHERE cod_cidade = 1901;

DELETE FROM cidade WHERE cod_cidade = 1900;

SELECT aluno.cod_aluno, aluno.nome, cidade.nome AS Nome_da_cidade, curso.nome AS Nome_do_curso
FROM aluno
JOIN cidade
ON aluno.cod_cidade = cidade.cod_cidade
JOIN curso 
ON aluno.cod_curso = curso.cod_curso;



