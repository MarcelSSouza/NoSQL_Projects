CREATE KEYSPACE IF NOT EXISTS cbd_101043_ex4 WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : 1 };

USE cbd_101043_ex4;

CREATE TABLE SerieA (time text, pontos int, vitorias int, empates int, derrotas int, gols_marcados int, gols_sofridos int, saldo_gols int, ultimos_jogos list<text>, PRIMARY KEY ((time), pontos)) WITH CLUSTERING ORDER BY (pontos DESC);

CREATE TABLE Jogos (timeA text, timeB text, data date, placar text, marcadores set<text>, PRIMARY KEY ((timeA), data)) WITH CLUSTERING ORDER BY (data DESC);

CREATE TABLE Time (nome text, tecnico text, criacao date, idolo text, ultimos_titulos Map<int,text>, PRIMARY KEY (nome));

CREATE TABLE Jogador (nome text, idade int, time_atual text, time_revelacao text, gols int, cidade text, PRIMARY KEY ((nome), gols));
