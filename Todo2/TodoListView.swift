//
//  TodoListView.swift
//  Todo2
//
//  Created by Arvid Axelsson on 2023-01-25.
//

import SwiftUI

struct TodoListView: View {
    
    @State var todoList: [TodoObject]
    @State var categoryList: [String]
    
    var body: some View {
        List {
            ForEach(categoryList, id: \.self) { category in
                Section(category) {
                    ForEach(todoList, id: \.self) { todo in
                        if todo.category == category {
                            TodoListItemView(todo: todo)
                        }
                    }
                }
            }
            .onDelete { indexSet in
                indexSet.forEach { index in
                    todoList.remove(at: index)
                }
            }
        }
        .navigationBarTitle("Todo List")
    }
}

struct TodoListView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
