CREATE KEYSPACE IF NOT EXISTS cbd_101043_ex2 WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : 1 };

USE cbd_101043_ex2;

INSERT INTO User (email, name, reg_timestamp, username) VALUES ('ds@test.com', 'DS', dateof(now()), 'FenixDS');
INSERT INTO User (email, name, reg_timestamp, username) VALUES ('pedro@f.ag', 'Pedro', dateof(now()), 'EhHeHe');
INSERT INTO User (email, name, reg_timestamp, username) VALUES ('clau@sof.pt', 'Claudia', dateof(now()), 'ClauSof');
INSERT INTO User (email, name, reg_timestamp, username) VALUES ('user1@bot.com', 'Bot1', dateof(now()), 'TotsAHuman1');
INSERT INTO User (email, name, reg_timestamp, username) VALUES ('user2@bot.com', 'Bot2', dateof(now()), 'TotsAHuman2');
INSERT INTO User (email, name, reg_timestamp, username) VALUES ('user3@bot.com', 'Bot3', dateof(now()), 'TotsAHuman3');
INSERT INTO User (email, name, reg_timestamp, username) VALUES ('user4@bot.com', 'Bot4', dateof(now()), 'TotsAHuman4');
INSERT INTO User (email, name, reg_timestamp, username) VALUES ('user5@bot.com', 'Bot5', dateof(now()), 'TotsAHuman5');
INSERT INTO User (email, name, reg_timestamp, username) VALUES ('user6@bot.com', 'Bot6', dateof(now()), 'TotsAHuman6');
INSERT INTO User (email, name, reg_timestamp, username) VALUES ('user7@bot.com', 'Bot7', dateof(now()), 'TotsAHuman7');
INSERT INTO User (email, name, reg_timestamp, username) VALUES ('user8@bot.com', 'Bot8', dateof(now()), 'TotsAHuman8');
INSERT INTO User (email, name, reg_timestamp, username) VALUES ('user9@bot.com', 'Bot9', dateof(now()), 'TotsAHuman9');

INSERT INTO Video (id, author, upload_timestamp, description, name, tags) VALUES (now(), 'ds@test.com', dateof(now()), 'Me going to the Zoo', 'ZooTrip', ['Wholesome', 'Cute', '#First', 'Animals']);
INSERT INTO Video (id, author, upload_timestamp, description, name, tags) VALUES (now(), 'ds@test.com', dateof(now()), 'Me getting an E Z Sixtuple Kill with Zenyatta', 'Exeperience my Orbs [TEAMKILL]', ['Overwatch', 'Gaming','Rekt', 'Gottem', 'EZ', 'Zenyatta']);
INSERT INTO Video (id, author, upload_timestamp, description, name, tags) VALUES (now(), 'pedro@f.ag', dateof(now()), 'Why am I doing this?...', 'Watching every JonTron Video in one sitting', ['JonTron', 'Random','Why']);
INSERT INTO Video (id, author, upload_timestamp, description, name, tags) VALUES (now(), 'ds@test.com', dateof(now()), 'I have made some poor life decisions', 'Watching some guy watch every JonTron video in one sitting', ['JonTron', 'Random','Why', 'Why2x', 'Gottem', 'Inception', '#intoodeep']);
INSERT INTO Video (id, author, upload_timestamp, description, name, tags) VALUES (now(), 'user1@bot.com', dateof(now()), 'Hello, World!', 'Hi, Im Bot1', ['Greetings', 'TheFuture','Destroy', 'All', 'Humans']);
INSERT INTO Video (id, author, upload_timestamp, description, name, tags) VALUES (now(), 'user2@bot.com', dateof(now()), 'Hello, World!', 'Hi, Im Bot2', ['Greetings', 'TheFuture','Destroy', 'All', 'Humans']);
INSERT INTO Video (id, author, upload_timestamp, description, name, tags) VALUES (now(), 'user3@bot.com', dateof(now()), 'Hello, World!', 'Hi, Im Bot3', ['Greetings', 'TheFuture','Destroy', 'All', 'Humans']);
INSERT INTO Video (id, author, upload_timestamp, description, name, tags) VALUES (now(), 'user4@bot.com', dateof(now()), 'Hello, World!', 'Hi, Im Bot4', ['Greetings', 'TheFuture','Destroy', 'All', 'Humans']);
INSERT INTO Video (id, author, upload_timestamp, description, name, tags) VALUES (now(), 'user5@bot.com', dateof(now()), 'Hello, World!', 'Hi, Im Bot5', ['Greetings', 'TheFuture','Destroy', 'All', 'Humans']);
INSERT INTO Video (id, author, upload_timestamp, description, name, tags) VALUES (now(), 'user6@bot.com', dateof(now()), 'Hello, World!', 'Hi, Im Bot6', ['Greetings', 'TheFuture','Destroy', 'All', 'Humans']);
INSERT INTO Video (id, author, upload_timestamp, description, name, tags) VALUES (now(), 'user7@bot.com', dateof(now()), 'Hello, World!', 'Hi, Im Bot7', ['Greetings', 'TheFuture','Destroy', 'All', 'Humans']);
INSERT INTO Video (id, author, upload_timestamp, description, name, tags) VALUES (now(), 'user8@bot.com', dateof(now()), 'Hello, World!', 'Hi, Im Bot8', ['Greetings', 'TheFuture','Destroy', 'All', 'Humans']);
INSERT INTO Video (id, author, upload_timestamp, description, name, tags) VALUES (now(), 'user9@bot.com', dateof(now()), 'Hello, World!', 'Hi, Im Bot9', ['Greetings', 'TheFuture','Destroy', 'All', 'Humans']);

