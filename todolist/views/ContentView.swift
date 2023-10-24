//
//  ContentView.swift
//  todolist
//
//  Created by Renzo on 24/10/2023.
//

import SwiftUI


struct ContentView: View {
    @ObservedObject var c = ToDoController()
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                TitleView()
                TodoCounter(toDoController: c)
                    .padding(.vertical, 18)
                    .padding(.horizontal, 8)
            }.padding()
            ListOfTodos(c: c)
                .padding([.trailing], 20)
            Spacer()
            HStack {
                Spacer()
                AddToDoButton(toDoController: c)
            }.padding([.trailing], 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
}
