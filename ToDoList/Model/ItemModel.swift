//
//  ItemModel.swift
//  ToDoList
//
//  Created by AMStudent on 10/6/21.
//

import Foundation


struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
