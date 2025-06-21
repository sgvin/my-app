word = input("please enter a word: ")

rev_word = ""
lenth = len(word)

for i in range(lenth-1, -1, -1):
    rev_word += word[i]


if word == rev_word:
    print("given word id palindrome")
else:
    print("given word is not a palindrome")
