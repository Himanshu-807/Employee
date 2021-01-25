x = "Hello World"
print(x)

##Slicing 
print(x[2:7])
print(x[6:])
print(x[-5:])
print(x[:-6])

## Modify String
print(x.upper())
print(x.lower())
y = " Hello World   "
print(y.strip())
print(y.replace("Hello", "Bye"))
print(x.split(","))

## Concatenation
a = "Hello"
b = "World"
print(a + b)
print(a + " " + b)

## Format 
age = 20
txt = "My Name is Himanshu And I Am {} Years Old"
print(txt.format(age))

age = 20
name = "Himanshu"
txt = "My Name is {1} And I Am {0} Years Old"
print(txt.format(age, name))

## Escape Character 

    ##Double Quote
txt = "My Name Is \"Himanshu\""
print(txt)

    #Single Quote
x = "It's Alright"
print(x)
x = 'It\'s Alright'
print(x)

    ##New Line
x = "Hello \nWorld"
print(x)

    ##Carriage Return
x = "Hello\rWorld"
print(x)

    ##Tab
x = "Hello\tWorld"
print(x)

    ##Backspace
x = "Hello  \bWorld"
print(x)

    ##Form Feed
x = "Hello\fWorld"
print(x)

##String Method
    ##Capitalize
x = "hello"
print(x.capitalize())

    ##Casefold
x = "HELLO"
print(x.casefold())

    ##center
x = "HEY"
##print(x.center('hey'))

    ##count
print(x.count('h'))

    ##encode
print(x.encode())