
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

# Ejercicio 6

```swift

import Foundation

let arrayA = [[2,0,1],[3,0,0],[5,1,1]]
let arrayB = [[1,0,1],[1,2,1],[1,1,0]]
var arraySuma = [[Int]]()

for itemIndex in 0..<arrayA.count {
    var arryToAdd = [Int]()
    for itemIndexB in 0..<arrayB.count {
        var suma = arrayA[itemIndex][itemIndexB] + arrayB[itemIndex][itemIndexB]
        arryToAdd.append(suma)
    }
    arraySuma.append(arryToAdd)
}


print(arraySuma)

```

