--2.1
SELECT name,length FROM songs
WHERE length = (SELECT MAX(length) FROM songs);

--2.2
SELECT name,length FROM songs
WHERE length >= 210;

--2.3
SELECT name,releaseyear FROM compilations
WHERE releaseyear BETWEEN 2018 AND 2020;

--2.4
SELECT name FROM artists
WHERE name NOT LIKE '% %';

--2.5
SELECT name FROM songs
WHERE string_to_array(lower(name), ' ') && ARRAY['my','мой'];

--3.1
SELECT g.Name AS GenreName, COUNT(a.ID) AS ArtistCount
FROM Genre g
JOIN ArtistGenre ag ON g.ID = ag.GenreID
JOIN Artists a ON ag.ArtistID = a.ID
GROUP BY g.Name;

--3.2
SELECT COUNT(s.ID) AS TrackCount
FROM Albums a
JOIN Songs s ON a.ID = s.Album
WHERE a.releaseyear BETWEEN 2019 AND 2020;

--3.3
SELECT a.Name AS AlbumNAme, AVG(s.length) AS AverageDuration
FROM Albums a
JOIN Songs s ON a.ID = s.Album
GROUP BY a.ID, a.Name;

--3.4
SELECT a.Name AS ArtistName
FROM Artists a
WHERE a.ID NOT IN (
	SELECT DISTINCT a2.ID
	FROM Artists a2
	JOIN ArtistAlbum aa ON a2.ID = aa.ArtistID
	JOIN Albums al ON aa.AlbumID = al.ID
	WHERE al.releaseyear = 2020
);


--3.5
SELECT DISTINCT c.Name AS CompilationTitle
FROM Compilations c
JOIN CompilationSong cs ON c.ID = cs.CompilationID
JOIN Songs s ON cs.SongID = s.ID
JOIN Albums a ON s.Album = a.ID
JOIN ArtistAlbum aa ON a.ID = aa.AlbumID
JOIN Artists ar ON aa.ArtistID = ar.ID
WHERE ar.Name = 'Artist1';




