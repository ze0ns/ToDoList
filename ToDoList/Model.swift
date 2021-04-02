//
//  Model.swift
//  ToDoList
//
//  Created by Виктор Ощепков on 01/04/2021.
//  Copyright © 2021 Виктор Ощепков. All rights reserved.
//

import Foundation
var ToDoItems: [String] = ["Позавтракать","Написать приложений"]

func addItem(nameItem: String) {
    ToDoItems.append(nameItem)
    saveData()
}
    
func removeItem(at index: Int){
    ToDoItems.remove(at: index)
    saveData()
}
func saveData(){
    
}
func loadData(){
    
}
