print("not 1 == 1")
test_not = not 1 == 1
print(test_not)


print("not 1 == 2")
test_not2 = not 1 == 2
print(test_not2)


# indents for print are required here
home = "America"
if home == "America":
    print("Hello, America!")
else:
    print("Hello, World!")


home = "Canada"
if home =="America":
    print("Hello, America!")
else:
    print("Hello, World!")

x = 2
# print("X is " + x)
print("x")
print(x)
if x == 2:
    print("The number is 2.")
if x % 2 == 0:
    print("The number is even.")
if x % 2 != 0:
    print("The number is odd.")    


x = 10
y = 11

if x == 10:
    if y ==11:
        print(x + y)


home = "Thailand"
if home == "Japan":
    print("Hello, Japan!")
elif home == "Thailand":
    print("Hello, Thailand!")
elif home == "India":
    print("Hello, India!")
elif home == "China":
    print("Hello, China!")
else:
    print("Hello, World!")   

# Mars is not an option so Hello, World!
home = "Mars"
if home == "America":
    print("Hello, America!")
elif home == "Canada":
    print("Hello, Canada!")
elif home == "Thailand":
    print("Hello, Thailand!")
elif home == "Mexico":
    print("Hello, Mexico!")
else:
    print("Hello, World!")         