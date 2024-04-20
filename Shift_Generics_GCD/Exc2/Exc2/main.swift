import Foundation

/**
 Дан класс `Point2D`

 Задания:
 1) Перепишите конструктор так, чтобы он не инициализировал, т.е. возвращал `nil`, если x или y > 100
 2) Реализуйте для `Point2D` протоколы `Equatable`, `CustomStringConvertible`,
   `Identifiable`, `IDefaultProtocol`
 3) Реализуейте поддержку инициализации из словаря.`let point4: Point2D = ["x": 3, "y": 8]`
   Подсказка: `ExpressibleBy`
 4) Определите в `Point2D` методы `func foo()` и `func bar()`.
   Что выведется на экран? Почему?
 5) Напишите функции (например в другом классе), принимающие в качестве аргумента
   типы `Point2D`, `IDefaultProtocol`, `Identifiable`.
 6) Напишите обобщенные функции, которые ограничены типами
   `Point2D`, `IDefaultProtocol`, `Identifiable`.
 */

protocol Identifiable {
	associatedtype ID
	var id: ID { get }
}

protocol IDefaultProtocol {
	func foo()
}

extension IDefaultProtocol {
	func foo() {
		print("protocol foo")
	}
	func bar() {
		print("protocol bar")
	}
}

class Point2D {
	let X: Double
	let Y: Double

	init(x: Double, y: Double) {
		self.X = x
		self.Y = y
	}
}

var point1 = Point2D(x: 2, y: 2)
var point2 = Point2D(x: 250, y: 5)

//let point3: Point2D = ["x": 3, "y": 8]
//let point4: IDefaultProtocol = Point2D(x: 2, y: 2)

print("\(point1) \(point2)")

//print("\(point1 == point2)")
//print("\(point1.id)")

//point1.bar(); point1.foo()
//point4.bar(); point4.foo()
