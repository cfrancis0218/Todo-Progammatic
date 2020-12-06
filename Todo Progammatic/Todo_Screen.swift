//
//  ViewController.swift
//  Todo Progammatic
//
//  Created by Christian Elijah on 2020-12-02.
//

import UIKit
import CoreData

class Todo_Screen: UIViewController {
    
    let tableView = Table_View()
    
    var todos: [NSManagedObject] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 231/255.0, green: 231/255.0, blue: 231/255.0, alpha: 1.0)
        navigationSetup()
        tableConstraints()
        tableViewDelegate()
    }


}
