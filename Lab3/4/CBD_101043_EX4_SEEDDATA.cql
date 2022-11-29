CREATE KEYSPACE IF NOT EXISTS cbd_101043_ex4 WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : 1 };

USE cbd_101043_ex4;

INSERT INTO SerieA (time , pontos , vitorias , empates , derrotas , gols_marcados , gols_sofridos , saldo_gols , ultimos_jogos) VALUES ('Palmeiras', 81,23,12,3,66,27,39,['D','V','E','V','V'] );
INSERT INTO SerieA (time , pontos , vitorias , empates , derrotas , gols_marcados , gols_sofridos , saldo_gols , ultimos_jogos) VALUES ('Internacional', 73,20,13,5,58,31,27,['V','V','V','D','V'] );
INSERT INTO SerieA (time , pontos , vitorias , empates , derrotas , gols_marcados , gols_sofridos , saldo_gols , ultimos_jogos) VALUES ('Fluminense', 70,21,7,10,63,41,22,['V','V','V','V','V'] );
INSERT INTO SerieA (time , pontos , vitorias , empates , derrotas , gols_marcados , gols_sofridos , saldo_gols , ultimos_jogos) VALUES ('Corinthians', 65,18,11,9,44,36,8,['D','E','V','V','E'] );
INSERT INTO SerieA (time , pontos , vitorias , empates , derrotas , gols_marcados , gols_sofridos , saldo_gols , ultimos_jogos) VALUES ('Flamengo', 62,18,8,12,60,39,21,['D','E','D','D','V'] );
INSERT INTO SerieA (time , pontos , vitorias , empates , derrotas , gols_marcados , gols_sofridos , saldo_gols , ultimos_jogos) VALUES ('Athletico', 58,16,10,12,48,48,0,['V','E','D','V','D'] );
INSERT INTO SerieA (time , pontos , vitorias , empates , derrotas , gols_marcados , gols_sofridos , saldo_gols , ultimos_jogos) VALUES ('Atletico Mineiro', 58,15,13,10,45,37,8,['V','V','D','E','V'] );
INSERT INTO SerieA (time , pontos , vitorias , empates , derrotas , gols_marcados , gols_sofridos , saldo_gols , ultimos_jogos) VALUES ('Fortaleza', 55,15,10,13,46,39,7,['V','V','E','D','V'] );
INSERT INTO SerieA (time , pontos , vitorias , empates , derrotas , gols_marcados , gols_sofridos , saldo_gols , ultimos_jogos) VALUES ('São Paulo', 54,13,15,10,55,42,13,['V','D','D','E','V'] );
INSERT INTO SerieA (time , pontos , vitorias , empates , derrotas , gols_marcados , gols_sofridos , saldo_gols , ultimos_jogos) VALUES ('América Mineiro',53, 15,8,15,40,40,0,['E','D','V','V','E'] );
INSERT INTO SerieA (time , pontos , vitorias , empates , derrotas , gols_marcados , gols_sofridos , saldo_gols , ultimos_jogos) VALUES ('Botafogo',53, 15,8,15,41,43,-2,['D','V','V','D','V'] );



INSERT INTO Jogos (timeA, timeB, data, placar, marcadores) VALUES ('Palmeiras', 'Flamengo', '2019-11-09', '3x1', {'Dudu', 'Willian', 'Gabriel'});
INSERT INTO Jogos (timeA, timeB, data, placar, marcadores) VALUES ('Flamengo', 'Palmeiras', '2019-11-24', '1x1', {'Bruno Henrique'});
INSERT INTO Jogos (timeA, timeB, data, placar, marcadores) VALUES ('Palmeiras', 'Fluminense', '2019-12-08', '2x0', {'Willian', 'Dudu'});
INSERT INTO Jogos (timeA, timeB, data, placar, marcadores) VALUES ('Fluminense', 'Palmeiras', '2019-12-15', '1x1', {'Fred'});
INSERT INTO Jogos (timeA, timeB, data, placar, marcadores) VALUES ('Palmeiras', 'Internacional', '2020-01-12', '1x0', {'Dudu'});
INSERT INTO Jogos (timeA, timeB, data, placar, marcadores) VALUES ('Internacional', 'Palmeiras', '2020-01-19', '0x0', {});
INSERT INTO Jogos (timeA, timeB, data, placar, marcadores) VALUES ('Palmeiras', 'Flamengo', '2020-02-09', '1x1', {'Willian'});
INSERT INTO Jogos (timeA, timeB, data, placar, marcadores) VALUES ('Flamengo', 'Palmeiras', '2020-02-16', '3x1', {'Bruno Henrique', 'Gabriel', 'Gerson'});
INSERT INTO Jogos (timeA, timeB, data, placar, marcadores) VALUES ('Palmeiras', 'Fortaleza', '2020-03-01', '2x1', {'Dudu', 'Willian'});
INSERT INTO Jogos (timeA, timeB, data, placar, marcadores) VALUES ('Fortaleza', 'Palmeiras', '2020-03-08', '1x1', {'David'});
INSERT INTO Jogos (timeA, timeB, data, placar, marcadores) VALUES ('Palmeiras', 'Corinthians', '2020-03-29', '1x0', {'Dudu'});
INSERT INTO Jogos (timeA, timeB, data, placar, marcadores) VALUES ('Botafogo', 'Fluminense', '2019-11-16', '2x0', {'Dudu', 'Willian'});


