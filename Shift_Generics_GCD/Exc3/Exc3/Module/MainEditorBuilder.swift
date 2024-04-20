import Foundation

class MainEditorBuilder {
	func build() -> MainEditorViewController {
		let presenter = MainEditorPresenter()
		let provider = MainEditorImagesProvider()
		let interactor = MainEditorInteractor(presenter: presenter, provider: provider)
		let controller = MainEditorViewController(interactor: interactor)
		presenter.viewController = controller
		return controller
	}
}
