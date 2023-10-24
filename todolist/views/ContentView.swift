//
//  ContentView.swift
//  todolist
//
//  Created by Renzo on 24/10/2023.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                TitleView()
                TodoCounter()
                    .padding(.vertical, 18)
                    .padding(.horizontal, 8)
            }.padding()
            ListOfTodos()
                .padding([.trailing], 20)
            Spacer()
            HStack {
                Spacer()
                AddToDoButton()
            }.padding([.trailing], 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {

    static var previews: some View {
        ContentView().environmentObject(ToDoController())
    }
    
}
