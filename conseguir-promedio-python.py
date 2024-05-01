from functools import reduce


def get_average(lista):
    suma = reduce(lambda a, b: a + b, lista)
    return suma / len(lista)


print(get_average(range(1, 7)))