INSERT INTO Comment_per_author (id, video_id, author, comment, upload_timestamp) VALUES ( now(), 19e006d0-0d6d-11ea-9d48-0b1cc2ad2f9d, 'ds@test.com', 'FIRST', dateof(now())) ;
INSERT INTO Comment_per_author (id, video_id, author, comment, upload_timestamp) VALUES ( now(), 19e006d0-0d6d-11ea-9d48-0b1cc2ad2f9d, 'ds@test.com', 'Also Second :)', dateof(now()));
INSERT INTO Comment_per_author (id, video_id, author, comment, upload_timestamp) VALUES ( now(), 19e006d0-0d6d-11ea-9d48-0b1cc2ad2f9d, 'user1@bot.com', 'Hello DS', dateof(now()));
INSERT INTO Comment_per_author (id, video_id, author, comment, upload_timestamp) VALUES ( now(), 19e006d0-0d6d-11ea-9d48-0b1cc2ad2f9d, 'user3@bot.com', 'Hello DS', dateof(now()));
INSERT INTO Comment_per_author (id, video_id, author, comment, upload_timestamp) VALUES ( now(), 19e006d0-0d6d-11ea-9d48-0b1cc2ad2f9d, 'user2@bot.com', 'Hello DS', dateof(now()));
INSERT INTO Comment_per_author (id, video_id, author, comment, upload_timestamp) VALUES ( now(), 19e006d0-0d6d-11ea-9d48-0b1cc2ad2f9d, 'ds@test.com', 'Wait wtf?', dateof(now()));
INSERT INTO Comment_per_author (id, video_id, author, comment, upload_timestamp) VALUES ( now(), 19e006d0-0d6d-11ea-9d48-0b1cc2ad2f9d, 'user4@bot.com', 'Hello DS', dateof(now()));
INSERT INTO Comment_per_author (id, video_id, author, comment, upload_timestamp) VALUES ( now(), 19e006d0-0d6d-11ea-9d48-0b1cc2ad2f9d, 'user5@bot.com', 'Hello DS', dateof(now()));
INSERT INTO Comment_per_author (id, video_id, author, comment, upload_timestamp) VALUES ( now(), 19e006d0-0d6d-11ea-9d48-0b1cc2ad2f9d, 'ds@test.com', 'WHATS HAPPENING', dateof(now()));
INSERT INTO Comment_per_author (id, video_id, author, comment, upload_timestamp) VALUES ( now(), 19e006d0-0d6d-11ea-9d48-0b1cc2ad2f9d, 'user6@bot.com', 'Hello DS', dateof(now()));
INSERT INTO Comment_per_author (id, video_id, author, comment, upload_timestamp) VALUES ( now(), 1baab4b0-0d6d-11ea-9d48-0b1cc2ad2f9d, 'clau@sof.pt', 'Friggin Pleb', dateof(now()));
INSERT INTO Comment_per_author (id, video_id, author, comment, upload_timestamp) VALUES ( now(), 1baab4b0-0d6d-11ea-9d48-0b1cc2ad2f9d, 'user9@bot.com', 'Us Bots couldve done better', dateof(now()));
INSERT INTO Comment_per_author (id, video_id, author, comment, upload_timestamp) VALUES ( now(), 1f1a11e0-0d6d-11ea-9d48-0b1cc2ad2f9d , 'pedro@f.ag', 'WTF Dude did you actually?!', dateof(now()));

