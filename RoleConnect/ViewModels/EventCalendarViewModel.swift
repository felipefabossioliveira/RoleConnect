//
//  WeekdayHeaderHomeViewModel.swift
//  RoleConnect
//
//  Created by fabossif on 28/04/25.
//

import SwiftUI

class EventCalendarViewModel: ObservableObject {
    
    @Published var displayedMonth: Date
    @Published var selectedDate: Date? = nil
    
    let calendar = Calendar.current
    let currentDate: Date

    
    init(initialDate: Date = Date()) {
        self.currentDate = Calendar.current.startOfDay(for: initialDate)
        self.displayedMonth = initialDate
    }
    
    var formatter: DateFormatter {
        let f = DateFormatter()
        f.dateFormat = "MMMM yyyy"
        return f
    }
    
    var weekdays: [String] {
        let symbols = calendar.shortWeekdaySymbols
        return Array(symbols[1...6] + [symbols[0]])
    }
    
    var todayWeekIndex: Int {
        let originalIndex = calendar.component(.weekday, from: Date()) - 1
        return (originalIndex + 6) % 7
    }
    
    func changeMonth(by value: Int) {
        displayedMonth = calendar.date(byAdding: .month, value: value, to: displayedMonth) ?? displayedMonth
    }
    func eventsForSelectedDate() -> [EventB] {
        let dateToUse = selectedDate ?? currentDate
        return EventB.events.filter {
            calendar.isDate($0.date, inSameDayAs: dateToUse)
        }
    }
    
    func generateMonthGrid() -> [Date] {
        guard let monthInterval = calendar.dateInterval(of: .month, for: displayedMonth),
              let firstWeek =  calendar.dateInterval(of: .weekOfMonth, for: monthInterval.start),
              let lastWeek = calendar.dateInterval(of: .weekOfMonth, for: monthInterval.end - 1)
        else { return [] }

        return stride(from: firstWeek.start, to: lastWeek.end, by: 86400).map { $0 }
    }
    
    func selectDate(_ date: Date) {
            if let selected = selectedDate, calendar.isDate(selected, inSameDayAs: date) {
                selectedDate = nil
            } else {
                selectedDate = date
            }
        }
}
  
