from functools import reduce

def get_average(lista):
    suma = reduce(lambda a, b: a + b, lista)
    return suma / len(lista)
    """
    suma = 0
    for num in lista:
        suma += num
      
    return suma / len(lista)
    """
    #return sum(lista) / len(lista)


print(get_average(range(1, 7)))