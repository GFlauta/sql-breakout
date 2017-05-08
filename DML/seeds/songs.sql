\c sql_music

TRUNCATE songs CASCADE;

-- create songs

INSERT INTO songs (name, explicit_lyrics, album_id)
VALUES
('Poetic Justice', true, (SELECT id FROM albums WHERE name = 'Good Kid, M.A.A.D. City')),
('Moment 4 Life', true, (SELECT id FROM albums WHERE name = 'Pink Friday')),
('Believe Me', true, (SELECT id FROM albums WHERE name = 'Tha Carter V')),
('Buried Alive', true, (SELECT id FROM albums WHERE name = 'Take Care'));
