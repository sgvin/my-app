n = int(input("please enter the number of rows: "))

for i in range(n):
  print(" " * (n-i-1), end="")
  print("*" * (2*i+1))