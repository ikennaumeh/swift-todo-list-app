//
//  ListView.swift
//  swift-todo-list
//
//  Created by Ikenna Umeh on 30/10/2025.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        @State var items : [Item] = [
            Item(title: "This is the first item", isCompleted: false),
            Item(title: "This is the second item", isCompleted: true),
            Item(title: "This is the third item", isCompleted: false),
        ]
        List{
            ForEach(items) { item in
                ListTile(item: item)
            }
        }
        .navigationTitle("Todo List 📝")
        .toolbar{
            ToolbarItem(placement: .topBarLeading){
                EditButton()
            }
            ToolbarItem(placement: .topBarTrailing){
                NavigationLink(
                    "Add",  destination: AddView(),
                )
            }
        }
    }
}

#Preview {
    NavigationView{
        ListView()
    }
}
