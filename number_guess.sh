#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only -c"

NUMBER=$(( RANDOM % 1000 + 1 ))
COUNT=1
echo 'Enter your username:'
read USER

USERDATA=$($PSQL "SELECT * FROM games WHERE USERNAME='$USER'")
if [[ -z $USERDATA ]]
  then
  echo 'Welcome, '$USER'! It looks like this is your first time here.'
else
  GAMES_PLAYED=$($PSQL "select count(game_id) from games where username='$USER'")
  BEST_GAME=$($PSQL " select min(num_of_guess) from games where username='$USER'")
  echo 'Welcome back, '$USER'! You have played '$GAMES_PLAYED' games, and your best game took '$BEST_GAME' guesses.'
fi

MAIN(){
  if [[ $1 ]]
  then
    echo -e "\n$1"
  else
    echo -e '\nGuess the secret number between 1 and 1000:'
  fi
  read GUESS
  CHECK_INT
}

CHECK_INT(){
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    MAIN 'That is not an integer, guess again:'
  else
    COMP_GUESS
  fi
}

COMP_GUESS(){
  if [[ $GUESS == $NUMBER ]]
  then
    INSERTDATA=$($PSQL "INSERT into games(username,num_of_guess) values ('$USER','$COUNT')")
    echo -e "\nYou guessed it in $COUNT tries. The secret number was $NUMBER. Nice job!"
  else
    if [[ $GUESS > $NUMBER ]]
    then 
      COUNT=$((COUNT+1))
      MAIN "It's lower than that, guess again:"
    else 
      COUNT=$((COUNT+1))
      MAIN "It's higher than that, guess again:"
    fi
  fi
}

MAIN