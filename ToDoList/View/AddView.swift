//
//  AddView.swift
//  ToDoList
//
//  Created by AMStudent on 10/6/21.
//

import SwiftUI

struct AddView: View {
    @State var textFieldText: String = ""
    @State var alertTitle: String = ""
    @State var showAlert = false
    @EnvironmentObject var listViewModel: ListViewModel
    @Environment(\.presentationMode) var presentationMode
    
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something here lol", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(.systemGray5))
                .cornerRadius(10)
                
                
                Button(action: saveButtonPressed, label: {
                    Text("Save")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                   
                })
                    
            }
            .padding()
        }
        .navigationTitle("Add an item 👽")
        .alert(isPresented: $showAlert, content: getAlert)
    }
    
    func saveButtonPressed(){
        if textIsAppropriate() {
            listViewModel.addItem(title: textFieldText)
            
        presentationMode.wrappedValue.dismiss()
        }
    }
    func textIsAppropriate() -> Bool{
        if textFieldText.count < 3 {
            alertTitle = "To-Do List item must be at least 3 characters long"
            showAlert.toggle()
            return false
        }
        return true
    }
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
        .environmentObject(ListViewModel())
    }
}
