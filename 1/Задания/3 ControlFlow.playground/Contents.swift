/*:
 # Поток управления

 ## Циклы For-In

 Классического цикла For в Swift нет.
 */
 let names = ["Anna", "Alex", "Brian", "Jack"]
 for name in names {
    print("Hello, \(name)!")
 }

/*:
 ### Проходим по коллекциям
 */

print()

let array: [String] = ["spider", "ant", "cat"]
let set: Set<String> = ["spider", "ant", "cat"]
let dictionary: [String: Int] = ["spider": 8, "ant": 6, "cat": 4]

for item in array {
    print(item)
}

print()

for item in set {
    print(item)
}

print()

for item in dictionary {
    print(item)
}

print()

for (index, value) in array.enumerated() {
  print("Item \(index + 1): \(value)")
}

print()

for item in set {
    print(item)
}

print()

for key in dictionary.keys {
  print(key)
}

print()

for value in dictionary.values {
  print(value)
}

print()

for (key, value) in dictionary {
  print("\(key): \(value)")
}

print()

/*:
 ## Условия
*/
var temperatureInCelsium = 0
if temperatureInCelsium <= 5 {
    print("It's very cold. Consider wearing a scarf.")
}

print()

/*:
 Оператор целочисленного деления

 Оператор целочисленного деления (a % b) показывает, какое количество b помещается внутри a, и возвращает остаток деления a на b.
*/

let del = 9 % 4

/*:
 ## Switch
 */
let someCharacter: Character = "z"
switch someCharacter {
case "a":
    print("The first letter of the alphabet")
case "z":
    print("The last letter of the alphabet")
default:
    print("Some other character")
}
/*:
  Каждая инструкция switch должна быть исчерпывающей. Если неудобно вписывать все возможные варианты случаев, то вы можете определить случай по умолчанию,
  который включает в себя все значения, которые не были включены в остальные случаи.
  Такой случай по умолчанию называется default, и он всегда идет после всех остальных случаев.
  Тело каждого случая должно включать в себя хотя бы одно исполняемое выражение. Код не будет исполнен и выдаст ошибку компиляции, если написать его следующим образом:
 */
let anotherCharacter: Character = "a"
let myChar: Character = "p"
switch anotherCharacter {
//case "a": раскомментируй и посмотри
case "A":
    print("The letter A")
default:
    print("Not the letter A")
}


switch myChar {
case "a":
    print("That's A!")
case "b":
    print("It's not A!")
default:
    print("I don't know what is it =)")
}
/*:
 Для того, чтобы switch с одним кейсом подходил под "a" и "A",объедините два значения в один составной кейс, разделив значения запятыми.
 */
switch anotherCharacter {
case "a", "A":
    print("The letter A")
default:
    print("Not the letter A")
}
/*:
 ### Соответствие диапазону
 Значения в кейсах switch могут быть проверены на их вхождение в диапазон.
 */
let approximateCount = 62
let countedThings = "moons orbiting Saturn"
var naturalCount: String
switch approximateCount {
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "several"
case 12..<100:
    naturalCount = "dozens of"
case 100..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
}
print("There are \(naturalCount) \(countedThings).")
/*:
 ### Кортежи
 Вы можете использовать кортежи для тестирования нескольких значений в одной и той же инструкции switch.
 Каждый элемент кортежа может быть протестирован с любой величиной или с диапазоном величин.
 Так же вы можете использовать идентификатор подчеркивания (_) для соответствия любой возможной величине.
 */
let somePoint = (1, 1)
switch somePoint {
case (0, 0):
    print("\(somePoint) is at the origin")
case (_, 0):
    print("\(somePoint) is on the x-axis")
case (0, _):
    print("\(somePoint) is on the y-axis")
case (-2...2, -2...2):
    print("\(somePoint) is inside the box")
default:
    print("\(somePoint) is outside of the box")
}

/*:
 # Задача
 */
let n = 4
let someArray = [20, 10, 34, 45, 23, 50, 32, 5, 4, 0, 56, 1]
/*:
 1. Необходимо определить сумму элементов.
 2. Необходимо определить сумму четных элементов.
 3. Необходимо определить сумму нечетных элементов.
 4. Необходимо определить сумму чисел из массива array, кратных n.

 Решение:

 */

 // 1.
var sum = 0
for item in someArray {
    sum += item
}
print(sum)

// 2.
sum = 0
for item in someArray {
    if item % 2 == 0 {
        sum += item
    }
}
print(sum)

//3.
sum = 0
for item in someArray {
    if item % 2 == 1 {
        sum+=item
    }
}
print(sum)

//4.
sum = 0
for item in someArray {
    if item % n == 0 {
        sum += item
    }
}
print(sum)


