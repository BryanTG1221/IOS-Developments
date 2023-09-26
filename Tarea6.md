# Ejercicio 1

```swift
import Foundation

func maximoNumero (_ a: Int, _ b: Int, _ c: Int) {
    if a > b && a > c {
        if b > c {
            print("Numero mas alto: ", a)
            print("Numero mas bajo: ", c)
        } else {
            print("Numero mas alto: ", a)
            print("Numero mas bajo: ", b)
        }
    } else if b > a && b > c {
        if a > c {
            print("Numero mas alto: ", b)
            print("Numero mas bajo: ", c)
        } else {
            print("Numero mas alto: ", b)
            print("Numero mas bajo: ", a)
        }
    } else if c > a && c > b {
        if a > b {
            print("Numero mas alto: ", c)
            print("Numero mas bajo: ", b)
        } else {
            print("Numero mas alto: ", c)
            print("Numero mas bajo: ", a)
        }
    }
}

maximoNumero(2, 5, 8)


```

# Ejercicio 2

```swift
import Foundation

enum Direction {
    case derecha
    case izquierda
    case arriba
    case abajo
}

func calcularPosicionFinal(pasos: [Direction]) -> (x: Int, y: Int) {
    var posicionX = 0
    var posicionY = 0
    
    for paso in pasos {
        switch paso {
        case .derecha:
            posicionX += 1
        case .izquierda:
            posicionX -= 1
        case .arriba:
            posicionY += 1
        case .abajo:
            posicionY -= 1
        }
    }
    
    return (posicionX, posicionY)
}

let pasos = [Direction.arriba, Direction.arriba, Direction.izquierda, Direction.abajo, Direction.izquierda]
let posicionFinal = calcularPosicionFinal(pasos: pasos)

print("Posición final: (\(posicionFinal.x), \(posicionFinal.y))")

```
# Ejercicio 3

```swift

import Foundation

enum Eleccion {
    case piedra
    case papel
    case tijera
}

enum Resultado {
    case gana
    case pierde
    case empata
}

func juego(eleccionJugador1: Eleccion, eleccionJugador2: Eleccion) -> Resultado {
    if eleccionJugador1 == eleccionJugador2 {
        return .empata
    } else if (eleccionJugador1 == .piedra && eleccionJugador2 == .tijera) ||
              (eleccionJugador1 == .papel && eleccionJugador2 == .piedra) ||
              (eleccionJugador1 == .tijera && eleccionJugador2 == .papel) {
        return .gana
    } else {
        return .pierde
    }
}

let eleccionJugador1 = Eleccion.tijera
let eleccionJugador2 = Eleccion.tijera

let resultado = juego(eleccionJugador1: eleccionJugador1, eleccionJugador2: eleccionJugador2)

switch resultado {
case .gana:
    print("El jugador 1 gana.")
case .pierde:
    print("El jugador 1 pierde.")
case .empata:
    print("Es un empate.")
}

```

# Ejercicio 4

```swift

import Foundation

let personas = [
    ["apellido": "Perea", "nombre": "Alicia"],
    ["apellido": "Flores", "nombre": "Norma"],
    ["apellido": "Noriega", "nombre": "Roberto"]
]

func obtenerNombresCompletos(from personas: [[String: String]]) -> [String] {
    var nombresCompletos = [String]()
    
    for persona in personas {
        if let apellido = persona["apellido"], let nombre = persona["nombre"] {
            let nombreCompleto = "\(nombre) \(apellido)"
            nombresCompletos.append(nombreCompleto)
        }
    }
    
    return nombresCompletos
}

let nombresCompletos = obtenerNombresCompletos(from: personas)

print("Nombres completos:")
for nombreCompleto in nombresCompletos {
    print(nombreCompleto)
}

```
# Ejercicio 5

```swift

import Foundation

func calcularMCD(_ a: Int, _ b: Int) -> Int {
    let absA = abs(a)
    let absB = abs(b)
    var minVal = min(absA, absB)
    
    while minVal > 0 {
        if absA % minVal == 0 && absB % minVal == 0 {
            return minVal
        }
        minVal -= 1
    }
    
    return 1
}

func sumarFracciones(f1: (Int, Int), f2: (Int, Int)) -> (Int, Int) {
    let numerador1 = f1.0
    let denominador1 = f1.1
    let numerador2 = f2.0
    let denominador2 = f2.1
    
    let mcd = calcularMCD(denominador1, denominador2)
    
    let nuevoNumerador1 = numerador1 * (denominador2 / mcd)
    let nuevoNumerador2 = numerador2 * (denominador1 / mcd)
    
    let nuevoDenominador = denominador1 * (denominador2 / mcd)
    
    let sumaNumeradores = nuevoNumerador1 + nuevoNumerador2
    
    return (sumaNumeradores, nuevoDenominador)
}

let f1 = (5, 8)
let f2 = (17, 9)

let suma = sumarFracciones(f1: f1, f2: f2)
print("Suma de fracciones:", suma)

```
