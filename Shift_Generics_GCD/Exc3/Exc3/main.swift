import Foundation

/**
 Дан модуль MainEditor, постоенный по архитектурному шаблону YARCH
 см https://github.com/alfa-laboratory/YARCH
 Модуль сильно упрощен, но позволяет понять идею. После построения билдером, `ViewController` может
 быть отображен, запускает загрузку данных с их последующим псевдоотображением, а затем уничтожается.
 В модуле допущен ряд ошибок, из-за чего происходит утечка памяти.
 Задание:
 Устраните утечку памяти. Удостоверьтесь, что `deinit` вызывается у всех компонентов модуля
 */

var mainEditorModule: MainEditorViewController? = MainEditorBuilder().build()

mainEditorModule?.start()
imageDispatchGroup.wait()
mainEditorModule = nil

print("Выполнение закончено")
