lista = ["Rodrigo", "Germán", "Manuel", "Hernán"]
números = list(range(1, 101))


def remove_first_and_last(list_to_clean):
    if type(list_to_clean) == list:
        del list_to_clean[0], list_to_clean[-1]
    else:
        print("El argumento no es una lista")


remove_first_and_last(lista)

print(lista)
"""

#Solución Jordan

def remove_first_and_last(list_to_clean):
  if len(list_to_clean) >= 3: #Añadido por mí
    _, *content, _ = list_to_clean
    return content


html = ['<h1>', 'My content', '</h1>']

print(remove_first_and_last(html))

other_content_to_clean = ['', 'My content', 'Something else', '/']

print(remove_first_and_last(other_content_to_clean))

#Añadido por mí
not_enough = ['to clean']

print(remove_first_and_last(not_enough))
"""
