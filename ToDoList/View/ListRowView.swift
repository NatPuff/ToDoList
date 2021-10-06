//
//  ListRowView.swift
//  ToDoList
//
//  Created by AMStudent on 10/6/21.
//

import SwiftUI




struct ListRowView: View {
    let title: String
    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
            Text(title)
            Spacer()
        }

    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(title: "My first todo list item")
    }
}
