import Foundation


protocol IMainEditorPresentationLogic: AnyObject {
	func prepareDataToDisplay(data: String)
}

class MainEditorPresenter {
	var viewController: IMainEditorDisplayLogic?

	init() {
	}

	deinit {
		print("MainEditorPresenter освобождается")
	}
}

extension MainEditorPresenter: IMainEditorPresentationLogic {
	func prepareDataToDisplay(data: String) {
		let formattedData = data.components(separatedBy: .whitespacesAndNewlines).joined()
		self.viewController?.displayData(data: formattedData)
	}
}
