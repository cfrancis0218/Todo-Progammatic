//
//  TableView_DataSourc.swift
//  Todo Progammatic
//
//  Created by Christian Elijah on 2020-12-02.
//

import Foundation
import UIKit

extension Todo_Screen: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let todo = todos[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = todo.value(forKeyPath: "todo") as? String
        cell.backgroundColor = .clear
        return cell
    }
}
