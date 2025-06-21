echo "check given word is palindrome or not"
read -p "please enter a word: " word

pal=$(echo "$word" | rev)

if [ "$word" == "$pal" ]
then
    echo "given word is palindrome"
else
    echo "given word is not a palindrome"
fi