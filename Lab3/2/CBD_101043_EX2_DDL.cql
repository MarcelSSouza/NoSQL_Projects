CREATE KEYSPACE IF NOT EXISTS cbd_101043_ex2 WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : 1 };

USE cbd_101043_ex2;

CREATE TABLE User ( email text, username text, name text, reg_timestamp timestamp, PRIMARY KEY(email));

CREATE TABLE Video (id uuid, author text, name text, upload_timestamp timestamp, description text, tags list<text>, PRIMARY KEY(id, author, upload_timestamp)) WITH CLUSTERING ORDER BY (author ASC, upload_timestamp DESC);

CREATE TABLE Comment_per_author(id uuid,video_id uuid,author text,comment text,upload_timestamp timestamp,PRIMARY KEY (author, upload_timestamp))WITH CLUSTERING ORDER BY (upload_timestamp DESC);

CREATE TABLE Comment_per_video(id uuid,video_id uuid,author text,comment text,upload_timestamp timestamp,PRIMARY KEY (video_id, upload_timestamp))WITH CLUSTERING ORDER BY (upload_timestamp DESC);

CREATE TABLE Follower(user text,video_id uuid,PRIMARY KEY ((user, video_id)));
                     
CREATE TABLE Event(id uuid,user text,video_id uuid,action text,real_timestamp timestamp,video_timestamp int,PRIMARY KEY((user, video_id), real_timestamp, video_timestamp))WITH CLUSTERING ORDER BY (real_timestamp DESC);
      
CREATE TABLE Rating(id uuid,video_id uuid,value int,PRIMARY KEY(video_id, id));   

