//
//  ContentView.swift
//  ObservableObject-SwiftUI
//
//  Created by Gaurav Parvadiya on 11/01/20.
//  Copyright © 2020 Gaurav Parvadiya. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var dataSource = DataSource()
    
    var body: some View {
        ZStack {
            if dataSource.todos.count > 0 {
                List {
                    Button(action: {
                        self.dataSource.addTodo()
                    }, label: {
                        Text("Create ToDo")
                            .foregroundColor(Color.blue)
                            .font(.title)
                            .fontWeight(.semibold)
                    })
                    
                    ForEach(dataSource.todos) { todo in
                        Text(todo.text)
                    }
                }
            } else {
                Text("No ToDo available")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
