# Ejercicio 1

### Prueba 1
```swift

let ageDog = 50

func getAgeHuman (age: Int) {
    print("El perro tiene:", age / 7, "Años")
}

getAgeHuman(age: ageDog)

```

### Prueba 2

```swift

let ageDog = 14

func getAgeHuman (age: Int) {
    print("El perro tiene:", age / 7, "Años")
}

getAgeHuman(age: ageDog)

```

### Prueba 3

```swift

let ageDog = 32

func getAgeHuman (age: Int) {
    print("El perro tiene:", age / 7, "Años")
}

getAgeHuman(age: ageDog)

```

-----

# Ejercicio 2

### Prueba 1

```swift
var hora = 5
var minutos = 56
var segundos = 23
var distanciaMts = 2500

func getMts() {
    let secondTotal = Float((hora * 3600) + (minutos * 60) + segundos)
    let velocityOnSeconds = Float(distanciaMts) / secondTotal
    let velocityKmPorHora = velocityOnSeconds * 3.6
    let velocityMillasPorHora = velocityOnSeconds * 2.237 
    print(velocityOnSeconds,"Metros por segundo")
    print(velocityKmPorHora, "Kilometros por hora")
    print(velocityMillasPorHora, "mph")
}

getMts()

```

### Prueba 2

```swift
var hora = 1
var minutos = 35
var segundos = 56
var distanciaMts = 50000

func getMts() {
    let secondTotal = Float((hora * 3600) + (minutos * 60) + segundos)
    let velocityOnSeconds = Float(distanciaMts) / secondTotal
    let velocityKmPorHora = velocityOnSeconds * 3.6
    let velocityMillasPorHora = velocityOnSeconds * 2.237 
    print(velocityOnSeconds,"Metros por segundo")
    print(velocityKmPorHora, "Kilometros por hora")
    print(velocityMillasPorHora, "mph")
}

getMts()

```

# Ejercicio 3


### Prueba 1
```swift
let suma = 16
let diferencia = 4

let a = (suma + diferencia) / 2
let b = suma - a

print("El valor de a es:", a)
print("El valor de b es:", b)

```

### Prueba 2
```swift
let suma = 11
let diferencia = 3

let a = (suma + diferencia) / 2
let b = suma - a

print("El valor de a es:", a)
print("El valor de b es:", b)

```
### Prueba 3
```swift
let suma = 4
let diferencia = 2

let a = (suma + diferencia) / 2
let b = suma - a

print("El valor de a es:", a)
print("El valor de b es:", b)

```

-----

# Ejercicio 4

```swift
import Foundation

func calcularPerimetro(ancho: Double, alto: Double, x: Double, y: Double) -> Double {
    let ladoHorizontalSuperior = ancho + x
    let ladoVertical = alto + y
    let ladoHorizontalInferior = ancho
    let perimetro = ladoHorizontalSuperior + ladoVertical + ladoHorizontalInferior
    return perimetro
}

func calcularArea(ancho: Double, alto: Double, x: Double, y: Double) -> Double {
    let areaSuperior = (ancho + x) * alto
    let areaInferior = ancho * y
    let areaTotal = areaSuperior + areaInferior
    return areaTotal
}

let anchoPrueba1 = 8.0
let altoPrueba1 = 12.0
let xPrueba1 = 4.0
let yPrueba1 = 3.0

let perimetroPrueba1 = calcularPerimetro(ancho: anchoPrueba1, alto: altoPrueba1, x: xPrueba1, y: yPrueba1)
let areaPrueba1 = calcularArea(ancho: anchoPrueba1, alto: altoPrueba1, x: xPrueba1, y: yPrueba1)

print("Prueba 1:")
print("Perímetro:", perimetroPrueba1)
print("Área:", areaPrueba1)

// Prueba 2
let anchoPrueba2 = 8.0
let altoPrueba2 = 4.0
let xPrueba2 = 2.0
let yPrueba2 = 2.0

let perimetroPrueba2 = calcularPerimetro(ancho: anchoPrueba2, alto: altoPrueba2, x: xPrueba2, y: yPrueba2)
let areaPrueba2 = calcularArea(ancho: anchoPrueba2, alto: altoPrueba2, x: xPrueba2, y: yPrueba2)

print("\nPrueba 2:")
print("Perímetro:", perimetroPrueba2)
print("Área:", areaPrueba2)

```

# Ejercicio 5

```swift
let a = 123

let numeroComoCadena = String(a)

if let ultimoDigito = numeroComoCadena.last {
    if let ultimoDigitoInt = Int(String(ultimoDigito)) {
        print("El último dígito de \(a) es \(ultimoDigitoInt)")
    }
}

```

# Ejercicio 6

```swift
import Foundation

func calcularEdadAnahi(x: Int, y: Int, abril: Int) -> Int {
    let anahi = y * (abril + x) - x
    return anahi
}

let prueba1_x = 3
let prueba1_y = 2
let prueba1_abril = 12

let prueba2_x = 1
let prueba2_y = 3
let prueba2_abril = 12

let edadAnahiPrueba1 = calcularEdadAnahi(x: prueba1_x, y: prueba1_y, abril: prueba1_abril)
let edadAnahiPrueba2 = calcularEdadAnahi(x: prueba2_x, y: prueba2_y, abril: prueba2_abril)

print("Prueba 1 - Edad de Anahí: \(edadAnahiPrueba1) años")
print("Prueba 2 - Edad de Anahí: \(edadAnahiPrueba2) años")

```

# Ejercicio 7

```swift
import Foundation

func realizarIntercambioManzanasNaranjas(manzanas: Int) -> (naranjasObtenidas: Int, manzanasRestantes: Int) {
    let intercambiosCompletos = manzanas / 5
    
    let naranjasObtenidas = intercambiosCompletos * 3
    
    let manzanasRestantes = manzanas % 5
    
    return (naranjasObtenidas, manzanasRestantes)
}

let prueba1_manzanas = 17
let prueba2_manzanas = 25
let prueba3_manzanas = 4

let resultadoPrueba1 = realizarIntercambioManzanasNaranjas(manzanas: prueba1_manzanas)
let resultadoPrueba2 = realizarIntercambioManzanasNaranjas(manzanas: prueba2_manzanas)
let resultadoPrueba3 = realizarIntercambioManzanasNaranjas(manzanas: prueba3_manzanas)

print("Prueba 1 - Naranjas obtenidas: \(resultadoPrueba1.naranjasObtenidas), Manzanas restantes: \(resultadoPrueba1.manzanasRestantes)")
print("Prueba 2 - Naranjas obtenidas: \(resultadoPrueba2.naranjasObtenidas), Manzanas restantes: \(resultadoPrueba2.manzanasRestantes)")
print("Prueba 3 - Naranjas obtenidas: \(resultadoPrueba3.naranjasObtenidas), Manzanas restantes: \(resultadoPrueba3.manzanasRestantes)")

```

