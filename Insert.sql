
INSERT INTO Genre (Name) VALUES 
('Rock'),
('Pop'),
('Jazz');

INSERT INTO artists (Name) VALUES
('Artist 1'),
('Artist 2'),
('Artist 3'),
('Artist 4');

INSERT INTO albums (name,releaseyear) VALUES
('Album One',2019),
('Album Two',2021),
('Album Three',2020);

INSERT INTO songs (album,name,length) VALUES
(1, 'Song One', 210),
(1, 'Song Two', 240),
(2, 'Song Three', 225),
(2, 'Song Four', 260),
(3, 'Song Five', 300),
(3, 'Song Six', 170);

INSERT INTO compilations (name,releaseyear) VALUES
('Compilation One',2018),
('Compilation Two',2020),
('Compilation Three',2017),
('Compilation Four',2021);

INSERT INTO ArtistGenre (ArtistID, GenreID) VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 1),
(4, 2);

INSERT INTO ArtistAlbum (ArtistID, AlbumID) VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 1);

INSERT INTO CompilationSong (CompilationID, SongID) VALUES 
(1, 1),
(1, 2),
(2, 3),
(2, 4), 
(3, 5),
(3, 6),
(4, 1), 
(4, 3);





