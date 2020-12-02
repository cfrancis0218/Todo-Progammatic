//
//  Table+View+Delegate.swift
//  Todo Progammatic
//
//  Created by Christian Elijah on 2020-12-02.
//

import Foundation
import UIKit

extension Todo_Screen {
    
    final func tableViewDelegate() {
        self.tableView.dataSource = self
    }
}
