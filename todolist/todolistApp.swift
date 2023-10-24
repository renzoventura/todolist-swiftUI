//
//  todolistApp.swift
//  todolist
//
//  Created by Renzo on 24/10/2023.
//

import SwiftUI

@main
struct todolistApp: App {
    @StateObject var toDoController = ToDoController()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(toDoController)

        }
    }
}
