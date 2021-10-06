//
//  AddView.swift
//  ToDoList
//
//  Created by AMStudent on 10/6/21.
//

import SwiftUI

struct AddView: View {
    @State var textFieldText: String = ""
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something here lol", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(.systemGray5))
                .cornerRadius(10)
                
                
                Button(action: {
                    
                }, label: {
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
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
    }
}
