class Factorial:
    def __init__(self, numero):
        self.numero = numero

    def calcular(self):
        resultado = 1
        for i in range(2, self.numero + 1):
            resultado *= i
        return resultado

# Entrada similar
n = int(input("Número: "))
f = Factorial(n)
print("Factorial:", f.calcular())


