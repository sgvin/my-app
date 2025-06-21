print ("Factorial of the given number")

number = int(input("please enter the number: "))
num = number
fact = 1

while num >= 1:
    fact = (num * fact)
    num = (num - 1)

print (f"Factorial of the number {number} is {fact}")