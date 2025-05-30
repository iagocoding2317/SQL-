CREATE TABLE Estudantes (
id INT PRIMARY KEY,
nome VARCHAR(50),
curso VARCHAR(30),
idade INT,
nota DECIMAL(3,1),
cidade VARCHAR(30)
);
INSERT INTO Estudantes(id, nome, curso, idade, nota, cidade)
VALUES
(1, 'João', 'Informática', 16, 8, 'Guarabira'),
(2, 'Antônio', 'Edificações', 17, 10, 'Pilões'),
(3, 'Iago', 'Edificações', 17, 10, 'Guarabira'),
(4, 'Anício', 'Medicina', 15, 9, 'João Pessoa'),
(5, 'Júlia', 'Edificações', 18, 10, 'Tacima'),
(6, 'Inacio', 'Edificações', 20, 7, 'Porto Alegre'),
(7, 'Thais', 'Edificações', 21, 6, 'Salvador'),
(8, 'Barros', 'Edificações', 25, 10, 'Solanea');
SELECT * FROM Estudantes WHERE nome LIKE 'A%';
SELECT * FROM Estudantes ORDER BY nota DESC;
SELECT AVG(nota)
FROM Estudantes;
SELECT MIN(nota)
FROM Estudantes;
SELECT MAX(nota)
FROM Estudantes;
SELECT COUNT (*) AS Quantidade
From Estudantes;
SELECT curso, COUNT(*) AS Quantidade
FROM Estudantes
GROUP BY curso;
SELECT SUM(idade) AS Soma
FROM Estudantes;

SELECT curso, COUNT (*) AS Quantidade FROM Estudantes
GROUP BY curso
HAVING COUNT (*) > 5;
SELECT curso, AVG(nota) AS Média FROM Estudantes
WHERE cidade LIKE 'S%'
GROUP BY curso
HAVING AVG(nota) > 7;