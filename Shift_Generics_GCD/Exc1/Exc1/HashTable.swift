import Foundation

final class HashTable {
	private var array : [HashCell?]

	init(count: Int = 10) {
		self.array = Array(repeating: nil, count: count)
	}

	func insert(_ key : Int, _ value: String) {
		let hashKey = key % array.count
		let newCell = HashCell(key, value)
		if let firstCell = array[hashKey] {
			var current: HashCell? = firstCell
			while let _ = current?.next {
				current = current?.next
			}
			current?.next = newCell
		}
		else {
			array[hashKey] = newCell
		}
	}
	
	func find(_ key : Int) -> String? {
		let hashKey = key % array.count
		var current: HashCell? = array[hashKey]
		while let item = current {
			if item.key == key {
				return item.value
			}
			current = current?.next
		}
		return nil
	}
}

class HashCell {
	let key : Int
	let value : String
	var next: HashCell?
	init(_ key : Int, _ value: String) {
		self.key = key
		self.value = value
	}
}

