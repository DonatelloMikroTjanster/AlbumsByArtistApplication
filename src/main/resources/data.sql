-- Insert Genres
INSERT IGNORE INTO genre (id, name)
VALUES
    (1, 'Rock'),
    (2, 'Pop'),
    (3, 'Technology'),
    (4, 'Nature');

-- Insert Artists
INSERT IGNORE INTO artist (id, name, genre_id)
VALUES
    (1, 'The Beatles', 1),
    (2, 'Michael Jackson', 2),
    (3, 'Elon Musk', 3),
    (4, 'David Attenborough', 4);

-- Insert Albums
INSERT IGNORE  INTO album (id, name, release_date)
VALUES
    (1, 'Abbey Road', '1969-09-26'),
    (2, 'Thriller', '1982-11-30'),
    (3, 'Tech Talk Series', '2023-01-01'),
    (4, 'Planet Earth II Series', '2016-11-06');

-- Insert Album-Artist relationships
INSERT IGNORE INTO album_artist (album_id, artist_id)
VALUES
    (1, 1),  -- Abbey Road - The Beatles
    (2, 2),  -- Thriller - Michael Jackson
    (3, 3),  -- Tech Talk Series - Elon Musk
    (4, 4);  -- Planet Earth II Series - David Attenborough