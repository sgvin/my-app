print ("Biggest of given 3 number")

num1 = int(input("please enter first numebr: "))
num2 = int(input("please enter second number: "))
num3 = int(input("please enter third number: "))

if num1 > num2 & num1 > num3:
    print (f"{num1} is bigger")
elif num2 > num3:
    print(f"{num2} is bigger")
else:
    print(f"{num3} is bigger")