# EJERCICIO 7 

Historial3 = [9530, 4120, 4580, 1500, 890,7516,426]

def function(Historial3):
    resultado = sum(Historial3)
    if resultado >= 4500:
        print('Se ha excedido del gasto promedio para su mascota')
    else : print('promedio de gasto en pesos por atención de Lennon es: ', resultado)

function(Historial3)