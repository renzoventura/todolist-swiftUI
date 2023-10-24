//
//  TodoCounter.swift
//  todolist
//
//  Created by Renzo on 24/10/2023.
//

import SwiftUI


struct TodoCounter: View {
    @ObservedObject var toDoController : ToDoController

    var body: some View {
        HStack{
            VStack (alignment: .leading){
                Text(String(toDoController.listOfTodos.count))
                    .fontWeight(.bold)
                Text("Created Tasks")
                    .foregroundColor(.gray)
            }
            Spacer()
            VStack(alignment: .trailing) {
                Text(String(toDoController.retrieveDoneTodos()))
                    .fontWeight(.bold)
                Text("Completed Tasks")
                    .foregroundColor(.gray)
                
            }
        }
    }
}


