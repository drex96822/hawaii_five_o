#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

# Script to insert data from games.csv into worldcup database

# Clear tables
echo $($PSQL "TRUNCATE teams, games;")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
	if [[ $WINNER != "winner" ]]
	then
		#get team id for winners
		TEAM_ID_W=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'") 

		#if no team_id
		if [[ -z $TEAM_ID_W ]]
		then
			#Add new team name
			INSERT_TEAMNAME_W=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
			if [[ $INSERT_TEAMNAME_W == "INSERT 0 1" ]]
			then 
				echo Inserted new team, $WINNER
			fi

			#get new team_id
			TEAM_ID_W=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
		fi
	fi
	#For losers side
	if [[ $OPPONENT != "opponent" ]]
	then
		# get team_id
		TEAM_ID_L=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

		#if no team_id
		if [[ -z $TEAM_ID_L ]]
		then
			#add new loser name
			INSERT_TEAMNAME_L=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
			if [[ $INSERT_TEAMNAME_L == "INSERT 0 1" ]]
			then
				echo Inserted new loser team, $OPPONENT
			fi

			#get new loser team_id
			TEAM_ID_L=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
		fi
	fi
	#the above gets all of the team names into teams

	if [[ -n $TEAM_ID_W || -n $TEAM_ID_L ]]
	then
		if [[ $YEAR != "year" ]]
		then
		
			INSERT_GAME=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $TEAM_ID_W, $TEAM_ID_L, $WINNER_GOALS, $OPPONENT_GOALS)")
			if [[ $INSERT_GAME == "INSERT 0 1" ]]
			then 
				echo Game in!
        	fi
        fi
    fi
 

done