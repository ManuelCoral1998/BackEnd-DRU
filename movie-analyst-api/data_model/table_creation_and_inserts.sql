CREATE TABLE movieDb.publication (name VARCHAR(255) PRIMARY KEY, avatar VARCHAR(21));
CREATE TABLE movieDb.reviewer (name VARCHAR(255) PRIMARY KEY, avatar VARCHAR(255), publication VARCHAR(255), FOREIGN KEY (publication) REFERENCES publication(name) ON DELETE CASCADE);
CREATE TABLE movieDb.moviereview (title VARCHAR(255) PRIMARY KEY, `release` VARCHAR(255), score INTEGER, reviewer VARCHAR(255), FOREIGN KEY (reviewer) REFERENCES reviewer(name) ON DELETE CASCADE);

INSERT INTO movieDb.publication (name, avatar) VALUES ('The Daily Reviewer', 'glyphicon-eye-open');
INSERT INTO movieDb.publication (name, avatar) VALUES ('International Movie Critic', 'glyphicon-fire');
INSERT INTO movieDb.publication (name, avatar) VALUES ('MoviesNow', 'glyphicon-time');
INSERT INTO movieDb.publication (name, avatar) VALUES ('MyNextReview', 'glyphicon-record');
INSERT INTO movieDb.publication (name, avatar) VALUES ('Movies n\' Games', 'glyphicon-heart-empty');
INSERT INTO movieDb.publication (name, avatar) VALUES ('TheOne', 'glyphicon-globe');
INSERT INTO movieDb.publication (name, avatar) VALUES ('ComicBookHero.com', 'glyphicon-flash');

INSERT INTO movieDb.reviewer (name, avatar, publication) VALUES ('Robert Smith','https://s3.amazonaws.com/uifaces/faces/twitter/angelcolberg/128.jpg','The Daily Reviewer');
INSERT INTO movieDb.reviewer (name, avatar, publication) VALUES ('Chris Harris','https://s3.amazonaws.com/uifaces/faces/twitter/bungiwan/128.jpg','International Movie Critic');
INSERT INTO movieDb.reviewer (name, avatar, publication) VALUES ('Janet Garcia','https://s3.amazonaws.com/uifaces/faces/twitter/grrr_nl/128.jpg','MoviesNow');
INSERT INTO movieDb.reviewer (name, avatar, publication) VALUES ('Andrew West','https://s3.amazonaws.com/uifaces/faces/twitter/d00maz/128.jpg','MyNextReview');
INSERT INTO movieDb.reviewer (name, avatar, publication) VALUES ('Mindy Lee','https://s3.amazonaws.com/uifaces/faces/twitter/laurengray/128.jpg','Movies n\' Games');
INSERT INTO movieDb.reviewer (name, avatar, publication) VALUES ('Martin Thomas','https://s3.amazonaws.com/uifaces/faces/twitter/karsh/128.jpg','TheOne');
INSERT INTO movieDb.reviewer (name, avatar, publication) VALUES ('Anthony Miller','https://s3.amazonaws.com/uifaces/faces/twitter/9lessons/128.jpg','ComicBookHero.com');

INSERT INTO movieDb.moviereview (title, `release`, score, reviewer) VALUES ('Deadpool', '2016', 11, 'Robert Smith');
INSERT INTO movieDb.moviereview (title, `release`, score, reviewer) VALUES ('Thor: Ragnarok', '2017', 7, 'Chris Harris');
INSERT INTO movieDb.moviereview (title, `release`, score, reviewer) VALUES ('It', '2017', 8, 'Janet Garcia');
INSERT INTO movieDb.moviereview (title, `release`, score, reviewer) VALUES ('Dunkirk', '2017', 8, 'Andrew West');
INSERT INTO movieDb.moviereview (title, `release`, score, reviewer) VALUES ('Logan', '2017', 8, 'Mindy Lee');
INSERT INTO movieDb.moviereview (title, `release`, score, reviewer) VALUES ('Batman V Superman', '2016', 6, 'Martin Thomas');
INSERT INTO movieDb.moviereview (title, `release`, score, reviewer) VALUES ('Mad Max: Fury Road', '2015', 6, 'Anthony Miller');
