//
//  ListView.swift
//  swift-todo-list
//
//  Created by Ikenna Umeh on 30/10/2025.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var viewModel : ListViewModel
    
    var body: some View {
        ZStack{
            
            if viewModel.items.isEmpty{
                NoItemsView()
                    .transition(.opacity.animation(.easeIn))
            } else {
                List{
                    ForEach(viewModel.items) { item in
                        ListTile(item: item)
                            .onTapGesture {
                                withAnimation(.linear){
                                    viewModel.updateItem(item: item)
                                }
                            }
                    }
                    .onDelete (perform: viewModel.deleteItem)
                    .onMove (perform: viewModel.moveItem)
                }
                .listStyle(PlainListStyle())
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
    .environmentObject(ListViewModel())
}
