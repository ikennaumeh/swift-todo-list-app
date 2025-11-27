//
//  ListViewModel.swift
//  swift-todo-list
//
//  Created by Ikenna Umeh on 25/11/2025.
//

import Foundation

class ListViewModel: ObservableObject{
    
    @Published var items: [Item] = []
    
    init() {
       getItems()
    }
    
    func getItems(){
         let newItems: [Item] = [
            Item(title: "This is the first item", isCompleted: false),
            Item(title: "This is the second item", isCompleted: true),
            Item(title: "This is the third item", isCompleted: false),
        ]
        
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(indexSet: IndexSet){
        items.remove(atOffsets: indexSet);
    }
    
    func moveItem(from: IndexSet, to: Int){
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String){
        let newItem = Item(title: title, isCompleted: false)
        items.append(newItem)
    }
    
    func updateItem(item: Item){
        if let index = items.firstIndex(where: {$0.id == item.id}){
            items[index] = item.update()
        }
    }
}
