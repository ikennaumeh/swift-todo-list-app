//
//  ListView.swift
//  swift-todo-list
//
//  Created by Ikenna Umeh on 30/10/2025.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List{
            ListTile(
                title: "This is the first item!"
            )
        }
        .navigationTitle("Todo List 📝")
    }
}

#Preview {
    NavigationView{
        ListView()
    }
}
