USE master
GO
DROP DATABASE IF EXISTS SportDB
GO
CREATE DATABASE SportDB
GO
USE SportDB
GO

CREATE TABLE Teams (
	TeamID int NOT NULL IDENTITY PRIMARY KEY,
	TeamName varchar(32),
	TotalWins int NOT NULL DEFAULT 0
)

CREATE TABLE Players (
	PlayerID int NOT NULL IDENTITY PRIMARY KEY,
	PlayerName varchar(32),
	Wins int DEFAULT 0,
	TeamID int,
	CONSTRAINT FK_PlayerTeam FOREIGN KEY (TeamID) REFERENCES Teams(TeamID)
)

INSERT INTO Teams (TeamName) VALUES ('NO TEAM'), ('Orange'), ('Blue')

INSERT INTO Players (PlayerName, TeamID) VALUES
	('ChrisR',		1),
	('Piet',		1),
	('Dian',		1),

	('Albert',		2),
	('Jaco',		2),
	('Bernhard',	2),
	('Llewellyn',	2),

	('Ryno',		3),
	('Rick',		3),
	('Waldrich',	3),
	('ChrisL',		3)
