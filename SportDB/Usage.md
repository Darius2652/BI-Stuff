# Display all Players / Teams

```sql
SELECT Players.*, TeamName FROM Players, Teams WHERE Players.TeamID = Teams.TeamID -- List all players with their team name
SELECT * FROM Teams -- List all teams
```

# Queries to let teams win matches

```sql
Execute TeamWin 2     -- Let team with TeamID 2 win a match
Execute TeamWin 3, 4  -- Let team with TeamID 3 win 4 matches
```

# Queries to swap players

```sql
EXECUTE SwitchPlayers 2, 4 -- Switches teams of player with PlayerID 2 and player with PlayerID 4
```
