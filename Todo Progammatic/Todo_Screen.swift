//
//  ViewController.swift
//  Todo Progammatic
//
//  Created by Christian Elijah on 2020-12-02.
//

/*
 
 func navigationSetup() {
     let add_Button = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(goToTaskSrceen))
     add_Button.tintColor = View.buttonColor
     
     self.navigationItem.rightBarButtonItem = add_Button
 }a
 
 
 */

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

