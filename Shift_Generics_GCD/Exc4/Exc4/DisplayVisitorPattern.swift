import Foundation

protocol IDisplayPoint {
	func accept(visitor: IDisplayVisitor)
}

protocol IDisplayVisitor {
	func visit(_ point: Point2D)
	func visit(_ point: Point3D)
}
