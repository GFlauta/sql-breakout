\c sql_music;

-- drop tables first
DROP TABLE IF EXISTS artists, albums, songs, artists_songs, albums_artists;

-- create primary tables
CREATE TABLE artists (
  id serial PRIMARY KEY,
  name varchar(50) NOT NULL
);

CREATE TABLE albums (
  id serial PRIMARY KEY,
  name varchar(50) NOT NULL,
  genre varchar(50) NOT NULL
);

CREATE TABLE songs (
  id serial PRIMARY KEY,
  name varchar(50) NOT NULL,
  explicit_lyrics boolean DEFAULT false,
  album_id integer REFERENCES albums(id)
);

-- create join tables

CREATE TABLE artists_songs (
  artist_id integer REFERENCES artists(id),
  song_id integer REFERENCES songs(id)
);

CREATE TABLE albums_artists (
  album_id integer REFERENCES albums(id),
  artist_id integer REFERENCES artists(id)
);

\i /Users/Isaac/galvanize/g43/lesson-plans/sql-breakout/DML/seeds/artists.sql;
\i /Users/Isaac/galvanize/g43/lesson-plans/sql-breakout/DML/seeds/albums.sql;
\i /Users/Isaac/galvanize/g43/lesson-plans/sql-breakout/DML/seeds/songs.sql;
\i /Users/Isaac/galvanize/g43/lesson-plans/sql-breakout/DML/seeds/albums_artists.sql;
\i /Users/Isaac/galvanize/g43/lesson-plans/sql-breakout/DML/seeds/artists_songs.sql;
