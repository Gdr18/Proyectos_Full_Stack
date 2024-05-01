#Entendí mal el ejercicio

def pretty_price(bruto, margin):
    if margin == int(margin):
        margin = '0.' + str(margin)
        margin = float(margin)
        return bruto + margin
    elif margin == float(margin):
        return bruto + margin
  

print(pretty_price(3.44, 0.55))
print(pretty_price(3.44, 55))
print(pretty_price(3.44, .55))
print(pretty_price(3, 2))



#Se buscaba que el resultado fuera 3.95 y que se le pasara, pretty_price(3.5, 0.95) y diera ese resultado.

#Solución Jordan

def pretty_price(gross_price, extension):
    if isinstance(extension, int):
        extension = extension * 0.01

    return int(gross_price) + extension


print(pretty_price(3.20, 99))
print(pretty_price(3.99, 0.20))
print(pretty_price(3.20, .95))
print(pretty_price(3, 95))
print(pretty_price(3, 2))


