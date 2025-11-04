//
//  Item.swift
//  swift-todo-list
//
//  Created by Ikenna Umeh on 03/11/2025.
//

import Foundation

struct Item : Identifiable {
    let id : String = UUID().uuidString
    let title : String
    let isCompleted : Bool
}
