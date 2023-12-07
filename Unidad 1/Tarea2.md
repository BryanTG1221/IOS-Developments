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

# Ejercicio 5 

```swift
import Foundation

let blanquillos = 2
let tocino = 3
var blanquillosValidos = true
var tocinoValidos = true

if blanquillos > 21 {
    blanquillosValidos = false
}
if tocino > 7 {
    tocinoValidos = false
}

if blanquillosValidos && tocinoValidos {
    print("Ambos se pueden cocinar")
} else if !blanquillosValidos && !tocinoValidos {
    print("Desechar ambos")
} else if !blanquillosValidos {
    print("Desechar los blanquillos")
} else if !tocinoValidos {
    print("Desechar el tocino")
}

```

# Ejercicio 6

```swift
import Foundation

let anio = 2016

if anio % 4 == 0 || anio % 400 == 0 {
    print("Es Bisiesto")
} else {
    print("No es Bisiesto")
}
```

# Ejercicio 7

```swift
import Foundation

let randomInt = Int.random(in: 1...2)

if randomInt % 2 == 0 {
    print("Es par")
} else {
    print("Es inpar")
}

```

# Ejercicio 8

```swift
import Foundation

let x = 1
let y = 2
let x1 = 1
let y1 = 1
let x2 = 3
let y2 = 3

if (x >= x1 && x <= x2) && (y >= y1 && y <= y2)  {
    print("Se encuentra dentro del plano")
} else {
    print("Se encuentra fuera del plano")
}
```
# Ejercicio 9 

```swift
import Foundation

let entrada = 1

print(type(of: entrada))
```

# Ejercicio 10

```swift
import Foundation

func determinarSignoZodiacal(mes: Int, dia: Int) -> String {
    
    if (mes == 3 && dia >= 21) || (mes == 4 && dia <= 19) {
        return "Aries"
    } else if (mes == 4 && dia >= 20) || (mes == 5 && dia <= 20) {
        return "Tauro"
    } else if (mes == 5 && dia >= 21) || (mes == 6 && dia <= 20) {
        return "Géminis"
    } else if (mes == 6 && dia >= 21) || (mes == 7 && dia <= 22) {
        return "Cáncer"
    } else if (mes == 7 && dia >= 23) || (mes == 8 && dia <= 22) {
        return "Leo"
    } else if (mes == 8 && dia >= 23) || (mes == 9 && dia <= 22) {
        return "Virgo"
    } else if (mes == 9 && dia >= 23) || (mes == 10 && dia <= 22) {
        return "Libra"
    } else if (mes == 10 && dia >= 23) || (mes == 11 && dia <= 21) {
        return "Escorpio"
    } else if (mes == 11 && dia >= 22) || (mes == 12 && dia <= 21) {
        return "Sagitario"
    } else if (mes == 12 && dia >= 22) || (mes == 1 && dia <= 19) {
        return "Capricornio"
    } else if (mes == 1 && dia >= 20) || (mes == 2 && dia <= 18) {
        return "Acuario"
    } else {
        return "Piscis"
    }
}

let signo = determinarSignoZodiacal(mes: 12, dia: 21)
print("El signo zodiacal es: \(signo)")

```
