import Foundation

/**
 Дан простейший пример реализации паттерна посетитель
 https://en.wikipedia.org/wiki/Visitor_pattern
 Шаблон демонстрирует классический приём восстановления информации
 о потерянных типах, не прибегая к понижающему приведению типов при помощи двойной диспетчеризации.

 У нас есть функция displayMetric, которая выводит в консоль описание типа, однако она использует кастование,
 что загромождает код, усложняет поддержку и чревато ошибками
 Задание:
 1) Добавьте новый тип точки, описываемой, например, в полярных координатах
 2) Реалузйте для нее вывод в displayMetric(point: IPoint), определение метрики в Euclid и Chebyshev
 3) Расширье Point2D и Point3D протоколом IDisplayPoint и реализуете
 функцию displayMetric(point: IDisplayPoint, visitor: IDisplayVisitor),
 позволяющую выводить описание без понижающего кастования
 */

let point = Point2D(x: 3, y: 2)
let visitor = Chebyshev()
point.accept(visitor: visitor)
print(point.metric)

func displayMetric(point: IPoint) {
	switch point {
	case let point2D as Point2D:
		print("Description: X:\(point2D.X) Y:\(point2D.Y)")
	case let point3D as Point3D:
		print("Description: X:\(point3D.X) Y:\(point3D.Y) Z:\(point3D.Z)")
	default:
		print("Неизвестный тип")
	}
}

//func displayMetric(point: IDisplayPoint, visitor: IDisplayVisitor) {
//}

displayMetric(point: point)
//displayMetric(point: , visitor:)
