import UIKit
import PlaygroundSupport

/**
 Дана многопоточная система, где несколько потоков конкурирует за 1 разделяемый ресурс
 Вывод print(value) будет давать каждый раз разное значение
 Модифицируйте систему так, чтобы устранить гонку
 */

PlaygroundPage.current.needsIndefiniteExecution = true

var value = 0

let userQueue1 = DispatchQueue.global(qos: .userInitiated)
let userQueue2 = DispatchQueue.global(qos: .userInitiated)
func task(_ symbol: String) {
	for _ in 1...1000 {
		value += 1
	}
	print(value)
}

userQueue1.async {
	task("😀")
}
userQueue2.async {
	task("👿")
}

