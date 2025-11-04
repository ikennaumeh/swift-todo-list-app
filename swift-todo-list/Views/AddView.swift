//
//  AddView.swift
//  swift-todo-list
//
//  Created by Ikenna Umeh on 03/11/2025.
//

import SwiftUI

struct AddView: View {
    @State var textFieldText: String = "";
    
    var body: some View {
        VStack{
            TextField("Type something here...", text: $textFieldText )
                .padding(.horizontal)
                .frame(height: 55)
                .background(Color.gray.opacity(0.1))
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Button(action: {
                
            }, label: {
                Text("save".uppercased())
                    .foregroundStyle(.white)
                    .font(.headline)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.accentColor)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            })
            Spacer()
            
        }
        .padding(14)
        .navigationTitle(Text("Add an item 🖋️"))
    }
}

#Preview {
    NavigationView{
        AddView()
    }
}
 
