//
//  ListTile.swift
//  swift-todo-list
//
//  Created by Ikenna Umeh on 30/10/2025.
//

import SwiftUI

struct ListTile: View {
    let title: String
    
    var body: some View {
        HStack{
            Image(systemName: "checkmark.circle")
            Text(title)
            Spacer()
        }
    }
}

#Preview {
    ListTile(title: "This is the first item!")
}