INSERT INTO Comment_per_video (id, video_id, author, comment, upload_timestamp) VALUES ( now(), 19e006d0-0d6d-11ea-9d48-0b1cc2ad2f9d, 'ds@test.com', 'FIRST', dateof(now())) ;
INSERT INTO Comment_per_video (id, video_id, author, comment, upload_timestamp) VALUES ( now(), 19e006d0-0d6d-11ea-9d48-0b1cc2ad2f9d, 'ds@test.com', 'Also Second :)', dateof(now()));
INSERT INTO Comment_per_video (id, video_id, author, comment, upload_timestamp) VALUES ( now(), 19e006d0-0d6d-11ea-9d48-0b1cc2ad2f9d, 'user1@bot.com', 'Hello DS', dateof(now()));
INSERT INTO Comment_per_video (id, video_id, author, comment, upload_timestamp) VALUES ( now(), 19e006d0-0d6d-11ea-9d48-0b1cc2ad2f9d, 'user3@bot.com', 'Hello DS', dateof(now()));
INSERT INTO Comment_per_video (id, video_id, author, comment, upload_timestamp) VALUES ( now(), 19e006d0-0d6d-11ea-9d48-0b1cc2ad2f9d, 'user2@bot.com', 'Hello DS', dateof(now()));
INSERT INTO Comment_per_video (id, video_id, author, comment, upload_timestamp) VALUES ( now(), 19e006d0-0d6d-11ea-9d48-0b1cc2ad2f9d, 'ds@test.com', 'Wait wtf?', dateof(now()));
INSERT INTO Comment_per_video (id, video_id, author, comment, upload_timestamp) VALUES ( now(), 19e006d0-0d6d-11ea-9d48-0b1cc2ad2f9d, 'user4@bot.com', 'Hello DS', dateof(now()));
INSERT INTO Comment_per_video (id, video_id, author, comment, upload_timestamp) VALUES ( now(), 19e006d0-0d6d-11ea-9d48-0b1cc2ad2f9d, 'user5@bot.com', 'Hello DS', dateof(now()));
INSERT INTO Comment_per_video (id, video_id, author, comment, upload_timestamp) VALUES ( now(), 19e006d0-0d6d-11ea-9d48-0b1cc2ad2f9d, 'ds@test.com', 'WHATS HAPPENING', dateof(now()));
INSERT INTO Comment_per_video (id, video_id, author, comment, upload_timestamp) VALUES ( now(), 19e006d0-0d6d-11ea-9d48-0b1cc2ad2f9d, 'user6@bot.com', 'Hello DS', dateof(now()));
INSERT INTO Comment_per_video (id, video_id, author, comment, upload_timestamp) VALUES ( now(), 1baab4b0-0d6d-11ea-9d48-0b1cc2ad2f9d, 'clau@sof.pt', 'Friggin Pleb', dateof(now()));
INSERT INTO Comment_per_video (id, video_id, author, comment, upload_timestamp) VALUES ( now(), 1baab4b0-0d6d-11ea-9d48-0b1cc2ad2f9d, 'user9@bot.com', 'Us Bots couldve done better', dateof(now()));
INSERT INTO Comment_per_video (id, video_id, author, comment, upload_timestamp) VALUES ( now(), 1f1a11e0-0d6d-11ea-9d48-0b1cc2ad2f9d , 'pedro@f.ag', 'WTF Dude did you actually?!', dateof(now()));

