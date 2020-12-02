//
//  Navigation_Extension.swift
//  Todo Progammatic
//
//  Created by Christian Elijah on 2020-12-02.
//

import Foundation
import UIKit

extension Todo_Screen {
    
    func navigationSetup() {
        
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Todo List"
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        
        let add_Button = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addName))
        
        self.navigationItem.rightBarButtonItem = add_Button
    }
    
    @objc func addName() {
        let alert = UIAlertController(title: "New Task", message: "Add a new task", preferredStyle: .alert)
        let saveAction = UIAlertAction(title: "Save", style: .default) {
          [unowned self] action in
          
          guard let textField = alert.textFields?.first,
            let nameToSave = textField.text else {
              return
          }
          
          self.save(todo: nameToSave)
          self.tableView.reloadData()
        }

        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        
        alert.addTextField()
        
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        
        present(alert, animated: true)
    }
}
