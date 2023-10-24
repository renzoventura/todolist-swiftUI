//
//  ListOfTodos.swift
//  todolist
//
//  Created by Renzo on 24/10/2023.
//

import SwiftUI

struct ListOfTodos: View {
    @ObservedObject var c : ToDoController

    var body: some View {
        List(c.listOfTodos) { todo in
            HStack {
                HStack {
                    Checkmark(toDoController: c, todo: todo)
                    Text(todo.text)
                    Spacer()
                }.onTapGesture {
                    c.markTodoAsDone(id: todo.id)
                }
                DeleteButton(c: c, todo: todo)
            }
        }.scrollContentBackground(.hidden)
            .listStyle(PlainListStyle())
    }
}



struct Checkmark: View {
    @ObservedObject var toDoController : ToDoController

    let todo : ToDoItem;
    var body: some View {
        !todo.isDone ? Image(systemName: "circle").foregroundColor(.black) : Image(systemName: "checkmark.circle.fill").foregroundColor(.green)
    }
}

struct DeleteButton: View {
    @ObservedObject var c : ToDoController

    let todo : ToDoItem;
    var body: some View {
        if todo.isDone {
            Image(systemName: "trash.fill").onTapGesture {
                c.removeTodo(id: todo.id);
            }
        }
    }
}
