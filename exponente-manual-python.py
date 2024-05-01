#Mi respuesta

#manual
def exponente_manual(número, exponente):
    return número ** exponente

número = 4
exponente = 2

print(exponente_manual(número, exponente))

#funcional 
from functools import reduce
número = 4
exponente = 2
iterable = [número, exponente]

print(reduce(exponente_manual, iterable))

#Respuesta Jordan

#Enfoque funcional
from functools import reduce

def manual_exponent(num, exp):
   computed_list = [num] * exp
   return (reduce(lambda total, element: total * element, computed_list))


print(manual_exponent(2, 3))
print(manual_exponent(10, 2))
print(manual_exponent(3, 3))
print(manual_exponent(10, 5))

#Enfoque iteratibo
def manual_exponent(num, exp):
    counter = exp - 1
    total = num

    while counter > 0:
        total *= num
        counter -= 1

    return total

print(manual_exponent(2, 3))
print(manual_exponent(10, 2))
print(manual_exponent(3, 3))
print(manual_exponent(10, 5))
