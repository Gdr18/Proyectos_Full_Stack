ventas_compañías = {
  'Google' : 10,
  'Facebook' : 20,
  'Twitter' : 5,
  'Offline' : 7,
}

histograma = {
  list(ventas_compañías.keys())[0] : list(ventas_compañías.values())[0] * '$',
  list(ventas_compañías.keys())[1] : list(ventas_compañías.values())[1] * '$',
  list(ventas_compañías.keys())[2] : list(ventas_compañías.values())[2] * '$',
  list(ventas_compañías.keys())[3] : list(ventas_compañías.values())[3] * '$',
}

print(histograma)



for compañías, ventas in ventas_compañías.items():
  ventas *= '$'
  histograma = compañías + ' : ' + ventas
  print(histograma)

"""
g $$$$$$$$$$$$$$$$$$$$
f $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
t $$$$$$$$$$
o $$$$$$$$$$$$
"""

sales = {
  'google': 20,
  'facebook': 42,
  'twitter': 10,
  'offline': 12,
}

print('g ' + sales['google'] * '$')
print('f ' + sales['facebook'] * '$')
print('t ' + sales['twitter'] * '$')
print('o ' + sales['offline'] * '$')