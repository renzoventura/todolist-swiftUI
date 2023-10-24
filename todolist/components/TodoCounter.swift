//
//  TodoCounter.swift
//  todolist
//
//  Created by Renzo on 24/10/2023.
//

import SwiftUI


struct TodoCounter: View {
    @EnvironmentObject var c: ToDoController

    var body: some View {
        HStack{
            VStack (alignment: .leading){
                Text(String(c.listOfTodos.count))
                    .fontWeight(.bold)
                Text("Created Tasks")
                    .foregroundColor(.gray)
            }
            Spacer()
            VStack(alignment: .trailing) {
                Text(String(c.retrieveDoneTodos()))
                    .fontWeight(.bold)
                Text("Completed Tasks")
                    .foregroundColor(.gray)
                
            }
        }
    }
}


