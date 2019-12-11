import Foundation

/*:
 # Функции
 */
/*:
 ## Объявление функций
 ### Функция без параметров
 В некоторых случаях функции могут не иметь входных параметров.
 */
func hello() {
    print("Hello!")
}
/*:
 ### Функции с входным параметром
 */
func hello(person: String) {
    print("Hello, " + person + "!")
}
/*:
 ### Функции с входным параметром и возвращают значение
 */
func sayHelloWorld() -> String {
    return "hello, world"
}

print(sayHelloWorld())

func greet(person: String) -> String {
    let greeting = "Hello!"
    return greeting
}

func greetAgain(person: String) -> String {
    return "Hello again, " + person + "!"
}
/*:
 ### Функции с несколькими входными параметрами
 В некоторых случаях функции могут иметь несколько входных параметров.
 */
func greet(person: String, alreadyGreeted: Bool) -> String {
    if alreadyGreeted {
        return greetAgain(person: person)
    } else {
        return greet(person: person)
    }
}
print(greet(person: "Tim", alreadyGreeted: true))

/*:
 ### Функции, не возвращающие значения
 В некоторых случаях функции могут принимать, но не возвращать значения
 */
func greet(person: String) {
    print("Hello, \(person)!")
}

/*:
 ### Функции, возвращающие несколько значений
 В качестве возвращаемого значения в функциях можно использовать кортежи
 */

func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
let result = minMax(array: [8, -6, 2, 109, 3, 71])

/*:
 ### Функции внутри функций
 Также в Swift допускается объявление функций внутри функций
 */
func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int { return input + 1 }
    func stepBackward(input: Int) -> Int { return input - 1 }
    return backward == true ? stepBackward : stepForward
}
var currentValue = -4

// функция типа (Int) -> Int
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)

// moveNearerToZero now refers to the nested stepForward() function
while currentValue != 0 {
    print("\(currentValue)... ")
    currentValue = moveNearerToZero(currentValue)
}

/*:
 ### Функция с указанием ярлыка аргумента
 */
func someFunction(argumentLabel parameterName: Int) {
    // In the function body, parameterName refers to the argument value
    // for that parameter.
}

//Создание локального имени для функции
someFunction(argumentLabel: 2)

func greet(person: String, from hometown: String) -> String {
    return "Hello \(person)!  Glad you could visit from \(hometown)."
}

greet(person: "Bob", from: "KGD")



// Пустой аргумент на вызове

/*:
 ### Функция с пустым ярлыком аргумента
 */
func someFunction(_ firstParameterName: Int, secondParameterName: Int) {
    // In the function body, firstParameterName and secondParameterName
    // refer to the argument values for the first and second parameters.
}
someFunction(1, secondParameterName: 2)

/*:
 ### Значения параметров по умолчанию
 */
func someFunction(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) {
    // If you omit the second argument when calling this function, then
    // the value of parameterWithDefault is 12 inside the function body.
}
someFunction(parameterWithoutDefault: 3, parameterWithDefault: 6) // parameterWithDefault is 6
someFunction(parameterWithoutDefault: 4) // parameterWithDefault is 12
