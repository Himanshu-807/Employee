x = 12e3
print(type(x))

x = 12j
print(type(x))


import random
print(random.randrange(1, 10))

import fractions

print(fractions.Fraction(1.5))

import decimal
print(decimal.Decimal(1.3))

import math

print(math.pi)

print(math.cos(math.pi))

print(math.exp(10))

print(math.log10(1000))

print(math.sinh(1))

print(math.factorial(6))

    ##add element in list
x = [89, 64, 99, 13, 73, 25, 68.66]
x.append(1)
print(x)

        ##call number by slicing
print(x[0])
print(x[-1])

    ##add number by its index number
x.insert(2, 77)
print(x)

    ##add list in another list
y = [59, 81, 94, 33]
x.extend(y)
print(x)

    ## remove number
x.remove(59)
print(x)

    ##remove number by index
x.pop(2)
print(x)

    ##loop in list
for y in x:
    print(y)
    ##return index number
for y in range(len(x)):
    print(y)