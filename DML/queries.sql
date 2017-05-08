\c sql_music

-- get albums with songs
SELECT albums.name AS album_name, songs.name AS song_name
FROM songs
JOIN albums
ON albums.id = songs.album_id;

-- get songs with artists

SELECT songs.name AS song_name, artists.name AS artist_name
FROM songs
JOIN artists_songs
ON artists_songs.song_id = songs.id
JOIN artists
ON artists.id = artists_songs.artist_id;
