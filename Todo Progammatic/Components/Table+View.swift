//
//  Table+View.swift
//  Todo Progammatic
//
//  Created by Christian Elijah on 2020-12-02.
//

import UIKit

class Table_View: UITableView {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        tableViewSetup()
    }
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: .plain)
        tableViewSetup()
    }
    
    private func tableViewSetup() {
        separatorColor = .black
        backgroundColor = .clear
    }
}
