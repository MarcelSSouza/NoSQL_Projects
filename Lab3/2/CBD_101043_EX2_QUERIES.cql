-- EX:C:A
SELECT * FROM Video WHERE author = 'pedro@f.ag' ALLOW FILTERING;


-- EX:C:B
SELECT * FROM Comment_per_author WHERE author = 'ds@test.com' ORDER BY upload_timestamp DESC;

-- EX:C:C
SELECT * FROM Comment_per_video WHERE video_id = 19e006d0-0d6d-11ea-9d48-0b1cc2ad2f9d ORDER BY upload_timestamp DESC ;


-- EX:C:D
SELECT avg(value) as Average, count(value) as NoReviews FROM Rating WHERE video_id = 19e006d0-0d6d-11ea-9d48-0b1cc2ad2f9d;


-- EX:D:1
SELECT * FROM Comment_per_video WHERE video_id = 19e006d0-0d6d-11ea-9d48-0b1cc2ad2f9d  ORDER BY upload_timestamp DESC LIMIT 3;



-- EX:D:2
select tags from Video where id=08d02de0-69ed-11ed-8b90-8b11f0cc8707;


-- EX:D:3
cqlsh:partilhavideos> SELECT * FROM Video WHERE tags CONTAINS 'Aveiro' ALLOW FILTERING;

-- EX:D:4
SELECT * FROM EVENT WHERE user='ds@test.com' AND video_id=3ffcc5a0-0d4b-11ea-9d48-0b1cc2ad2f9d ORDER BY real_timestamp DESC LIMIT 5;

-- EX:D:5
SELECT * from Video LIMIT 10;

-- EX:D:6
-- Impossivel porque Cassandra não permite Global Querying.

-- EX:D:7
SELECT * FROM Follower WHERE video_id=19e006d0-0d6d-11ea-9d48-0b1cc2ad2f9d;


-- EX:D:8
--NAO FEITO

-- EX:D:9
--Impossivel porque Cassandra não permite Global Querying.

-- EX:D:10
SELECT * FROM Video ORDER BY id;

-- EX:D:11
--Como o Cassandra não permite Global Query, precisaríamos saber de antemão o nome das tags existentes e fazer a pesquisa para cada uma delas. Depois adicionar a uma lista.

-- EX:D:12
SELECT * FROM Follower;

-- EX:D:13
SELECT * FROM Video WHERE name= 'Hi, Im Bot3' ;