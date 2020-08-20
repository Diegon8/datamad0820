#Example: 

eggs = (1,3,8,3,2)

my_listComprehension = [1/egg for egg in eggs]

print(my_listComprehension)

#Insert here the module/library import statements 

import os
import random


#1. Calculate the square number of the first 20 numbers. Use square as the name of the list.
# Remember to use list comprehensions and to print your results

print('Problem1 :')
square = [i**2 for i in list(range(1,21))]
print(square)



#2. Calculate the first 50 power of two. Use power_of_two as the name of the list.
# Remember to use list comprehensions and to print your results

print('Problem2 :')
power_of_two = [2**i for i in list(range(1,51))]
print(power_of_two)



#3. Calculate the square root of the first 100 numbers. Use sqrt as the name of the list.
# You will probably need to install math library with pip and import it in this file.  
# Remember to use list comprehensions and to print your results
print('Problem3 :')

sqrt = [i**(1/2) for i in range(1,101)]
print(sqrt)


#4. Create this list [-10,-9,-8,-7,-6,-5,-4,-3,-2,-1,0]. Use my_list as the name of the list.
# Remember to use list comprehensions and to print your results
print('Problem4 :')

my_list = [i for i in(range(-10,1))]
print(my_list)


#5. Find the odd numbers from 1-100. Use odds as the name of the list. 
# Remember to use list comprehensions and to print your results
print('Problem5 :')

odds = [i for i in (range(1,100,2))]
print(odds)



#6. Find all of the numbers from 1-1000 that are divisible by 7. Use divisible_by_seven as the name of the list.
# Remember to use list comprehensions and to print your results

print('Problem6 :')

def div7(num):
    if num%7 == 0:
        return True
    else:
        return False
divisible_by_seven = [i if div7(i) else "" for i in range(1,1001)]
print(divisible_by_seven)

# NO CONSIGO QUE EL ELSE NO DEVUELVA NADA Y QUEDA UNA LISTA MUY FEA CON LAS COMILLAS



#7. Remove all of the vowels in a string. Hint: make a list of the non-vowels. Use non_vowels as the name of the list.
# Remember to use list comprehensions and to print your results
# You can use the following test string but feel free to modify at your convenience

print('Problem7 :')

non_vowels = 'Hey there, Im using python and it is cool'
vowels = ('a','e','i','o','u')  
non_vowels = non_vowels.lower()
for x in non_vowels:
   if x in vowels:
       non_vowels = non_vowels.replace(x, '') 
print(non_vowels)

#USANDO LIST COMPREHENSION ME QUEDABA OTTRA VEZ CON COMILLAS Y ESPACIOS DENTRO DE LA LISTA, DEJO EL CÓDIGO DEBAJO
'''  
sentence = 'Hey there, Im using python and it is cool'
vowels=['a','e','i','o','u']
non_vowels=[i for i in sentence if i not in vowels]
print(non_vowels)
'''   


#8. Find the capital letters (and not white space) in the sentence 'The Quick Brown Fox Jumped Over The Lazy Dog'. 
# Use capital_letters as the name of the list.  
# Remember to use list comprehensions and to print your results

print('Problem 8 :')
sentence='The Quick Brown Fox Jumped Over The Lazy Dog'
dicnum=dict(enumerate(sentence))
capital_letters=[v for k,v in dicnum.items() if v.isupper()==True]
print(capital_letters)


#9. Find all the consonants in the sentence 'The quick brown fox jumped over the lazy dog'.
# Use consonants as the name of the list.
# Remember to use list comprehensions and to print your results.

print('Problem9 :')

non_vowels = 'The quick brown fox jumped over the lazy dog'
vowels = ('a','e','i','o','u')  
non_vowels = non_vowels.lower()
for x in non_vowels:
   if x in vowels:
       non_vowels = non_vowels.replace(x, '') 
print(non_vowels)




#10. Find the folders you have in your datamad0820 local repo. Use files as name of the list.  
# You will probably need to import os library and some of its modules. You will need to make some online research.
# Remember to use list comprehensions and to print your results.
print('Problem10 :')

files=[os.listdir('/home/diegon8/datamad0820/')]
print(files)


