
# Ejercicio 1

let arrayNumeros = [1,2,3,10,100]
var majorNumber = 0
var previewNumber = 0
for numero in arrayNumeros {
    var currentNumber = numero
    if (currentNumber > previewNumber) {
        majorNumber = currentNumber
        previewNumber = currentNumber
    }else {
        previewNumber = currentNumber
    }
}

print(majorNumber)
