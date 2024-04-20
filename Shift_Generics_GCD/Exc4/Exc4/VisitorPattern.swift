import Foundation

protocol IVisitor {
	func visit(_ point: Point2D)
	func visit(_ point: Point3D)
}

protocol IPoint {
	var metric: Double { get set }
	func accept(visitor: IVisitor)
}

class Point2D: IPoint {
	var X: Double
	var Y: Double
	var metric: Double = -1

	init(x: Double, y: Double) {
		self.X = x
		self.Y = y
	}

	func accept(visitor: IVisitor) {
		visitor.visit(self)
	}
}

class Point3D: IPoint {
	var X: Double
	var Y: Double
	var Z: Double
	var metric: Double = -1

	init(x: Double, double y: Double, z: Double) {
		self.X = x
		self.Y = y
		self.Z = z
	}

	func accept(visitor: IVisitor) {
		visitor.visit(self)
	}
}

class Euclid: IVisitor {
	func visit(_ point: Point2D) {
		point.metric = sqrt(point.X * point.X + point.Y * point.Y);
	}

	func visit(_ point: Point3D) {
		point.metric = sqrt(point.X * point.X + point.Y * point.Y + point.Z * point.Z)
	}
}

class Chebyshev: IVisitor {
	func visit(_ point: Point2D) {
		let ax = abs(point.X); let ay = abs(point.Y)
		point.metric = ax > ay ? ax : ay
	}

	func visit(_ point: Point3D) {
		let ax = abs(point.X); let ay = abs(point.Y); let az = abs(point.Z)
		var max = ax > ay ? ax : ay
		if (max < az) {
			max = az
		}
		point.metric = max
	}
}
