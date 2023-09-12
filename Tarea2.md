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

# Ejercicio 2

```swift
import Foundation

let x = 38

if x % 2 == 0  {
    print("Numero Par")
} else {
    print("Numero Inpar")
}
```

# Ejercicio 3

```swift
import Foundation

let a = 22
let b = 11

if a % b == 0 {
    print("Es divisible")
} else {
    print("No es divisible")
}
```

# Ejercicio 4

```swift
import Foundation

let a = 1
let b = 2
let c = 3

if a == b || a == c || b == c   {
   print("Al menos dos  variables son iguales") 
} else {
    print("Todas las variables son diferentes")
}
```
