USE SportDB
GO

-- Remove procedures if they exist

DROP PROCEDURE IF EXISTS TeamWin
GO

DROP PROCEDURE IF EXISTS SwitchPlayers
GO

-- Create the procedures

--          Let a team win, and increment the players' and team Wins by the WinCount amount
CREATE PROCEDURE TeamWin(@TeamID int, @WinCount int = 1)
AS
Begin
	UPDATE Players SET Wins = Wins + @WinCount WHERE TeamID = @TeamID
	UPDATE Teams SET TotalWins = TotalWins + @WinCount WHERE TeamID = @TeamID
End

GO

--          Let teams swap out players by specifying two player IDs
CREATE PROCEDURE SwitchPlayers(@Player1 int, @Player2 int)
AS
Begin
	DECLARE @temp int

	SET @temp = (
		SELECT TeamID FROM Players WHERE PlayerID = @Player1
	)

	UPDATE Players SET TeamID = (
		SELECT TeamID FROM Players WHERE PlayerID = @Player2
	) WHERE PlayerID = @Player1

	UPDATE Players SET TeamID = @temp WHERE PlayerID = @Player2
End

GO

USE master
