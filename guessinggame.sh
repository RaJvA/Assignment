echo "Welcome to the guessing game program. Here you will have to guess the number of files in the current directory. Wish you good luck! "
guess=null
while [[ $guess != $( ls | wc -l ) ]]
 do
  echo -n "Please enter your guess of the number of files in the directory: "
  read response
  if [[ $response =~ [0-9] ]]
   then
    echo -n "Non-integer input. Please enter another value: "
    read response
  fi
  if [[ $( isgreater $guess $( ls | wc -l ) ) -eq true ]]
   then
    echo "Your guess is greater than required. Try again."
   else
    echo "Your guess is lesser than required. Try again."
 fi
done
echo "Congratulations! You guessed the right number! " 

function isgreater {
 if [[ $1 -gt $2 ]]
  then
   echo true
  else
   echo false
 fi
}
