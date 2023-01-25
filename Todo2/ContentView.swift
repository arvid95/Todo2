//
//  ContentView.swift
//  Todo2
//
//  Created by Arvid Axelsson on 2023-01-25.
//

import SwiftUI

struct TodoObject: Hashable {
    let title: String
    var isDone = false
    let category: String
}

struct ContentView: View {
    
    @State private var inputText = ""
    @State private var todoList: [TodoObject] = [TodoObject(title: "Clean under sink", category: "General"), TodoObject(title: "Buy potatoes", category: "Shopping"), TodoObject(title: "Run around Munksjön", category: "Fitness"), TodoObject(title: "Complete Lab 1", category: "Studying"), TodoObject(title: "Complete Lab 2", category: "Studying")]
    @State private var categoryList = ["General", "Shopping", "Fitness", "Studying"]
    @State private var selectedCategory = "General"
    
    var body: some View {
        NavigationStack {
            TodoListView(todoList: todoList, categoryList: categoryList)
            TodoCreatorView(inputText: $inputText, todoList: todoList, selectedCategory: $selectedCategory, categoryList: categoryList)
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
