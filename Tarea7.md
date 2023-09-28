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
