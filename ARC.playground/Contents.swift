import UIKit

public final class RefsEasy
{
	public init() {}
	class A {
		var value = 10
	}
	class B {
		weak var a: A?
	}
	public func main() {
		var a = A()
		let b = B()
		b.a = a
		a = A()
		a.value = 20
		print(b.a!.value)
	}
}
