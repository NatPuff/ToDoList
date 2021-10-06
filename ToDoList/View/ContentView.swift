//
//  ContentView.swift
//  ToDoList
//
//  Created by AMStudent on 10/5/21.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var item: [ItemModel] = [ItemModel(title: "joe nuts", isCompleted: false), ItemModel(title: "joe ligma", isCompleted: true), ItemModel(title: "joe bruh", isCompleted: false) ]
    
    
    var body: some View {
        List {
            ForEach(item) { item in
                ListRowView(item: item)
            }
            .onDelete(perform: deleteItems)
            .onMove(perform: moveItem)
        }
            .listStyle(PlainListStyle())
                .navigationTitle("Todo List")
                .navigationBarItems(leading: EditButton(), trailing: NavigationLink("Add", destination: AddView())
            )
        }
        
        
       
    
    func deleteItems(indexSet: IndexSet){
        item.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        item.move(fromOffsets: from, toOffset: to)
    }
    
}

struct ContentView_Previews:
    PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}


