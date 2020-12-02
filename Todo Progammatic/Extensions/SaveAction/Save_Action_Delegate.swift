//
//  Save_Action_Delegate.swift
//  Todo Progammatic
//
//  Created by Christian Elijah on 2020-12-02.
//

import Foundation
import CoreData
import UIKit

extension Todo_Screen {
    
    func save(todo: String) {
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        
        let managedContext = appDelegate.persistentContainer.viewContext
        
        let entity = NSEntityDescription.entity(forEntityName: "Todo", in: managedContext)!
        
        let todoList = NSManagedObject(entity: entity, insertInto: managedContext)
        
        todoList.setValue(todo, forKey: "todo")
        
        do {
            try managedContext.save()
            todos.append(todoList)
        } catch let error as NSError {
            print("Could not save. \(error), \(error.userInfo)")
        }
    }
}
