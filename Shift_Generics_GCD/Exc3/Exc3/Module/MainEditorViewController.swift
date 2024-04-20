import Foundation

protocol IMainEditorDisplayLogic: AnyObject {
	func start()
	func displayData(data: String)
}

class MainEditorViewController {
	private let interactor: IMainEditorBusinessLogic
	private let customView: MainEditorView

	init(interactor: IMainEditorBusinessLogic) {
		self.interactor = interactor
		self.customView = MainEditorView()
		self.customView.delegate = self
	}

	deinit {
		print("MainEditorViewController освобождается")
	}
}

extension MainEditorViewController: IMainEditorDisplayLogic {
	func start() {
		self.interactor.generateDataToDisplay()
	}

	func displayData(data: String) {
		self.customView.display(data: data)
	}
}

extension MainEditorViewController: IMainEditorViewDelegate {
	func onSelectNewImageClick() {
	}

	func onSelectedImageClick() {
	}
}
