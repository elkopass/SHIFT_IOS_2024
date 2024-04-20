import Foundation

protocol IMainEditorBusinessLogic: AnyObject {
	func generateDataToDisplay()
}

class MainEditorInteractor {
	private let presenter: IMainEditorPresentationLogic
	private var provider: IMainEditorProviderProtocol

	init(presenter: IMainEditorPresentationLogic, provider: IMainEditorProviderProtocol) {
		self.presenter = presenter
		self.provider = provider
	}

	deinit {
		print("MainEditorInteractor освобождается")
	}
}

extension MainEditorInteractor: IMainEditorBusinessLogic {
	func generateDataToDisplay() {
		self.provider.fetchImages { result in
			switch result {
			case .success(let data):
				self.presenter.prepareDataToDisplay(data: data)
			case .failed(let error):
				self.presenter.prepareDataToDisplay(data: error)
			}
		}
	}
}
