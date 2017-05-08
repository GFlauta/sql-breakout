\c sql_music

TRUNCATE albums CASCADE;

-- create albums

INSERT INTO albums (name, genre)
VALUES
('Good Kid, M.A.A.D. City', 'Hip Hop'),
('Pink Friday', 'Hip Hop'),
('Tha Carter V', 'Hip Hop'),
('Take Care', 'Hip Hop');
