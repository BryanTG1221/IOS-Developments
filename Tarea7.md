# Ejercicio 1:

```swift
import Foundation

class Rectangulo {
  var largo = 0.0
  var ancgo = 0.0

  func calcularArea (_ ancho: Double, _ largo: Double) -> Double {
    let area = ancho * largo
    let time = area * 10
    return time
  }
}

let miRectangulo = Rectangulo()
let AreaPared = miRectangulo.calcularArea(5,10)
let AreaVentana = miRectangulo.calcularArea(1,2)

print(AreaPared - AreaVentana)
```
# Ejercicio 2

```swift
import Foundation

class Figura {
    func calcularArea () -> Double {
        return 0
    }
}

class Rectangulo: Figura {
    var largo: Double
    var ancho: Double
    
    init(largo: Double, ancho: Double) {
        self.largo = largo
        self.ancho = ancho
        super.init()
    } 
    
    override func calcularArea() -> Double {
        return largo * ancho
    }
}

class Circunferencia: Figura {
    var radio: Double
    
    init(radio: Double) {
        self.radio = radio
        super.init()
    } 
    
    override func calcularArea() -> Double {
        return Double.pi * pow(radio, 2)
    }
}

class Triangulo: Figura {
    var altura: Double
    var base: Double
    
    init(altura: Double, base: Double) {
        self.altura = altura
        self.base = base
        super.init()
    } 
    
    override func calcularArea() -> Double {
        return (base * altura) / 2
    }
}

let miRectangulo = Rectangulo(largo: 6, ancho: 8)
let miCircunferencia = Circunferencia(radio: 14)
let miTriangulo = Triangulo(altura: 4, base: 3)

print(miRectangulo.calcularArea())
print(miCircunferencia.calcularArea())
print(miTriangulo.calcularArea())

```

# Ejercicio 3

```swift

class Vehiculo {
    var numeroSerieMotor: String
    var marca: String
    var año: Int
    var precio: Double
    
    init(numeroSerieMotor: String, marca: String, año: Int, precio: Double) {
        self.numeroSerieMotor = numeroSerieMotor
        self.marca = marca
        self.año = año
        self.precio = precio
    }
}

class AutoCompacto: Vehiculo {
    var cantidadPasajeros: Int
    
    init(numeroSerieMotor: String, marca: String, año: Int, precio: Double, cantidadPasajeros: Int) {
        self.cantidadPasajeros = cantidadPasajeros
        super.init(numeroSerieMotor: numeroSerieMotor, marca: marca, año: año, precio: precio)
    }
}

class AutoDeLujo: Vehiculo {
    var cantidadPasajeros: Int
    
    init(numeroSerieMotor: String, marca: String, año: Int, precio: Double, cantidadPasajeros: Int) {
        self.cantidadPasajeros = cantidadPasajeros
        super.init(numeroSerieMotor: numeroSerieMotor, marca: marca, año: año, precio: precio)
    }
}

class Camioneta: Vehiculo {
    var capacidadCargaKgs: Double
    var cantidadEjes: Int
    var cantidadRodadas: Int
    
    init(numeroSerieMotor: String, marca: String, año: Int, precio: Double, capacidadCargaKgs: Double, cantidadEjes: Int, cantidadRodadas: Int) {
        self.capacidadCargaKgs = capacidadCargaKgs
        self.cantidadEjes = cantidadEjes
        self.cantidadRodadas = cantidadRodadas
        super.init(numeroSerieMotor: numeroSerieMotor, marca: marca, año: año, precio: precio)
    }
}

class Vagoneta: Vehiculo {
    var cantidadPasajeros: Int
    
    init(numeroSerieMotor: String, marca: String, año: Int, precio: Double, cantidadPasajeros: Int) {
        self.cantidadPasajeros = cantidadPasajeros
        super.init(numeroSerieMotor: numeroSerieMotor, marca: marca, año: año, precio: precio)
    }
}

let autoCompacto = AutoCompacto(numeroSerieMotor: "12345", marca: "Toyota", año: 2022, precio: 20000, cantidadPasajeros: 5)
let camioneta = Camioneta(numeroSerieMotor: "67890", marca: "Ford", año: 2023, precio: 30000, capacidadCargaKgs: 1000, cantidadEjes: 2, cantidadRodadas: 4)


```

# Ejercicio 4

