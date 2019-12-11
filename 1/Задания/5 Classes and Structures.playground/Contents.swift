import Foundation

/*:
 # Структуры и Классы

 ## Структуры
 ### Формат объявления:
 ```
 struct StructName {
    ...
 }
 ```
 */



struct Dog {
  let name: String

  func bip() {
    print("Wow wow")
  }

  static func info() {
    print("Info")
  }
}

var dog1 = Dog.init(name: "Big dog")
var dog2 = Dog(name: "Little Dog")
dog1.name = "Dog 3"
dog1.bip()

Dog.func()

print(dog1.name)
print(dog2.name)


/*:
 ## Классы

 ### Формат объявления:
 ```
 class ClassName {
 ...
 }
 ```
*/
/*:
 ### Наследование
 */

/*:
 ### Переопределение методов
 */
class Animal {
  let name: String = {
    self.name = name
  }

  func bip() {
    print("Wow")
  }
}



class Dog: Animal {
  override func bip() {
    print("Gav!!!!")
  }
}

var dog1 = Dog(name: "PES1")
var dog2 = dog1
dog1.name = "Name2"


print(dog1.name)
print(dog2.name)



/*:
 ## Ссылочные типы (reference types) и типы значений (value types)
 */
