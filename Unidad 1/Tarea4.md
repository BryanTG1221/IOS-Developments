
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

# Ejercicio 7

```swift

import Foundation

let arrayA = [[2,0,1],[3,0,0],[5,1,1]]
let arrayB = [[1,0,1],[1,2,1],[1,1,0]]
var arraySuma = [[Int]]()

for itemIndex in 0..<arrayA.count {
    var arryToAdd = [Int]()
    for itemIndexB in 0..<arrayB.count {
        var suma = arrayA[itemIndex][itemIndexB] - arrayB[itemIndex][itemIndexB]
        arryToAdd.append(suma)
    }
    arraySuma.append(arryToAdd)
}


print(arraySuma)

```

# Ejercicio 8

```swift

import Foundation

func extractDiagonals(matrix: [[Int]]) -> (DP: [Int], DI: [Int]) {
    let n = matrix.count
    var DP = [Int]()
    var DI = [Int]()
    
    for i in 0..<n {
        for j in 0..<n {
            if i == j {
                DP.append(matrix[i][j])
            }
            if i + j == n - 1 {
                DI.append(matrix[i][j])
            }
        }
    }
    
    return (DP, DI)
}

let matrizCuadrada = [
    [3, 5, 8, 2],
    [2, 7, 9, 5],
    [2, 8, 9, 2],
    [4, 6, 7, 1]
]

let diagonales = extractDiagonals(matrix: matrizCuadrada)
print("Diagonal Principal: \(diagonales.DP)")
print("Diagonal Inversa: \(diagonales.DI)")

```
# Ejercicio 9

```swift

import Foundation

func sumInnerElements(matrix: [[Int]]) -> Int {
    let n = matrix.count
    var sum = 0
    
    for i in 1..<n-1 {
        for j in 1..<n-1 {
            sum += matrix[i][j]
        }
    }
    
    return sum
}

let matrizCuadrada = [
    [3, 5, 8, 9, 2],
    [1, 4, 2, 1, 0],
    [4, 5, 4, 8, 1],
    [9, 8, 1, 0, 3],
    [7, 2, 1, 1, 3]
]

let resultado = sumInnerElements(matrix: matrizCuadrada)
print("La suma de los elementos internos es: \(resultado)")

```
