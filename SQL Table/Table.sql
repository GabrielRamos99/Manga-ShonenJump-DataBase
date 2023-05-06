CREATE DATABASE IF NOT EXISTS MYDataBase;

USE MYDataBase;

DROP TABLE IF EXISTS MANGA;

DROP TABLE IF EXISTS STUDIOS;

DROP TABLE IF EXISTS AUTHORS;

DROP TABLE IF EXISTS ANIME;

DROP TABLE IF EXISTS GENRE;

DROP TABLE IF EXISTS MANGA_AUTHOR;

DROP TABLE IF EXISTS MANGA_GENRE;

DROP TABLE IF EXISTS ANIME_GENRE;

CREATE TABLE MANGA (
  MangaId INT NOT NULL AUTO_INCREMENT,

  pre_quel INT DEFAULT NULL,

  manga_name VARCHAR(255) NOT NULL,
  chapters SMALLINT NOT NULL,
  volumes SMALLINT NOT NULL,
  mangaRating FLOAT DEFAULT NULL,
  start_date DATE NOT NULL,
  end_date DATE DEFAULT NULL,

  PRIMARY KEY (MangaId),
  KEY pre_quel (pre_quel),
  CONSTRAINT manga_ibfk_1 FOREIGN KEY (pre_quel) REFERENCES MANGA (MangaId) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=latin1;

LOCK TABLES MANGA WRITE;

UNLOCK TABLES;

CREATE TABLE STUDIOS (

  StudioId INT NOT NULL AUTO_INCREMENT,

  studioName VARCHAR(255) NOT NULL,
  studioOwner VARCHAR(255) NOT NULL,
  LCountry VARCHAR(255) NOT NULL,
  LCity VARCHAR(255) NOT NULL,

  PRIMARY KEY (StudioId)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=latin1;

LOCK TABLES STUDIOS WRITE;


UNLOCK TABLES;



CREATE TABLE AUTHORS (
  AuthorId INT NOT NULL AUTO_INCREMENT,

  authorName VARCHAR(255) NOT NULL,
  nationality VARCHAR(255) NOT NULL,
  date_of_birth DATE NOT NULL,
  date_of_death DATE DEFAULT NULL,

  PRIMARY KEY (AuthorId)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=latin1;

LOCK TABLES AUTHORS WRITE;


UNLOCK TABLES;


CREATE TABLE ANIME (

  AnimeId INT NOT NULL AUTO_INCREMENT,

  MangaId INT NOT NULL,
  StudioId INT NOT NULL,
  pre_quel INT DEFAULT NULL,

  animeName VARCHAR(255) NOT NULL,
  episode_number SMALLINT NOT NULL,
  animeRating FLOAT DEFAULT NULL,
  start_date DATE DEFAULT NULL,
  end_date DATE DEFAULT NULL,

  PRIMARY KEY (AnimeId),
  KEY pre_quel (pre_quel),
  CONSTRAINT anime_ibfk_1 FOREIGN KEY (pre_quel) REFERENCES ANIME (AnimeId) ON UPDATE CASCADE,
  KEY MangaId (MangaId),
  CONSTRAINT anime_ibfk_2 FOREIGN KEY (MangaId) REFERENCES MANGA (MangaId) ON UPDATE CASCADE,
  KEY StudioId (StudioId),
  CONSTRAINT anime_ibfk_3 FOREIGN KEY (StudioId) REFERENCES STUDIOS (StudioId) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=latin1;

LOCK TABLES ANIME WRITE;


UNLOCK TABLES;



CREATE TABLE GENRE (

  GenreId INT NOT NULL AUTO_INCREMENT,

  Label VARCHAR(64) DEFAULT NULL,

  PRIMARY KEY (GenreId),
  UNIQUE KEY Label (Label)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

LOCK TABLES GENRE WRITE;

UNLOCK TABLES;



CREATE TABLE MANGA_AUTHOR (

  MangaId INT NOT NULL,
  AuthorId INT NOT NULL,

  PRIMARY KEY (MangaId, AuthorId),
  KEY AuthorId (AuthorId),
  CONSTRAINT manga_author_ibfk_1 FOREIGN KEY (MangaId) REFERENCES MANGA (MangaId) ON UPDATE CASCADE,
  CONSTRAINT manga_author_ibfk_2 FOREIGN KEY (AuthorId) REFERENCES AUTHORS (AuthorId) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


LOCK TABLES MANGA_AUTHOR WRITE;

UNLOCK TABLES;


CREATE TABLE MANGA_GENRE (
  MangaId INT NOT NULL,
  GenreId INT NOT NULL,
  PRIMARY KEY (MangaId, GenreId),
  KEY GenreId (GenreId),
  CONSTRAINT manga_genre_ibfk_1 FOREIGN KEY (MangaId) REFERENCES MANGA (MangaId) ON UPDATE CASCADE,
  CONSTRAINT manga_genre_ibfk_2 FOREIGN KEY (GenreId) REFERENCES GENRE (GenreId) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES MANGA_GENRE WRITE;

UNLOCK TABLES;


CREATE TABLE ANIME_GENRE (
  AnimeId INT NOT NULL,
  GenreId INT NOT NULL,
  PRIMARY KEY (AnimeId, GenreId),
  KEY GenreId (GenreId),
  CONSTRAINT anime_genre_ibfk_1 FOREIGN KEY (AnimeId) REFERENCES ANIME (AnimeId) ON UPDATE CASCADE,
  CONSTRAINT anime_genre_ibfk_2 FOREIGN KEY (GenreId) REFERENCES GENRE (GenreId) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES ANIME_GENRE WRITE;

UNLOCK TABLES;
