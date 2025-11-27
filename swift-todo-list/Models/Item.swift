//
//  Item.swift
//  swift-todo-list
//
//  Created by Ikenna Umeh on 03/11/2025.
//

import Foundation

struct Item : Identifiable {
    let id : String
    let title : String
    let isCompleted : Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func update() -> Item {
        return Item(id: id, title: title, isCompleted: !isCompleted)
    }
}
 
