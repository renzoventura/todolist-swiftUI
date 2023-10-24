//
//  TodoController.swift
//  todolist
//
//  Created by Renzo on 24/10/2023.
//

import Foundation

class ToDoController : ObservableObject {
    
    
    @Published var listOfTodos = [ToDoItem]()
    
    init() {
        listOfTodos = [
            ToDoItem(text: "Buy food", isDone: true),
            ToDoItem(text: "Go for run", isDone: false),
        ]
    }
    
    var numberOfCompletedTodos: Int {
        return listOfTodos.filter { $0.isDone }.count
    }
    
    func markTodoAsDone(id: UUID) {
        listOfTodos.forEach { todo in
            if(todo.id == id) {
                todo.isDone.toggle();
            }
        }
        listOfTodos = listOfTodos
    }

    func removeTodo(id: UUID) {
        if let index = listOfTodos.firstIndex(where: { $0.id == id }) {
            listOfTodos.remove(at: index)
        }
    }

    func addNewTodo(text: String) {
        listOfTodos.append(ToDoItem(text: text, isDone: false))
    }
    
    func retrieveDoneTodos() -> Int {
        let doneTodos = listOfTodos.filter { $0.isDone }
        return doneTodos.count
    }

}
