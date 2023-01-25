//
//  TodoListItemView.swift
//  Todo2
//
//  Created by Arvid Axelsson on 2023-01-25.
//

import SwiftUI

struct TodoListItemView: View {
    
    @State var todo: TodoObject
    let colors: [String: Color] = ["General": .gray, "Shopping": .cyan, "Fitness": .yellow, "Studying": .green]
    
    var body: some View {
        HStack {
            Image(systemName: todo.isDone ? "checkmark.square" : "square")
            Text(todo.title)
        }
        .listRowBackground(colors[todo.category, default: .white])
        .onTapGesture {
            todo.isDone.toggle()
        }
    }
}

struct TodoListItemView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
