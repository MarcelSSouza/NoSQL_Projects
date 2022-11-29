--Definir 2 indices secundarios
CREATE INDEX pontos ON cbd_101043_ex4.SerieA (pontos);

CREATE INDEX idade ON cbd_101043_ex4.Jogador (idade);


--Criação de 5 updates e 5 deletes
CREATE KEYSPACE IF NOT EXISTS cbd_101043_ex4 WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : 1 };

USE cbd_101043_ex4;

UPDATE cbd_101043_ex4.SerieA SET time = 'Juventus' WHERE time = 'Palmeiras';

UPDATE cbd_101043_ex4.Jogos SET placar = '0x51' WHERE timeA = 'Palmeiras' AND timeB = 'Flamengo';

UPDATE cbd_101043_ex4.Time SET tecnico = 'Pepe Guardiola' WHERE time = 'Palmeiras';

UPDATE cbd_101043_ex4.Jogador SET time_revelacao='São Paulo'  WHERE nome = 'Anthony';



DELETE time_revelacao FROM cbd_101043_ex4.Jogador WHERE nome = 'Rivelino';

DELETE tecnico FROM cbd_101043_ex4.Time WHERE nome = 'Palmeiras';

DELETE * From cbd_101043_ex4.SerieA WHERE time = 'Botafogo';

DELETE palcar FROM cbd_101043_ex4.Jogos WHERE timeA = 'Palmeiras' AND timeB = 'Flamengo';

DELETE * FROM cbd_101043_ex4.Jogador WHERE nome = 'Carlos';


----------------------------------------------Criacao de 10 queries usando WHERE, ORDER BY e LIMIT----------------------------------------------------------------

--1
SELECT * FROM cbd_101043_ex4.Jogador WHERE time_revelacao = 'Palmeiras' ORDER BY idade LIMIT 1;

--2
SELECT * FROM cbd_101043_ex4.SerieA LIMIT 5;

--3
SELECT gols_marcados, gols_sofridos, saldo_gols FROM cbd_101043_ex4.SerieA WHERE time = 'São Paulo';

--4
SELECT * FROM cbd_101043_ex4.Jogador where idade > 30;

--5
SELECT * FROM cbd_101043_ex4.Jogador WHERE nome = 'Rivelino';

--6
SELECT avg(pontos) FROM cbd_101043_ex4.SerieA;

--7
SELECT * FROM cbd_101043_ex4.Jogos WHERE data IN ('2019-11-09', '2020-03-08') ALLOW FILTERING;

--8
SELECT idade FROM cbd_101043_ex4.Jogador WHERE nome='Vinicius Junior';
--9
SELECT avg(idade) FROM cbd_101043_ex4.Jogador;

--10
SELECT * FROM cbd_101043_ex4.Jogos WHERE timeA = 'Palmeiras';
