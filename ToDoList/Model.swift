//
//  Model.swift
//  ToDoList
//
//  Created by Виктор Ощепков on 01/04/2021.
//  Copyright © 2021 Виктор Ощепков. All rights reserved.
//

import Foundation
var ToDoItems: [[String: Any]] {
    set
    {  print("Сохраняем данные")
        UserDefaults.standard.set(newValue, forKey: "ToDoDataKey")
    UserDefaults.standard.synchronize()
    }
    get {
        print("Загружаем данные")
        if let array = UserDefaults.standard.array(forKey: "ToDoDataKey") as? [[String: Any]]{
            return array
        } else {
            return []
        }
    }
}

func addItem(nameItem: String, isCompleted: Bool = false) {
    ToDoItems.append(["Name":nameItem,"isCompleted": isCompleted])
    saveData()
}
    
func removeItem(at index: Int){
    ToDoItems.remove(at: index)
    saveData()
}
func changeState(at item: Int) -> Bool{
    ToDoItems[item]["isCompleted"] = !(ToDoItems[item]["isCompleted"] as! Bool)
    saveData()
    return (ToDoItems[item]["isCompleted"] != nil)
    
}
func moveItem(fromIndex: Int, toIndex: Int){
    let from = ToDoItems[fromIndex]
    ToDoItems.remove(at: fromIndex)
    ToDoItems.insert(from, at: toIndex)
}

func saveData(){

}
func loadData(){
   
//    UserDefaults.standard.synchronize()
}
