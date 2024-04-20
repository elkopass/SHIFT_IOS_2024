import UIKit
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true

/**
 1) Что не так в этом коде?
 2) Исправте код, чтобы он выводил 😀 🦊 ☘️ 🌼 - важен порядок
 */

func task(_ symbol: String) {
	print("\(symbol) приоритет = \(qos_class_self().rawValue)")
}

let waiter = DispatchQueue(label: "waiter")
let chef = DispatchQueue(label: "chef")

waiter.sync {
	task("😀")
	chef.sync {
		task("🦊")
		waiter.sync {
			task("☘️")
		}
	}
	task("🌼")
}


