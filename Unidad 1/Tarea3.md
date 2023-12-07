# Ejercicio 1

```swift
import Foundation

func imprimirCuadradosPerfectos(_ n: Int) {
    guard n > 0 else {
        return
    }
    
    var cuadrado = 1
    var contador = 0
    
    while contador < n {
        let cuadradoPerfecto = cuadrado * cuadrado
        print(cuadradoPerfecto)
        
        cuadrado += 1
        contador += 1
    }
}

let n = 5
imprimirCuadradosPerfectos(n)

```

# Ejercicio 2

```swift
import Foundation

func imprimirSerieAlternada(_ n: Int) {
    var serie = [Int]()
    
    for i in 1...(n + 1) / 2 {
        serie.append(i)
        if i != n - i + 1 {
            serie.append(n - i + 1)
        }
    }
    
    let serieString = serie.map { String($0) }.joined(separator: " ")
    print(serieString)
}


imprimirSerieAlternada(4)
imprimirSerieAlternada(9) 

```

# Ejercicio 3

```swift
import Foundation

func imprimirArbolito(_ nLineas: Int) {
    for item in 1...nLineas {
        let cantidadMostrar = item * 2 - 1
        var asteriscos = ""
        for item2 in 1...cantidadMostrar {
            if item2 == 1 && cantidadMostrar == 1 {
                asteriscos.append(" " + "*" +  " ")
            } else {
                asteriscos.append("*")
            }
        }
        print(asteriscos)
    }
       
}

let n = 4

imprimirArbolito(n)

```

# Ejercicio 4

```swift

import Foundation

let nNumero = 10
var salida = [1, 1]

for number in 0..<nNumero {
    if number >= 2 {
        let a = salida[number - 2]
        let b = salida[number - 1]
        let suma = a + b
        salida.append(suma)
    }
}

print(salida)

```

# Ejercicio 5

```swift
import Foundation

var esPrimo = false
func isPrime(_ n: Int) -> Bool {
    guard n >= 2     else { return false }
    guard n != 2     else { return true  }
    guard n % 2 != 0 else { return false }
    return !stride(from: 3, through: Int(sqrt(Double(n))), by: 2).contains { n % $0 == 0 }
}

if isPrime(15) {
    print("Es primo")
} else {
    print("No es primo")
}
```

# Ejercicio 6

```swift
func pad(string : String, toSize: Int) -> String {
  var padded = string
  for _ in 0..<(toSize - string.count) {
    padded = "0" + padded
  }
    return padded
}

let num = 78
let str = String(num, radix: 2)
print(str)
pad(string: str, toSize: 8)

```
