
# Ejercicio 1

```swift
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
```
# Ejercicio 2
```swift
var vector = [1,2,3,10,100]
vector.reverse()
print(vector)
```
