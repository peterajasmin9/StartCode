def f(x=2):
    return x**x
print(f())
print(f(4))

# exponents x**x



def add_it(x, y=10):
    return x + y
result = add_it(2)
print(result)

# You can also define variables within the function
def f():
    x = 1
    y = 2
    z = 3
    print(x)
    print(y)
    print(z)
f()


# global variables, need to write 'global' within function to write to it
x = 100
def d():
    global x
    x += 1
    print(x)
d()