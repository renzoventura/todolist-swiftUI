//
//  AddToDoButton.swift
//  todolist
//
//  Created by Renzo on 24/10/2023.
//

import SwiftUI

struct AddToDoButton: View {
    @EnvironmentObject var c: ToDoController
    @State private var isAlertPresented = false
    @State private var enteredText = ""
    
    var body: some View {
        Circle()
            .frame(width: 60, height: 60)
            .foregroundColor(.green)
            .overlay(
                Text("+")
                    .font(.system(size: 30, weight: .bold))
                    .foregroundColor(.white))
            .onTapGesture {
                isAlertPresented = true
            }
            .alert("Add", isPresented: $isAlertPresented, actions: {
                TextField("Buy Groceries...", text: $enteredText)
                Button("Add", action: {
                    c.addNewTodo(text: enteredText)
                    enteredText = ""
                })
                Button("Cancel", role: .cancel, action: {
                    enteredText = ""
                })
            }, message: {
                Text("Add your new todo")
            })
    }
}

