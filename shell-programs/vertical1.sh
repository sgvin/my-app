echo "please enter a word: "
read word

echo -e "$word \n"

echo -e "print vertical\n"

for (( i=0; i<${#word}; i++ ))
do
    echo "${word:$i:1}"
done
