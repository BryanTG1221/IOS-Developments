
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
# Ejercicio 3

```swift
var vector = [1,2,3,10,100]
vector.reverse()
print(vector)
```

# Ejercicio 4

```swift

import Foundation

let arrayA = [1,2,3,10,100]
let arrayB = [1,2,3,4,5,6]

var arrayDuplicado = [Int]()

for itemA in arrayB {
    for itemB in arrayA {
        if itemB == itemA {
            arrayDuplicado.append(itemB)
        }
    }
    
}


print(arrayDuplicado)


```

# Ejercicio 5

```swift

var cadena = "12345"
var array = Array(cadena)
print(array)


```

