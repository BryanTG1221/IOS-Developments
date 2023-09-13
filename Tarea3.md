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
