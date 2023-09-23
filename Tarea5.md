# Ejercicio 1

```swift

func isMayor(_ a: Int,_ b: Int) -> Int {
    if(a > b) {
        return a
    } else {
      return b  
    }
}


print(isMayor(2,5))
print(isMayor(8,2))

```
# Ejercicio 2

```swift
var arrayToResponse = [Int]()
func isMayor(numberRecived: Int) -> Array<Int> {
    for number in 1...numberRecived {
        arrayToResponse.append(number)
    }
    return arrayToResponse
}


print(isMayor(numberRecived: 8))
arrayToResponse.removeAll()
print(isMayor(numberRecived: 3))
```


# Ejercicio 3

```swift
import Foundation

func calcularMinutosTranscurridos(horaInicial: Int, minutosIniciales: Int = 0, horaFinal: Int, minutosFinales: Int = 0) -> Int {
    let minutosInicialTotal = horaInicial * 60 + minutosIniciales
    let minutosFinalTotal = horaFinal * 60 + minutosFinales
    
    let minutosTranscurridos = minutosFinalTotal - minutosInicialTotal
    
    return minutosTranscurridos
}

let minutos1 = calcularMinutosTranscurridos(horaInicial: 12, minutosIniciales: 3, horaFinal: 13, minutosFinales: 10)
let minutos2 = calcularMinutosTranscurridos(horaInicial: 8, minutosIniciales: 10, horaFinal: 17, minutosFinales: 30)

print("Minutos transcurridos: \(minutos1)")
print("Minutos transcurridos: \(minutos2)")

```
