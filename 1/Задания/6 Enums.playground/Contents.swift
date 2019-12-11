/*:
 # Перечисления

 Перечисления определяют общий тип для группы связанных значений и позволяют работать с этими значениями в типобезопасном режиме в вашем коде.
 Перечисления начинаются с ключевого слова enum, после которого идет имя перечисления и полное его определение в фигурных скобках:
 */
enum SomeEnumeration {
    //здесь будет объявление перечисления
}
enum CompassPoint {
    case north
    case south
    case east
    case west
}
/*:
 Значения, объявленные в перечислении (north, south, east, и west), называются кейсами перечисления. Используйте ключевое слово case для включения нового кейса перечисления.

 Создание и инициализация переменной
 */
var directionToHead = CompassPoint.west
/*:
 Перечисления часто используются в конструкциях switch:
 */
directionToHead = .south
switch directionToHead {
case .north:
    print("Lots of planets have a north")
case .south:
    print("Watch out for penguins")
case .east:
    print("Where the sun rises")
case .west:
    print("Where the skies are blue")
}
/*: Следует помнить, что в switch должны быть перечислены все возможные кейсы перечисления, либо использован default.
 ## Итерации по кейсам перечисления
 */
enum Beverage: CaseIterable {
    case coffee, tea, juice
}
let numberOfChoices = Beverage.allCases.count
print("\(numberOfChoices) beverages available")
/*:
 Цикл по всем кейсам перечисления:
 */
for beverage in Beverage.allCases {
    print(beverage)
}
/*:
 ## Связные значения
 Вы можете объявить перечисления Swift для хранения связанных значений любого необходимого типа,
 и типы значений могут отличаться для каждого члена перечисления. Это позволяет вам хранить дополнительную пользовательскую информацию вместе со значением кейса и разрешает изменять эту информацию каждый раз как вы используете этот кейс перечисления в вашем коде.
 */
enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}
/*:
 Создание переменной со связанным значением:
 */
var productBarcode = Barcode.upc(8, 85909, 51226, 3)
/*:
 Этому же продукту может быть присвоено другое значение кода:
 */
productBarcode = .qrCode("ABCDEFGHIJKLMNOP")
/*:
 ## Исходные значения (Raw values)
 Кейсы перечисления могут иметь исходные значения, которые всегда одного типа.
 */
enum ASCIIControlCharacter: Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}
enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}
/*:
 Исходные значения могут быть строками, символами, целым или числом с плавающей точкой.
 Исходные значения - это не то же самое, что ассоциативные значения. Исходные значения устанавливаются в качестве дефолтных значений, когда вы в первый раз определяете перечисление в вашем коде, как три ASCII кода выше. Исходное значение для конкретного кейса перечисления всегда одно и то же. Ассоциативные значения устанавливаются при создании новой константы или переменной, основываясь на одном из кейсов перечисления, и могут быть разными.
 Для доступа к исходному значению кейса перечисления существует свойство rawValue:
 */
let earthsOrder = Planet.earth.rawValue
/* :
 Перечисление с исходным значением автоматически получает инициализатор с параметром rawValue. Его можно использовать для создания нового экземпляра перечисления:
 */
let possiblePlanet = Planet(rawValue: 7)
/*:
 # Задача
 Создайте enum для представления семейного положения человека. При наличии супруга(и) необходимо реализовать возможность сохранения ФИО супруга(и). Создайте экземпляр enum, соответствующий своему семейному положению.

  Решение:
 */

enum familyStatus {
    case married(String)
    case single
    case in_relationship
    case divorce
}

let marriedStatus = familyStatus.married("Wife/Husband")
let myStatus = familyStatus.single

