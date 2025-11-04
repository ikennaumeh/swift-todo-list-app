//
//  ListTile.swift
//  swift-todo-list
//
//  Created by Ikenna Umeh on 30/10/2025.
//

import SwiftUI

struct ListTile: View {
    let item: Item
    
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundStyle(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8) 
    }
}

#Preview {
    var item1 = Item(title: "This is the first item!", isCompleted: false)
    var item2 = Item(title: "This is the second item!", isCompleted: true)
    
    Group {
        ListTile(item: item1)
        ListTile(item: item2)
    }
}
