#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
NUMBER=$(( RANDOM % 1000 ))
GUESSES=0
echo $NUMBER
CHECK_GUESS() {
  INPUT=$1
  ((GUESSES++))
  if [[ ! $INPUT =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    read NEW_GUESS
    CHECK_GUESS $NEW_GUESS
  elif [[ $INPUT -gt $NUMBER ]] 
    then
      echo "It's lower than that, guess again:"
      read NEW_GUESS
      CHECK_GUESS $NEW_GUESS
    elif [[ $INPUT -lt $NUMBER ]]
  then 
    echo "It's higher than that, guess again:"
    read NEW_GUESS
    CHECK_GUESS $NEW_GUESS
  elif [[ $INPUT -eq $NUMBER ]]
  then
    GAME_INSERT=$($PSQL "INSERT INTO games(user_id, guesses, secret_number) VALUES($USER_ID, $GUESSES, $NUMBER)")
    echo "You guessed it in $GUESSES tries. The secret number was $NUMBER. Nice job!"
  fi
}


echo "Enter your username:"
read USERNAME

USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")

if [[ -z $USER_ID ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  INSERT_USER=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
else
GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games INNER JOIN users USING(user_id) WHERE user_id=$USER_ID")
BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games INNER JOIN users USING(user_id) WHERE user_id=$USER_ID")

if [[ -z $BEST_GAME ]]
then 
  BEST_GAME=0
fi
echo $BEST_GAME
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

echo "Guess the secret number between 1 and 1000:"
read GUESS
CHECK_GUESS $GUESS




