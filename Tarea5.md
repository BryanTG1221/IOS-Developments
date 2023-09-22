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
