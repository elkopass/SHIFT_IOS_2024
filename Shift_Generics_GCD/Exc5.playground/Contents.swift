import UIKit
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true

/**
 Данный код выводит смайлики в произвольном порядке
 1) Измените код так, чтобы сперва выводились только 😀, а затем 👿
 2) Измените код так, чтобы сперва выводились только 👿, а затем 😀
 3) Измените код так, чтобы смайлики выводились строго попеременно
 */

let userQueue = DispatchQueue.global(qos: .default)
func task(_ symbol: String) {
	for i in 1...10 {
		print("\(symbol) \(i) приоритет = \(qos_class_self().rawValue)")
	}
}

userQueue.async {
	task("😀")
}
task("👿")
