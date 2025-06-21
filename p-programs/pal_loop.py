print("given word is palendrome or not")

word = (input("please enter a word: "))

is_palindrome = True

for i in range(len(word)//2):
    if word[i] != word[-(i+1)]:
        is_palindrome= False
        break

if is_palindrome:
    print(f"Given word {word} is palendrome ")
else:
    print(f"given word {word} is not palindrome")