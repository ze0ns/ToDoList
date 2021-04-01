//
//  ViewController.swift
//  ToDoList
//
//  Created by Виктор Ощепков on 01/04/2021.
//  Copyright © 2021 Виктор Ощепков. All rights reserved.
//

import UIKit

var data: [String] = ["Выбросить мусор","Позвонить соседу","Выключить компьютер","Ответить "]

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
 
    @IBOutlet weak var tableView: UITableView!
    
    // Он возвращает количество строк в секции (Секция - строки на ТаблеВью)
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return data.count
    }
    
    // Он вызовется столько раз , сколко необходимо выше. И заполнит каждый раз секцию
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentify", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        return cell
        
    }
    // Вызовется при нажатии на ячейку
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print(data[indexPath.row])
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

