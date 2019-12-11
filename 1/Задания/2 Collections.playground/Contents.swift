import Foundation

/*:
 # Коллекции
 */
/*:
 ## Объявление и инициализация
 ### Неизменяемые коллекции
 Длина и содержимое такой коллекции постоянны. Рекомендуется использовать по умолчанию.
 */

let constIntArray: [Int] = [1, 2, 3]
let constIntSet: Set<Int> = [1, 2, 3]
let constDictionary: [Int: String] = [1: "First", 2: "Second"]

/*:
 ### Изменяемые коллекции
Длина и содержимое коллекции может изменяться. Передается по значению (но не всегда).
 */

var varIntArray: [Int] = [1, 2, 3]
var varIntSet: Set<Int> = [1, 2, 3]
var varDictionary: [Int: String] = [1: "First", 2: "Second"]
/*:
 ### Создание пустой коллекции
 */

var shoppingArray = [String]()
var shoppingSet = Set<String>()
var shoppingDictionary = [Int: String]()

print("someInts is of type [Int] with \(shoppingArray.count) items.")

/*:
 ### Создание коллекций
 */

shoppingArray = ["Eggs", "Milk"]
shoppingSet = ["Eggs", "Milk"]
shoppingDictionary = [1: "Eggs", 2: "Milk"]

/*:
 ## Модификация коллекций
 
 ### Добавление элементов
 */
// Добавление элементов в массив происходит через .append() и простой конкатенацией
shoppingArray.append("Flour")
shoppingArray += ["Baking Powder"]
shoppingArray += ["Chocolate Spread", "Cheese", "Butter"]


// Добавление элементов в Set происходит через команду .insert()
shoppingSet.insert("Flour")

//Добавление элементов в словарь происходит через операцию доступа по индексу элемента и присвоению значения
shoppingDictionary[3] = "Flour"

/*:
 ### Доступ по индексу
 Получение одного и нескольких элементов коллекции.
 */

var firstArrayItem = shoppingArray[0]
var firstSetItem = shoppingSet.first
var firstDictionaryItem = shoppingDictionary[0]

firstArrayItem = "Six eggs"
print(shoppingArray)

shoppingArray[0] = "Six eggs"
print(shoppingArray)

/*:
 ### Удаление элементов
 */

firstArrayItem = shoppingArray.remove(at: 0)
firstSetItem = shoppingSet.remove("Flour")
firstDictionaryItem = shoppingDictionary.removeValue(forKey: 0)