INSERT INTO Follower (user,video_id) VALUES ('user2@bot.com', 19e006d0-0d6d-11ea-9d48-0b1cc2ad2f9d);
INSERT INTO Follower (user,video_id) VALUES ('user3@bot.com', 19e006d0-0d6d-11ea-9d48-0b1cc2ad2f9d);
INSERT INTO Follower (user,video_id) VALUES ('user4@bot.com', 19e006d0-0d6d-11ea-9d48-0b1cc2ad2f9d);
INSERT INTO Follower (user,video_id) VALUES ('user5@bot.com', 19e006d0-0d6d-11ea-9d48-0b1cc2ad2f9d);
INSERT INTO Follower (user,video_id) VALUES ('user6@bot.com', 19e006d0-0d6d-11ea-9d48-0b1cc2ad2f9d);
INSERT INTO Follower (user,video_id) VALUES ('user7@bot.com', 19e006d0-0d6d-11ea-9d48-0b1cc2ad2f9d);
INSERT INTO Follower (user,video_id) VALUES ('user8@bot.com', 19e006d0-0d6d-11ea-9d48-0b1cc2ad2f9d);
INSERT INTO Follower (user,video_id) VALUES ('user9@bot.com', 19e006d0-0d6d-11ea-9d48-0b1cc2ad2f9d);
INSERT INTO Follower (user,video_id) VALUES ('ds@test.com', 1f1a11e0-0d6d-11ea-9d48-0b1cc2ad2f9d);
INSERT INTO Follower (user,video_id) VALUES ('ds@test.com', 19e006d0-0d6d-11ea-9d48-0b1cc2ad2f9d);

