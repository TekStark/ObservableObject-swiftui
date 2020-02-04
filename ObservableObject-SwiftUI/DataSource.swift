//
//  DataSource.swift
//  ObservableObject-SwiftUI
//
//  Created by Gaurav Parvadiya on 11/01/20.
//  Copyright © 2020 Gaurav Parvadiya. All rights reserved.
//

import Foundation

struct ToDo: Identifiable {
    let id: UUID
    let text: String
}

class DataSource: ObservableObject {
    @Published var todos: [ToDo] = []
    var counter: Int = 0
    
    init() {
        addTodo()
    }
    
    func addTodo() {
        counter += 1
        todos.append(ToDo(id: UUID(), text: "ToDo No.: \(counter)"))
    }
}
