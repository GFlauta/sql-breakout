\c sql_music

TRUNCATE artists_songs CASCADE;

-- create artists_songs

INSERT INTO artists_songs (artist_id, song_id)
VALUES
((SELECT id FROM artists WHERE name = 'Kendrick Lamar'), (SELECT id FROM songs WHERE name = 'Poetic Justice')),
((SELECT id FROM artists WHERE name = 'Drake'), (SELECT id FROM songs WHERE name = 'Poetic Justice')),
((SELECT id FROM artists WHERE name = 'Nicki Minaj'), (SELECT id FROM songs WHERE name = 'Moment 4 Life')),
((SELECT id FROM artists WHERE name = 'Drake'), (SELECT id FROM songs WHERE name = 'Moment 4 Life')),
((SELECT id FROM artists WHERE name = 'Lil Wayne'), (SELECT id FROM songs WHERE name = 'Believe Me')),
((SELECT id FROM artists WHERE name = 'Drake'), (SELECT id FROM songs WHERE name = 'Believe Me')),
((SELECT id FROM artists WHERE name = 'Drake'), (SELECT id FROM songs WHERE name = 'Buried Alive')),
((SELECT id FROM artists WHERE name = 'Kendrick Lamar'), (SELECT id FROM songs WHERE name = 'Buried Alive'));
