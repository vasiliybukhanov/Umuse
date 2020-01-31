USE master;
GO
IF DB_ID ( N'Umuse' ) IS NOT NULL
DROP DATABASE Umuse;
GO
CREATE DATABASE Umuse;
GO

USE Umuse;

CREATE TABLE Artist (
 ID int IDENTITY(1,1) NOT NULL PRIMARY KEY,
 ArtistName nvarchar(255) NOT NULL
);
GO

CREATE TABLE Genre (
  ID int IDENTITY(1,1) NOT NULL PRIMARY KEY,
  GenreName nvarchar(50) NOT NULL UNIQUE NONCLUSTERED
);
GO

CREATE TABLE Album (
  ID int IDENTITY(1,1) NOT NULL PRIMARY KEY,
  AlbumName nvarchar(255) NOT NULL,
  ArtistID int NOT NULL,
  ReleaseYear int CHECK (ReleaseYear >= 1960 AND ReleaseYear <= YEAR(GETDATE())),
  GenreID int NOT NULL

  CONSTRAINT FK_Album_Artist FOREIGN KEY (ArtistID)
    REFERENCES dbo.Artist (ID)
    ON DELETE CASCADE
    ON UPDATE CASCADE,

  CONSTRAINT FK_Album_Genre FOREIGN KEY (GenreID)
    REFERENCES dbo.Genre (ID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);
GO

CREATE TABLE Track (
  ID int IDENTITY(1,1) NOT NULL PRIMARY KEY,
  TrackName nvarchar(255) NOT NULL,
  ArtistID int NOT NULL,
  AlbumID int,

  CONSTRAINT FK_Track_Artist FOREIGN KEY (ArtistID)
    REFERENCES dbo.Artist (ID)
    ON DELETE CASCADE
    ON UPDATE CASCADE,

  CONSTRAINT FK_Track_Album FOREIGN KEY (AlbumID)
    REFERENCES dbo.Album (ID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);
GO

CREATE TABLE UserProfile (
  ID int IDENTITY(1,1) NOT NULL PRIMARY KEY,
  FirstName nvarchar (50) NOT NULL,
  LastName nvarchar (50) NOT NULL,
  Email nvarchar (50) NOT NULL,
  IsAdmin bit DEFAULT 0
);
GO

CREATE TABLE Playlist (
  ID int IDENTITY(1,1) NOT NULL PRIMARY KEY,
  CreatorID int NOT NULL,
  UserRating decimal(2,1) NOT NULL,  

  CONSTRAINT FK_Playlist_Creator FOREIGN KEY (CreatorID)
    REFERENCES dbo.UserProfile (ID)
    ON DELETE CASCADE
    ON UPDATE CASCADE   
);
GO

CREATE TABLE UserPlaylist (
  UserID int NOT NULL,
  PlaylistID int NOT NULL,

  CONSTRAINT PK_UserPlaylist PRIMARY KEY (UserID, PlaylistID),

  CONSTRAINT FK_UserPlaylist_User FOREIGN KEY (UserID)
    REFERENCES dbo.UserProfile (ID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,

  CONSTRAINT FK_UserPlaylist_Playlist FOREIGN KEY (PlaylistID)
    REFERENCES dbo.Playlist (ID)
    ON DELETE CASCADE
    ON UPDATE CASCADE    
);
GO

CREATE TABLE PlaylistTrack (
  TrackID int NOT NULL,
  PlaylistID int NOT NULL,

  CONSTRAINT PK_PlaylistTrack PRIMARY KEY (TrackID, PlaylistID),

  CONSTRAINT FK_PlaylistTrack_Track FOREIGN KEY (TrackID)
    REFERENCES dbo.Track (ID)
    ON DELETE CASCADE
    ON UPDATE CASCADE,

  CONSTRAINT FK_PlaylistTrack_Playlist FOREIGN KEY (PlaylistID)
    REFERENCES dbo.Playlist (ID)
    ON DELETE CASCADE
    ON UPDATE CASCADE  
);
