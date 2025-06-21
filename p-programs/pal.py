print ("check given word is palendrome or not")

word = (input("please enter a word: "))

pal = word[::-1]

if word == pal:
    print ("Given word is palendrome")
else:
    print ("given word is not a palindrome")