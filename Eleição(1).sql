CREATE TABLE candidates (
    candidate_id INT PRIMARY KEY,
    candidate_name VARCHAR(100),
    party VARCHAR(50)
);

INSERT INTO candidates VALUES
(1, 'Alice', 'Partido A'),
(2, 'Bob', 'Partido B'),
(3, 'Charlie', 'Partido C');

CREATE TABLE votes (
    vote_id INT PRIMARY KEY,
    candidate_id INT,
    region_id INT,
    vote_count INT
);

INSERT INTO votes VALUES
(1, 1, 101, 500),
(2, 2, 101, 300),
(3, 1, 102, 200),
(4, 3, 101, 150),
(5, 2, 102, 250),
(6, 3, 102, 400);

CREATE TABLE regions (
    region_id INT PRIMARY KEY,
    region_name VARCHAR(100)
);

INSERT INTO regions VALUES
(101, 'Região Norte'),
(102, 'Região Sul');
/* 1 */
SELECT candidate_id, SUM(vote_count) AS total_votos
FROM votes
GROUP BY candidate_id;
/* 2 */
SELECT region_id, AVG(vote_count) AS media_votos
FROM votes
GROUP BY region_id;
/* 3 */
SELECT  candidate_id, region_id, vote_count 
FROM votes
ORDER BY vote_count DESC
LIMIT 3;

/* 4 */
SELECT region_id, SUM(vote_count) AS total_votos
FROM votes
GROUP BY region_id
ORDER BY SUM(vote_count) DESC
LIMIT 1;
/* 5 */
SELECT candidate_id, SUM(vote_count) AS total_votos
FROM votes
GROUP BY candidate_id
ORDER BY SUM(vote_count) DESC
LIMIT 1;
/* 6 */
SELECT candidate_id, SUM(vote_count) AS total_votos
FROM votes
GROUP BY candidate_id
HAVING SUM(vote_count) > 500;
/* 7 */
SELECT region_id, candidate_id, SUM(vote_count) AS total_votos
FROM votes
GROUP BY region_id, candidate_id
ORDER BY region_id ASC;

/* Consulta 1 */
SELECT candidate_id, AVG(vote_count) AS media_total
FROM votes
GROUP BY candidate_id
HAVING AVG(vote_count) > 300;

/* Consulta 2 */
SELECT region_id, MAX(vote_count) AS max_votes
FROM votes
GROUP BY region_id
HAVING MAX(vote_count) > 400;