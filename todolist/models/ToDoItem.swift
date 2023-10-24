//
//  ToDoItem.swift
//  todolist
//
//  Created by Renzo on 24/10/2023.
//

import Foundation


class ToDoItem : Identifiable {
    
    internal init(text: String, isDone: Bool) {
        self.text = text
        self.isDone = isDone
    }
    
    var id: UUID = UUID();
    let text : String;
    var isDone : Bool;
}
