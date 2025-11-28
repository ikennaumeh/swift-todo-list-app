//
//  AddView.swift
//  swift-todo-list
//
//  Created by Ikenna Umeh on 03/11/2025.
//

import SwiftUI

struct AddView: View {
    @Environment(\.presentationMode) var presentationMode
    
    @EnvironmentObject var listViewModel : ListViewModel
    @State var textFieldText: String = ""
    
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    var body: some View {
        VStack{
            TextField("Type something here...", text: $textFieldText )
                .padding(.horizontal)
                .frame(height: 55)
                .background(Color.gray.opacity(0.1))
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Button(action: saveButtonPressed, label: {
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
        .alert(alertTitle, isPresented: $showAlert){
            Button("Ok", role: .cancel){}
        }
    }
    
    func saveButtonPressed(){
        if(isTextAppropriate()){
            listViewModel.addItem(title: textFieldText)
            presentationMode.wrappedValue.dismiss()
        }
    }
    
    func isTextAppropriate() -> Bool {
        if(textFieldText.count < 3 ){
            alertTitle = "Your item must be over 3 characters long"
            showAlert.toggle()
            return false
        }
        
        return true
    }
    
}

#Preview {
    NavigationView{
        AddView()
    } 
    .environmentObject(ListViewModel())
}
 
