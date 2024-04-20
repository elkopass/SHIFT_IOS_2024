import Foundation

typealias UITableView = String
typealias UILabel = String
typealias UIButton = String

protocol IMainEditorViewDelegate: AnyObject
{
	func onSelectNewImageClick()
	func onSelectedImageClick()
}

class MainEditorView
{
	var delegate: IMainEditorViewDelegate?

	init() {
	}

	deinit {
		print("MainEditorView освобождается")
	}

	private(set) lazy var tableView: UITableView = {
		let view = UITableView()
		return view
	}()

	private(set) lazy var emptyLable: UILabel = {
		let view = UILabel()
		return view
	}()
	private lazy var selectImageButton: UIButton = {
		let view = UIButton()
		return view
	}()

	func display(data: String) {
		print(data)
	}

	func buttonClick() {
		self.delegate?.onSelectedImageClick()
	}
}
