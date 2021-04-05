//
//  Model.swift
//  ToDoList
//
//  Created by Виктор Ощепков on 01/04/2021.
//  Copyright © 2021 Виктор Ощепков. All rights reserved.
//

import Foundation
var ToDoItems: [[String: Any]] = [["Name":"Позвонить маме","isCompleted": false],["Name":"Написать приложение","isCompleted": true],["Name":"Отметить с друзьями","isCompleted": false]]

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
func saveData(){
    print("Сохраняем данные")
}
func loadData(){
    
}
