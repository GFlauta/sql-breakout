\c sql_music

TRUNCATE albums_artists CASCADE;

-- create albums_artists

INSERT INTO albums_artists (album_id, artist_id)
VALUES
((SELECT id FROM albums WHERE name = 'Good Kid, M.A.A.D. City'), (SELECT id FROM artists WHERE name = 'Kendrick Lamar')),
((SELECT id FROM albums WHERE name = 'Good Kid, M.A.A.D. City'), (SELECT id FROM artists WHERE name = 'Drake')),
((SELECT id FROM albums WHERE name = 'Pink Friday'), (SELECT id FROM artists WHERE name = 'Nicki Minaj')),
((SELECT id FROM albums WHERE name = 'Pink Friday'), (SELECT id FROM artists WHERE name = 'Drake')),
((SELECT id FROM albums WHERE name = 'Tha Carter V'), (SELECT id FROM artists WHERE name = 'Lil Wayne')),
((SELECT id FROM albums WHERE name = 'Tha Carter V'), (SELECT id FROM artists WHERE name = 'Drake')),
((SELECT id FROM albums WHERE name = 'Take Care'), (SELECT id FROM artists WHERE name = 'Drake')),
((SELECT id FROM albums WHERE name = 'Take Care'), (SELECT id FROM artists WHERE name = 'Kendrick Lamar'));
