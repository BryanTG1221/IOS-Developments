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
