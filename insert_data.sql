USE Umuse;
GO

DELETE FROM Artist;
GO

SET IDENTITY_INSERT Artist ON;  
GO 

INSERT INTO Artist (ID, ArtistName)
VALUES (1, 'Guns N'' Roses');
INSERT INTO Artist (ID, ArtistName)
VALUES (2, 'Motley Crue');
INSERT INTO Artist (ID, ArtistName)
VALUES (3, 'Doors');
GO

SET IDENTITY_INSERT Artist OFF;  
GO 

DELETE FROM Genre;
GO

SET IDENTITY_INSERT Genre ON;  
GO 

INSERT INTO Genre (ID, GenreName)
VALUES (1, 'Glam Metal');
INSERT INTO Genre (ID, GenreName)
VALUES (2, 'Hard Rock');
INSERT INTO Genre (ID, GenreName)
VALUES (3, 'Psychedelic Rock');
GO

SET IDENTITY_INSERT Genre OFF;  
GO 

DELETE FROM Album;
GO

SET IDENTITY_INSERT Album ON;  
GO 

INSERT INTO  Album (ID, AlbumName, ArtistID, ReleaseYear, GenreID)
VALUES (1, 'Appetite For Destruction', 1, 1986, 2);
INSERT INTO  Album (ID, AlbumName, ArtistID, ReleaseYear, GenreID)
VALUES (2, 'Dr. Feelgood', 2, 1989, 1);
INSERT INTO  Album (ID, AlbumName, ArtistID, ReleaseYear, GenreID)
VALUES (3, 'Morrison Hotel', 3, 1970, 3);
GO

SET IDENTITY_INSERT Album OFF;  
GO 

DELETE FROM Track;
GO

SET IDENTITY_INSERT Track ON;  
GO 

INSERT INTO Track (ID, TrackName, AlbumID, ArtistID)
VALUES (1, 'Paradise City', 1, 1);
INSERT INTO Track (ID, TrackName, AlbumID, ArtistID)
VALUES (2, 'Welcome to the Jungle', 1, 1);
INSERT INTO Track (ID, TrackName, AlbumID, ArtistID)
VALUES (3, 'Nightrain', 1, 1);
INSERT INTO Track (ID, TrackName, AlbumID, ArtistID)
VALUES (4, 'You''re Crazy', 1, 1);

INSERT INTO Track (ID, TrackName, AlbumID, ArtistID)
VALUES (5, 'Dr. Feelgood', 2, 2);
INSERT INTO Track (ID, TrackName, AlbumID, ArtistID)
VALUES (6, 'Kickstart My Heart', 2, 2);
INSERT INTO Track (ID, TrackName, AlbumID, ArtistID)
VALUES (7, 'Same Ol'' Situation (S.O.S)', 2, 2);

INSERT INTO Track (ID, TrackName, AlbumID, ArtistID)
VALUES (8, 'Roadhouse Blues', 3, 3);
INSERT INTO Track (ID, TrackName, AlbumID, ArtistID)
VALUES (9, 'Waiting for the Sun', 3, 3);
INSERT INTO Track (ID, TrackName, AlbumID, ArtistID)
VALUES (10, 'Peace Frog', 3, 3);
GO

SET IDENTITY_INSERT Track OFF;  
GO 