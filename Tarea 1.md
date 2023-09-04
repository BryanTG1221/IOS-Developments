# Ejercicio 1

### Prueba 1
```

let ageDog = 50

func getAgeHuman (age: Int) {
    print("El perro tiene:", age / 7, "Años")
}

getAgeHuman(age: ageDog)

```

### Prueba 2

```

let ageDog = 14

func getAgeHuman (age: Int) {
    print("El perro tiene:", age / 7, "Años")
}

getAgeHuman(age: ageDog)

```

### Prueba 3

```

let ageDog = 32

func getAgeHuman (age: Int) {
    print("El perro tiene:", age / 7, "Años")
}

getAgeHuman(age: ageDog)

```

-----

# Ejercicio 2

### Prueba 1

```
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

```
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
```
let suma = 16
let diferencia = 4

let a = (suma + diferencia) / 2
let b = suma - a

print("El valor de a es:", a)
print("El valor de b es:", b)

```

### Prueba 2
```
let suma = 11
let diferencia = 3

let a = (suma + diferencia) / 2
let b = suma - a

print("El valor de a es:", a)
print("El valor de b es:", b)

```
### Prueba 3
```
let suma = 4
let diferencia = 2

let a = (suma + diferencia) / 2
let b = suma - a

print("El valor de a es:", a)
print("El valor de b es:", b)

```

-----