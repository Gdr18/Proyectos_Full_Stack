"""
Tools:
- math library
- sorted function
- list slicing
- computations
"""

import math

sale_prices = [
  100,
  83,
  220,
  40,
  100,
  400,
  10,
  1,
  3
]

ordered_list = sorted(sale_prices)
counted_list = len(ordered_list)
list_division = counted_list / 2
entero = math.floor(list_division)
mediana = ordered_list[entero]

print(ordered_list)
print(counted_list)
print(list_division)
print(entero)
print(mediana)


"""
SOLUCIÓN

sorted_list = sorted(sale_prices)
num_of_sales = len(sorted_list)
half_slice = math.floor(num_of_sales/2)
first_sales_items = sorted_list[:half_slice]
last_sales_items = sorted_list[-(half_slice):]
median = sorted_list[half_slice:(half_slice + 1)]

print(sorted_list)
print(num_of_sales)
print(first_sales_items)
print(last_sales_items)
print(median)
"""