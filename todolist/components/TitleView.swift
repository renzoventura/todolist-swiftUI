//
//  TitleView.swift
//  todolist
//
//  Created by Renzo on 24/10/2023.
//

import SwiftUI

struct TitleView: View {
    func getCurrentDay() -> String {
        let currentDate = Date()
        let calendar = Calendar.current
        let day = calendar.component(.day, from: currentDate)
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM"
        let monthName = dateFormatter.string(from: Date())
        let month = monthName
        return "\(day) \(month)"
    }
    
    func getCurrentDayOfWeek() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        let dayOfWeek = dateFormatter.string(from: Date())
        return dayOfWeek
    }
    var body: some View {
        HStack {
            Text("\(getCurrentDayOfWeek()), ")
                .font(.title)
                .fontWeight(.bold)
            Text(getCurrentDay()).font(.title)
        }
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView()
    }
}