```swift

class Empleado {
    var horasTrabajadas: Int
    var sueldoPorHora: Double
    
    init(horasTrabajadas: Int, sueldoPorHora: Double) {
        self.horasTrabajadas = horasTrabajadas
        self.sueldoPorHora = sueldoPorHora
    }
    
    func calcularSalario() -> Double {
        return Double(horasTrabajadas) * sueldoPorHora
    }
}

class EmpleadoSinHorasExtra: Empleado {
    override func calcularSalario() -> Double {
        return super.calcularSalario()
    }
}

class EmpleadoConHorasDobles: Empleado {
    var horasExtras: Int
    
    init(horasTrabajadas: Int, sueldoPorHora: Double, horasExtras: Int) {
        self.horasExtras = horasExtras
        super.init(horasTrabajadas: horasTrabajadas, sueldoPorHora: sueldoPorHora)
    }
    
    override func calcularSalario() -> Double {
        let salarioBase = super.calcularSalario()
        let salarioHorasExtras = Double(horasExtras) * (sueldoPorHora * 2)
        return salarioBase + salarioHorasExtras
    }
}

class EmpleadoConHorasTriples: Empleado {
    var horasExtras: Int
    
    init(horasTrabajadas: Int, sueldoPorHora: Double, horasExtras: Int) {
        self.horasExtras = horasExtras
        super.init(horasTrabajadas: horasTrabajadas, sueldoPorHora: sueldoPorHora)
    }
    
    override func calcularSalario() -> Double {
        let salarioBase = super.calcularSalario()
        let salarioHorasExtras = Double(horasExtras) * (sueldoPorHora * 3)
        return salarioBase + salarioHorasExtras
    }
}

let empleadoSinHorasExtra = EmpleadoSinHorasExtra(horasTrabajadas: 40, sueldoPorHora: 10.0)
let salarioSinHorasExtra = empleadoSinHorasExtra.calcularSalario()
print("Salario sin horas extras: \(salarioSinHorasExtra)")

let empleadoConHorasDobles = EmpleadoConHorasDobles(horasTrabajadas: 43, sueldoPorHora: 10.0, horasExtras: 3)
let salarioConHorasDobles = empleadoConHorasDobles.calcularSalario()
print("Salario con horas extras (doble): \(salarioConHorasDobles)")

let empleadoConHorasTriples = EmpleadoConHorasTriples(horasTrabajadas: 46, sueldoPorHora: 10.0, horasExtras: 6)
let salarioConHorasTriples = empleadoConHorasTriples.calcularSalario()
print("Salario con horas extras (triple): \(salarioConHorasTriples)")


```

# Ejercicio 5

```
class Vehiculo {
    var numeroPlaca: String
    
    init(numeroPlaca: String) {
        self.numeroPlaca = numeroPlaca
    }
    
    func calcularImporte() -> Double {
        fatalError("Método abstracto, debe ser implementado en las clases derivadas")
    }

    func mostrarDatos() {
        fatalError("Método abstracto, debe ser implementado en las clases derivadas")
    }
}

class Autobus: Vehiculo {
    var precioPorKilometro: Double
    var kilometrosInicio: Double
    var kilometrosFin: Double
    
    init(numeroPlaca: String, precioPorKilometro: Double, kilometrosInicio: Double, kilometrosFin: Double) {
        self.precioPorKilometro = precioPorKilometro
        self.kilometrosInicio = kilometrosInicio
        self.kilometrosFin = kilometrosFin
        super.init(numeroPlaca: numeroPlaca)
    }
    
    override func calcularImporte() -> Double {
        return (kilometrosFin - kilometrosInicio) * precioPorKilometro
    }
    
    override func mostrarDatos() {
        print("Número de Placa: \(numeroPlaca)")
        print("Precio por Kilómetro: \(precioPorKilometro)")
        print("Kilómetros Inicio: \(kilometrosInicio)")
        print("Kilómetros Fin: \(kilometrosFin)")
    }
}

class Tractor: Vehiculo {
    var precioPorDia: Double
    var diaRenta: Int
    var diaDevolucion: Int
    
    init(numeroPlaca: String, precioPorDia: Double, diaRenta: Int, diaDevolucion: Int) {
        self.precioPorDia = precioPorDia
        self.diaRenta = diaRenta
        self.diaDevolucion = diaDevolucion
        super.init(numeroPlaca: numeroPlaca)
    }
    
    override func calcularImporte() -> Double {
        return Double(diaDevolucion - diaRenta) * precioPorDia
    }
    
    override func mostrarDatos() {
        print("Número de Placa: \(numeroPlaca)")
        print("Precio por Día: \(precioPorDia)")
        print("Día de Renta: \(diaRenta)")
        print("Día de Devolución: \(diaDevolucion)")
    }
}

let autobus = Autobus(numeroPlaca: "ABC123", precioPorKilometro: 5.0, kilometrosInicio: 100.0, kilometrosFin: 200.0)
let tractor = Tractor(numeroPlaca: "XYZ789", precioPorDia: 50.0, diaRenta: 15, diaDevolucion: 18)

autobus.mostrarDatos()
print("Importe a pagar por el autobús: \(autobus.calcularImporte())")

tractor.mostrarDatos()
print("Importe a pagar por el tractor: \(tractor.calcularImporte())")


```