INSERT INTO Time (nome, tecnico, criacao, idolo, ultimos_titulos) VALUES ('Palmeiras', 'Mano Menezes', '1914-01-26', 'Djalma Santos', {2016:'Campeonato Brasileiro', 2018:'Copa do Brasil'});
INSERT INTO Time (nome, tecnico, criacao, idolo, ultimos_titulos) VALUES ('Internacional', 'Odair Hellmann', '1909-05-04', 'Dante', {2010:'Campeonato Brasileiro', 2010:'Copa Libertadores'});
INSERT INTO Time (nome, tecnico, criacao, idolo, ultimos_titulos) VALUES ('Fluminense', 'Roger Machado', '1902-02-21', 'Mário de Andrade', {2010:'Campeonato Carioca', 2012:'Copa do Brasil'});
INSERT INTO Time (nome, tecnico, criacao, idolo, ultimos_titulos) VALUES ('Corinthians', 'Tiago Nunes', '1910-01-01', 'Ronaldo Fenômeno', {2012:'Campeonato Brasileiro', 2012:'Copa Libertadores'});
INSERT INTO Time (nome, tecnico, criacao, idolo, ultimos_titulos) VALUES ('Flamengo', 'Renato Gaúcho', '1895-11-16', 'Zico', {1981:'Campeonato Carioca', 1982:'Copa Libertadores'});
INSERT INTO Time (nome, tecnico, criacao, idolo, ultimos_titulos) VALUES ('Athletico', 'Tiago Nunes', '1904-05-26', 'Garrincha', {2013:'Campeonato Paranaense', 2013:'Copa Sul-Americana'});
INSERT INTO Time (nome, tecnico, criacao, idolo, ultimos_titulos) VALUES ('Atletico Mineiro', 'Abel Ferreira', '1908-07-16', 'Cafu', {1971:'Campeonato Mineiro', 1971:'Copa Libertadores'});
INSERT INTO Time (nome, tecnico, criacao, idolo, ultimos_titulos) VALUES ('Bahia', 'Roger Machado', '1933-07-15', 'Zé Roberto', {1988:'Campeonato Baiano', 1988:'Copa do Brasil'});
INSERT INTO Time (nome, tecnico, criacao, idolo, ultimos_titulos) VALUES ('Fortaleza', 'Felipao', '1914-01-26', 'Djalma Santos', {2016:'Campeonato Cearense', 2018:'Copa do Nordeste'});
INSERT INTO Time (nome, tecnico, criacao, idolo, ultimos_titulos) VALUES ('São Paulo', 'Cuca', '1930-08-25', 'Rogério Ceni', {1992:'Campeonato Paulista', 1992:'Copa Libertadores'});
INSERT INTO Time (nome, tecnico, criacao, idolo, ultimos_titulos) VALUES ('América Mineiro', 'Gordiola','1902-02-21', 'Mário de Andrade', {2010:'Campeonato Mineiro', 2012:'Copa do Brasil'});

INSERT INTO Jogador  (nome, idade, time_atual, time_revelacao, gols, cidade) VALUES('Antonio Carlos', 22, 'Palmeiras', 'Cuiaba', 4, 'Belem');
INSERT INTO Jogador  (nome, idade, time_atual, time_revelacao, gols, cidade) VALUES('Carlos', 24, 'Bahia', 'Vitoria', 47, 'Salvador');
INSERT INTO Jogador  (nome, idade, time_atual, time_revelacao, gols, cidade) VALUES('Ze Felipe', 18, 'Curitiba', 'Santos', 14, 'Recife');
INSERT INTO Jogador  (nome, idade, time_atual, time_revelacao, gols, cidade) VALUES('Marquinhos Gabriel', 33, 'Fluminense', 'Bahia', 10, 'Belem');
INSERT INTO Jogador  (nome, idade, time_atual, time_revelacao, gols, cidade) VALUES('Carlos', 27, 'Fluminense', 'Vitoria', 17, 'São Paulo');
INSERT INTO Jogador  (nome, idade, time_atual, time_revelacao, gols, cidade) VALUES('Juevaz Marques', 25, 'Santos', 'River Plate', 40, 'Buenos Aires');
INSERT INTO Jogador  (nome, idade, time_atual, time_revelacao, gols, cidade) VALUES('Marcelo Moreno', 34, 'Corinthians', 'Bolivar', 33, 'La Paz');
INSERT INTO Jogador  (nome, idade, time_atual, time_revelacao, gols, cidade) VALUES('Anthony', 18, 'Santa Cruz', 'Santos', 1, 'Belem');
INSERT INTO Jogador  (nome, idade, time_atual, time_revelacao, gols, cidade) VALUES('Neymar', 29, 'Santos', 'Santos', 11, 'São Paulo');
INSERT INTO Jogador  (nome, idade, time_atual, time_revelacao, gols, cidade) VALUES('Rivelino', 30, 'Sem Clube', 'Bahia', 51, 'Rio de Janeiro');
INSERT INTO Jogador  (nome, idade, time_atual, time_revelacao, gols, cidade) VALUES('Magrão', 31, 'Sport', 'Sport', 4, 'Recife');
INSERT INTO Jogador  (nome, idade, time_atual, time_revelacao, gols, cidade) VALUES('Vinicius Junior', 16, 'Flamengo', 'Flamengo', 22, 'Rio de Janeiro');
