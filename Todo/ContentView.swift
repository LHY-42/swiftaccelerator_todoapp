//
//  ContentView.swift
//  Todo
//
//  Created by hy loh on 25/6/22.
//

import SwiftUI

struct ContentView: View {
    
    var todos = [
        Todo(title: "Get Jiachen to create the #help-im-stuck-inside-with-yuhan channel", isCompleted: true),
        Todo(title: "Conduct a giveaway"),
        Todo(title: "Randomly deduct some points")
    ]
    
    var body: some View {
        NavigationView{
            
            List(todos) { todo in
                HStack {
                    
                    Image(systemName: todo.isCompleted ?  "checkmark.circle.fill":"circle")
                    Text(todo.title)
                        .strikethrough(todo.isCompleted ? true:false)
                }
            }
            .navigationTitle("Todos")

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
