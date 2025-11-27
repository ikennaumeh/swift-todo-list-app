//
//  swift_todo_listApp.swift
//  swift-todo-list
//
//  Created by Ikenna Umeh on 30/10/2025.
//

import SwiftUI

@main
struct swift_todo_listApp: App {
    
    @StateObject var listViewmodel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
            .environmentObject(listViewmodel  )
        }
    }
}
