//
//  EventCalendar.swift
//  RoleConnect
//
//  Created by fabossif on 28/04/25.
//

import SwiftUI

struct CalendarView: View {
    
    @StateObject private var viewModel: EventCalendarViewModel
    
    init(initialDate: Date = Date()) {
        _viewModel = StateObject(wrappedValue: EventCalendarViewModel(initialDate: initialDate))
    }
    
    var body: some View {
        VStack(spacing: 24) {
            monthNavigationView
            weekdaysView
            monthGrid
        }
    }
    
    var monthGrid: some View {
        VStack(spacing: 20) {
            
            let days = viewModel.generateMonthGrid()
            
            LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 2), count: 7), spacing: 2) {
                ForEach(days, id: \.self) { date in
                    DayCell(
                        date: date,
                        viewModel: viewModel,
                        eventsForDay: Event.events.filter {
                            viewModel.calendar.isDate($0.date, inSameDayAs: date)
                        }
                    )
                }
            }
            
            EventsList
            
            Spacer()
        }
    }
    
    struct DayCell: View {
        let date: Date
        let viewModel: EventCalendarViewModel
        let eventsForDay: [Event]
        
        var body: some View {
            let isCurrentMonth = viewModel.calendar.isDate(date, equalTo: viewModel.displayedMonth, toGranularity: .month)
            let isSelected = viewModel.selectedDate != nil && viewModel.calendar.isDate(viewModel.selectedDate!, inSameDayAs: date)
            
            VStack(spacing: 4) {
                Text("\(viewModel.calendar.component(.day, from: date))")
                    .font(.system(size: 15))
                    .frame(maxWidth: .infinity, minHeight: 45)
                    .foregroundStyle(isSelected ? .dark : (isCurrentMonth ? .primary : .gray))
                    .background(isSelected ? Color.primary : isCurrentMonth ? .BG : .gray.opacity(0.2))
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .overlay(todayIndicator)
                    .overlay(eventIndicators(isSelected: isSelected))
                    .onTapGesture {
                        if let selected = viewModel.selectedDate, viewModel.calendar.isDate(selected, inSameDayAs: date) {
                            viewModel.selectedDate = nil
                        } else {
                            viewModel.selectedDate = date
                        }
                    }
            }
        }
        
        var todayIndicator: some View {
            RoundedRectangle(cornerRadius: 8)
                .stroke(lineWidth: 1)
                .foregroundStyle(Calendar.current.isDateInToday(date) ? Color.primary : .clear)
                .padding(1)
        }
        
        func eventIndicators(isSelected: Bool) -> some View {
            HStack(spacing: 3) {
                ForEach(0..<min(eventsForDay.count, 5), id: \.self) { _ in
                    Circle()
                        .frame(width: 4, height: 4)
                        .padding(.top, 27)
                        .foregroundStyle(isSelected ? .darkPurple : .darkPurple)
                }
            }
        }
    }
    
    var monthNavigationView: some View {
        HStack {
            Button(action: { viewModel.changeMonth(by: -1) }) {
                Image(systemName: "chevron.left")
            }
            
            Spacer()
            
            Text(viewModel.formatter.string(from: viewModel.displayedMonth))
                .font(.headline)
            
            Spacer()
            
            Button(action: { viewModel.changeMonth(by: 1) }) {
                Image(systemName: "chevron.right")
            }
        }
        .tint(.primary)
        .padding(.horizontal)
    }
    
    var weekdaysView: some View {
        HStack(spacing: 2) {
            ForEach(viewModel.weekdays.indices, id: \.self) { index in
                weekdayCell(for: index)
            }
        }
    }
    
    var EventsList: some View {
        VStack {
            let visibleEvents = viewModel.selectedDate != nil ? Event.events.filter {
                viewModel.calendar.isDate($0.date, inSameDayAs: viewModel.selectedDate!) } : Event.events
            
            if visibleEvents.isEmpty {
                Text("No Events for this day.")
                    .foregroundStyle(.gray)
                    .fontWeight(.semibold)
            } else {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack (spacing: 20) {
                        ForEach(visibleEvents) { event in
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.dark)
                                .frame(height: 80)
                                .overlay {
                                    Text(event.title)
                                }
                        }
                    }
                }
            }
            
        }
    }
    
    func weekdayCell(for index: Int) -> some View {
        Text(viewModel.weekdays[index])
            .font(.system(size: 15))
            .frame(maxWidth: .infinity)
            .foregroundStyle(index == viewModel.todayWeekIndex ? Color.primary : Color.gray)
            .padding(.vertical, 3)
            .background(
                index == viewModel.todayWeekIndex ? Color.gray.opacity(0.4) : Color.gray.opacity(0.2),
                in: RoundedRectangle(cornerRadius: 8)
            )
    }
    
    
}

struct Event: Identifiable {
    let id = UUID()
    let date: Date
    let title: String
    
    static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter
    }()
    
    static let events: [Event] = [
        Event(date: dateFormatter.date(from: "2025-04-27")!, title: "Mamma Jamma, Restaurant"),
        Event(date: dateFormatter.date(from: "2025-04-27")!, title: "Mamma Jamma, Restaurant"),
        Event(date: dateFormatter.date(from: "2025-04-26")!, title: "Ayoama, Japanese Restaurant"),
        Event(date: dateFormatter.date(from: "2025-04-26")!, title: "Bulhadi, Japanese Restaurant"),
        Event(date: dateFormatter.date(from: "2025-04-26")!, title: "Arabe Pararan, Arabic Restaurant"),
        Event(date: dateFormatter.date(from: "2025-04-26")!, title: "Shubau, Restaurant"),
        Event(date: dateFormatter.date(from: "2025-04-24")!, title: "Bom Beef, Churrascaria"),
        Event(date: dateFormatter.date(from: "2025-04-23")!, title: "Nova Bar, Choperia"),
        Event(date: dateFormatter.date(from: "2025-04-22")!, title: "Restaurante20, Espetinho"),
        Event(date: dateFormatter.date(from: "2025-04-20")!, title: "Zé da Manga, Ahhh"),
        Event(date: dateFormatter.date(from: "2025-04-18")!, title: "Mamma Jamma, Restaurant"),
        Event(date: dateFormatter.date(from: "2025-04-12")!, title: "Mamma Jamma, Restaurant"),
        Event(date: dateFormatter.date(from: "2025-04-15")!, title: "Mamma Jamma, Restaurant"),
    ]
}

#Preview {
    ViewMoreEvents()
}
