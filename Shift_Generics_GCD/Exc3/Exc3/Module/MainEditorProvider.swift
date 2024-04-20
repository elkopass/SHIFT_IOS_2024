import Foundation

//костыль, чтобы дождаться окончания загрузки, прежде чем завершить приложение
let imageDispatchGroup = DispatchGroup()

enum Result {
	case success(data: String)
	case failed(error: String)
}

protocol IMainEditorProviderProtocol: AnyObject {
	func fetchImages(completion: @escaping (Result) -> Void)
}

class MainEditorImagesProvider {

	private let queue = DispatchQueue.global(qos: .utility)

	init() {}

	deinit {
		print("MainEditorImagesProvider освобождается")
	}
}

extension MainEditorImagesProvider: IMainEditorProviderProtocol {
	func fetchImages(completion: @escaping (Result) -> Void) {
		imageDispatchGroup.enter()
		self.queue.async {
			if let url = URL(string: "http://placehold.it/10x10&text=image5"), let data = try? Data(contentsOf: url) {
				let str = String(decoding: data, as: UTF8.self)
				completion(.success(data: str))
				imageDispatchGroup.leave()
			}
			else {
				completion(.failed(error: "Что-то пошло не так"))
				imageDispatchGroup.leave()
			}
		}
	}
}