#11. Create 4 lists of 10 random numbers between 0 and 100 each. Use random_lists as the name of the list. 
#You will probably need to import random module
# Remember to use list comprehensions and to print your results

print('Problem 11 :')

random_lists = [[random.randint(0,100) for i in range(10)] for x in range(4)]
print(random_lists)



#12. Flatten the following list of lists. Use flatten_list as the name of the output.
# Remember to use list comprehensions and to print your results

print('Problem 12 :')

list_of_lists = [[1,2,3],[4,5,6],[7,8,9]]

flatten_list = [i for sub in list_of_lists for i in sub]

print(flatten_list)



#13. Convert the numbers of the following nested list to floats. Use floats as the name of the list. 
# Remember to use list comprehensions and to print your results.

list_of_lists = [['40', '20', '10', '30'], ['20', '20', '20', '20', '20', '30', '20'], \
['30', '20', '30', '50', '10', '30', '20', '20', '20'], ['100', '100'], ['100', '100', '100', '100', '100'], \
['100', '100', '100', '100']]


floats = [float(i) for lst in list_of_lists for i in lst]

print(floats)




#14. Handle the exception thrown by the code below by using try and except blocks. 

print('Problem14 :')
try:
    for i in ['a','b','c']:
        print(i**2)
except Exception as e:
        print("Ha fallado, verifique error")
        print(e)



#15. Handle the exception thrown by the code below by using try and except blocks. 
#Then use a finally block to print 'All Done.'
# Check in provided resources the type of error you may use. 
print('Problem15 :')

x = 5
y = 0
try:
    z = x/y
except ZeroDivisionError:
        print("No dividas por cero! Que haces, loco?")
#El copión jajajajaja
finally:
    print('All done')


#16. Handle the exception thrown by the code below by using try and except blocks. 
# Check in provided resources the type of error you may use. 

print('Problem 16 :')
abc=[10,20,20]
try:
    print(abc[3])
except IndexError:
    print("Error de índice en la cadena")


#17. Handle at least two kind of different exceptions when dividing a couple of numbers provided by the user. 
# Hint: take a look on python input function. 
# Check in provided resources the type of error you may use. 

print('Problem 17 :')

#NO CONSIGO VERLO!!!!
'''
x = input('Introduce un numero:' )
y = input('Introduce otro numero:')

def division(x,y):
    try:
        return x/y
    except TypeError:
        print("Tipo invalido. a y b deben ser int o float")
    except ZeroDivisionError:
        print("No dividas por cero! Que haces, loco?")
    except Exception as e:
        print("Ha fallado, verifique error")
        print(e)

'''




#18. Handle the exception thrown by the code below by using try and except blocks. 
# Check in provided resources the type of error you may use. 

print('Problem 18 :')
try:
    f = open('testfile','r')
    f.write('Test write this')
except FileNotFoundError:
    print("Archivo no encontrado...")



'''
#19. Handle the exceptions that can be thrown by the code below using try and except blocks. 
#Hint: the file could not exist and the data could not be convertable to int

fp = open('myfile.txt')
    line = f.readline()
    i = int(s.strip())




#20. The following function can only run on a Linux system. 
# The assert in this function will throw an exception if you call it on an operating system other than Linux. 
# Handle this exception using try and except blocks. 
# You will probably need to import sys 

def linux_interaction():
    assert ('linux' in sys.platform), "Function can only run on Linux systems."
    print('Doing something.')


# Bonus Questions:

# You will need to make some research on dictionary comprehension to solve the following questions

#21.  Write a function that asks for an integer and prints the square of it. 
# Hint: we need to continually keep checking until we get an integer.
# Use a while loop with a try,except, else block to account for incorrect inputs.




# 22. Find all of the numbers from 1-1000 that are divisible by any single digit besides 1 (2-9). 
# Use results as the name of the list 




# 23. Define a customised exception to handle not accepted values. 
# You have the following user inputs and the Num_of_sections can not be less than 2.
# Hint: Create a class derived from the pre-defined Exception class in Python

Total_Marks = int(input("Enter Total Marks Scored: ")) 
Num_of_Sections = int(input("Enter Num of Sections: ")) '''
