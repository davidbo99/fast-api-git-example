import numpy as np
 
class Prueba(object):
    dura = 0
 
    def __init__(self, yy):
        print("Se inicializa")
        self.n = yy
 
    def suma(self):
        Prueba.dura += 1
        self.cf = np.array([[yy[0]], [yy[1]], [yy[2]]])
 
    def resta(self):
        Prueba.dura -= 1
 
    def muestra(self):
        print("dura: ", Prueba.dura)
 
#                     main               ====================
yy = [1, 2, 3]
test1 = Prueba(1)
test2 = Prueba(2)
test1.suma()
yy = [4, 5, 6]
test2.suma()
test3 = Prueba(3)
test3.suma()
test3.muestra()
test1.muestra()
print(test1.cf)
print(test2.cf)
print(test3.cf)
