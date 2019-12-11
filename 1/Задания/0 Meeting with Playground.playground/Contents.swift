import UIKit
import PlaygroundSupport

/*:
 Попробуйте поменять эти значения и посмотрите, как изменится результат справа
*/
 let title = "Hello Playground"
 let backgroundColor = UIColor.black // UIColor.white
 let backgroundColor1 = UIColor.white
 let image = #imageLiteral(resourceName: "icoSwift.png") // UIImage(named: "icoSwift")!


 print("Hi")

/*:
 Теперь давайте попробуем распечать значения этих констант в консоль.
 > Консоль располагается в нижней части экрана
 */

 print(title)
 print(backgroundColor)
 print(backgroundColor1)
 print(image)





































/*:
 На код снизу пока не стоит обращать особого внимания, он отвечает за создание интерфейса. В последующих уроках вы более детально познакомитесь со всеми элементами.

 ---
 */
// MARK: - Код создания интерфейса

// Создаем главный экран с координатами (0,0) и размером 320х568
let view = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 568))
// Назначаем цвет главному экрану, значение берется из константы сверху
view.backgroundColor = backgroundColor


// Создаем текстовое поле с координатами (0,0) и размером 200х40
let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 250, height: 40))
// Задаем размер шрифта
titleLabel.font = UIFont.systemFont(ofSize: 30)
// Задаем центрирование текста
titleLabel.textAlignment = .center
// Задаем текст
titleLabel.text = title
// Центрируем текст относительно главного экрана со смещением на 80pt по оси Y
titleLabel.center = CGPoint(x: view.frame.width/2, y: view.frame.height/2 - 80)

// Создаем картинку, размер берется из файла картинки
let imageView = UIImageView(image: image)
// Центрируем картинку относительно текста, со смещением 60pt по оси Y
imageView.center = CGPoint(x: titleLabel.center.x, y: titleLabel.center.y + 60)

// Добавляем текст на главный экран
view.addSubview(titleLabel)
// Добавляем картинку на главный экран
view.addSubview(imageView)

// Выставляем созданный экран, как главный экран для отображения в Playground
PlaygroundPage.current.liveView = view
