#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

LOGIN () {
echo "Enter your username: "
read USERNAME
USERNAME_LOOKUP=$($PSQL "SELECT username,games_played,best_game FROM users WHERE username='$USERNAME'")
NUM_OF_GUESSES=0
SECRET_NUMBER=$((1 + RANDOM & 1000 ))
if [[ -z $USERNAME_LOOKUP ]]
 then
   echo "Welcome, $USERNAME! It looks like this is your first time here."
   INSERT_USERNAME=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
   GUESS_GAME $SECRET_NUMBER "$1"
 else
   FORMATED_LOOKUP=$(echo $USERNAME_LOOKUP | sed -r 's/\|/ /g')
   echo "$FORMATED_LOOKUP" | while read USERNAME GAMES_PLAYED BEST_GAME
   do
     echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
   done
   GUESS_GAME $SECRET_NUMBER "$1"
fi
}

GUESS_GAME () {
if [[ $2 ]]
 then
   echo -e "\n$2"
fi
read USER_GUESS
   if ! [[ $USER_GUESS =~ ^[0-9]+$ ]]
     then
      NUM_OF_GUESSES=$((NUM_OF_GUESSES + 1))
      GUESS_GAME $1 "That is not an integer, guess again:"
    elif [[ $1 > $USER_GUESS  ]]
     then
     NUM_OF_GUESSES=$((NUM_OF_GUESSES + 1))
     GUESS_GAME $1 "It's higher than that, guess again:"
    elif [[ $1 < $USER_GUESS ]]
     then
      NUM_OF_GUESSES=$((NUM_OF_GUESSES + 1))
      GUESS_GAME $1 "It's lower than that, guess again:"
    elif [[ $1 == $USER_GUESS ]]
      then
       NUM_OF_GUESSES=$((NUM_OF_GUESSES + 1))
       ##Get user info
       USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
       GAMES_PLAYED=$($PSQL "SELECT games_played FROM users WHERE user_id=$USER_ID")
       ##add a game
       GAMES_PLAYED=$(($GAMES_PLAYED+1))
       ##insert new info
       INSERT_GAME_INFO=$($PSQL "INSERT INTO games(user_id, game_score) VALUES($USER_ID,$NUM_OF_GUESSES)")
       UPDATE_GAMES_PLAYED=$($PSQL "UPDATE users SET games_played=$(($GAMES_PLAYED)) WHERE user_id=$USER_ID")
       BEST_SCORE=$($PSQL "SELECT best_game from users WHERE user_id=$USER_ID")
       if [[ -z $BEST_SCORE || $BEST_SCORE < $NUM_OF_GUESSES ]]
         then
          UPDATE_BEST_GAME=$($PSQL "UPDATE users SET best_game=$NUM_OF_GUESSES WHERE user_id=$USER_ID")
       fi
       ##end game
        echo "You guessed it in $NUM_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
   fi 
   }

   LOGIN "Guess the secret number between 1 and 1000:"