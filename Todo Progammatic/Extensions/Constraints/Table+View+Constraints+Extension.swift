//
//  Table+View+Constraints+Extension.swift
//  Todo Progammatic
//
//  Created by Christian Elijah on 2020-12-02.
//

import Foundation
import UIKit

extension Todo_Screen {
    
    final func tableConstraints() {
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        
        ])
    }
}
