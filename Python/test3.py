a=10
b=15
c=20
if a > b and a > c:
    print("a is greater than b and c")
elif b > c:
    print("b is greater than a and c")
else:
    print("c is greater than a and b")

    l=[1, 2, 3, 4, 5]
    if(sum(l) > 10):
        print("Sum of list elements is greater than 10")
    elif(sum(l) == 10):    
        print("Sum of list elements is equal to 10")
    else:    
        print("Sum of list elements is less than 10")


for i in range(5):
    print("Current value of i:", i)     

for b in range(0, 100, 10):
    print("Current value of b:", b)    

s = "How are you?"
for i in s:
    print("Current character:", i)       

p = [1,3,5,2,6,8,11]
for l in p:
    if l % 2 == 0:
        print("Current even number:", l)
    else:
        print("Current odd number:", l)

for p1 in p:
    for p2 in range(2,p1):
        if p1 % p2 == 0:
            print(p1, "is not a prime number")
            break   