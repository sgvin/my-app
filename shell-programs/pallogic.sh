echo "ckeck given word is palindrome or not"

read -p "please enter a word: " word

reverse=""
len=${#word}

for (( i=$len-1; i>=0; i--)); do
    reverse="$reverse${word:$i:1}"
done

if [ $word == $reverse ]; then
    echo "given word is palindrome"
else
    echo "given word is not a palindrome"
fi