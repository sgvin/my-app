n= int(input("Please enter number of rows: "))

'''for i in range (n):
    print(" " * (n-i-1), end="")

    print(f"{i}" * (2*i+1))'''

for i in range(1, n+1):
    print(" "*(n-i), end="")
    print(f"{i}" * (2*i-1))