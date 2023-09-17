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

aun no terminado
```
