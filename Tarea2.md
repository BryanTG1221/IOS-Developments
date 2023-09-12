# Ejercicio 1

```swift
import Foundation

func encontrarNumeroMayor(_ numeroA: Int, _ numeroB: Int) -> String {
    if numeroA > numeroB {
        return "\(numeroA) es el mayor"
    } else if numeroA < numeroB {
        return "\(numeroB) es el mayor"
    } else {
        return "Son iguales"
    }
}

let numero1 = 11
let numero2 = 22

let resultado = encontrarNumeroMayor(numero1, numero2)
print(resultado)

```