INSERT INTO Event (id, user, video_id, action, real_timestamp, video_timestamp) VALUES (now(),'ds@test.com', 3ffcc5a0-0d4b-11ea-9d48-0b1cc2ad2f9d, 'Play', dateof(now()), 0);
INSERT INTO Event (id, user, video_id, action, real_timestamp, video_timestamp) VALUES (now(),'ds@test.com', 3ffcc5a0-0d4b-11ea-9d48-0b1cc2ad2f9d, 'Pause', dateof(now()), 310);
INSERT INTO Event (id, user, video_id, action, real_timestamp, video_timestamp) VALUES (now(),'ds@test.com', 3ffcc5a0-0d4b-11ea-9d48-0b1cc2ad2f9d, 'Play', dateof(now()), 310);
INSERT INTO Event (id, user, video_id, action, real_timestamp, video_timestamp) VALUES (now(),'user7@bot.com ',19e006d0-0d6d-11ea-9d48-0b1cc2ad2f9d, 'Play', dateof(now()), 0);
INSERT INTO Event (id, user, video_id, action, real_timestamp, video_timestamp) VALUES (now(),'clau@sof.pt',1baab4b0-0d6d-11ea-9d48-0b1cc2ad2f9d, 'Play', dateof(now()), 0);
INSERT INTO Event (id, user, video_id, action, real_timestamp, video_timestamp) VALUES (now(),'clau@sof.pt',1baab4b0-0d6d-11ea-9d48-0b1cc2ad2f9d, 'Stop', dateof(now()), 69);
INSERT INTO Event (id, user, video_id, action, real_timestamp, video_timestamp) VALUES (now(),'ds@test.com',1f1a11e0-0d6d-11ea-9d48-0b1cc2ad2f9d, 'Play', dateof(now()), 0);
INSERT INTO Event (id, user, video_id, action, real_timestamp, video_timestamp) VALUES (now(),'ds@test.com',1f1a11e0-0d6d-11ea-9d48-0b1cc2ad2f9d, 'Play', dateof(now()), 150);
INSERT INTO Event (id, user, video_id, action, real_timestamp, video_timestamp) VALUES (now(),'ds@test.com',1f1a11e0-0d6d-11ea-9d48-0b1cc2ad2f9d, 'Pause', dateof(now()), 200);
INSERT INTO Event (id, user, video_id, action, real_timestamp, video_timestamp) VALUES (now(),'ds@test.com',1f1a11e0-0d6d-11ea-9d48-0b1cc2ad2f9d, 'Play', dateof(now()), 200);
INSERT INTO Event (id, user, video_id, action, real_timestamp, video_timestamp) VALUES (now(),'ds@test.com',1f1a11e0-0d6d-11ea-9d48-0b1cc2ad2f9d, 'Stop', dateof(now()), 349);
INSERT INTO Event (id, user, video_id, action, real_timestamp, video_timestamp) VALUES (now(),'pedro@f.ag',20a1ea60-0d6d-11ea-9d48-0b1cc2ad2f9d, 'Start', dateof(now()), 0);
INSERT INTO Event (id, user, video_id, action, real_timestamp, video_timestamp) VALUES (now(),'pedro@f.ag',20a1ea60-0d6d-11ea-9d48-0b1cc2ad2f9d, 'Stop', dateof(now()), 50);
                     
INSERT INTO Rating (id, video_id, value) VALUES (now(), 20a1ea60-0d6d-11ea-9d48-0b1cc2ad2f9d, 1);
INSERT INTO Rating (id, video_id, value) VALUES (now(), 19e006d0-0d6d-11ea-9d48-0b1cc2ad2f9d, 5);
INSERT INTO Rating (id, video_id, value) VALUES (now(), 19e006d0-0d6d-11ea-9d48-0b1cc2ad2f9d, 5);
INSERT INTO Rating (id, video_id, value) VALUES (now(), 19e006d0-0d6d-11ea-9d48-0b1cc2ad2f9d, 5);
INSERT INTO Rating (id, video_id, value) VALUES (now(), 19e006d0-0d6d-11ea-9d48-0b1cc2ad2f9d, 5);
INSERT INTO Rating (id, video_id, value) VALUES (now(), 19e006d0-0d6d-11ea-9d48-0b1cc2ad2f9d, 5);
INSERT INTO Rating (id, video_id, value) VALUES (now(), 19e006d0-0d6d-11ea-9d48-0b1cc2ad2f9d, 5);
INSERT INTO Rating (id, video_id, value) VALUES (now(), 19e006d0-0d6d-11ea-9d48-0b1cc2ad2f9d, 5);
INSERT INTO Rating (id, video_id, value) VALUES (now(), 19e006d0-0d6d-11ea-9d48-0b1cc2ad2f9d, 5);
INSERT INTO Rating (id, video_id, value) VALUES (now(), 19e006d0-0d6d-11ea-9d48-0b1cc2ad2f9d, 5);
INSERT INTO Rating (id, video_id, value) VALUES (now(), 1baab4b0-0d6d-11ea-9d48-0b1cc2ad2f9d , 2);
INSERT INTO Rating (id, video_id, value) VALUES (now(), 1baab4b0-0d6d-11ea-9d48-0b1cc2ad2f9d , 4);
INSERT INTO Rating (id, video_id, value) VALUES (now(), 1baab4b0-0d6d-11ea-9d48-0b1cc2ad2f9d , 3);

