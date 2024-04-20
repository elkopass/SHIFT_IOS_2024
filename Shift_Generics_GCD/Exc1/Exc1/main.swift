import Foundation

/**
 Дан класс `HashTable`, реализующий хеш-таблицу

 Задания:
 1) Измените уровень доступа `HashCell`, чтобы он был недоступен где-либо,
   кроме класса `HashTable` или файла `HashTable.swift`
 2) Сделайте класс `HashTable` публичным
 3) Расширьте класс протоколом `CustomStringConvertible`. Вызов `print(hashTable)` должен
   выдавать "Hashtable: [1]->qwe; [1]->zxc; [4]->wer; [8]->asd; [8]->sdf;"
 4) HashTable использует String в качестве хранимого значения. Сделайте хеш-таблицу обобщенной
 5) Реализуйте метод удаления. Учитывайте коллизии при удалении
 6) Расширьте хеш-таблицу через extension любым методом,
   который будет определен только для связанного типа `Int`
 */

let hashTable = HashTable()

hashTable.insert(1, "qwe")
hashTable.insert(8, "asd")
hashTable.insert(1, "zxc")
hashTable.insert(4, "wer")
hashTable.insert(8, "sdf")

print(hashTable)
