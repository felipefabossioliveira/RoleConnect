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
        VStack(alignment: .leading, spacing: 24) {
            monthNavigationView
            weekdaysView
            monthGrid
            
            Text("All Events")
                .fontWeight(.bold)
                .font(.title3)
            
            EventsList
        }

        Spacer()
    }
    
    var monthGrid: some View {
        VStack(spacing: 20) {
            
            let days = viewModel.generateMonthGrid()
            
            LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 2), count: 7), spacing: 2) {
                ForEach(days, id: \.self) { date in
                    DayCell(
                        date: date,
                        viewModel: viewModel,
                        eventsForDay: EventB.events.filter {
                            viewModel.calendar.isDate($0.date, inSameDayAs: date)
                        }
                    )
                }
            }
        }
    }
    
    struct DayCell: View {
        let date: Date
        let viewModel: EventCalendarViewModel
        let eventsForDay: [EventB]
        
        var body: some View {
            let isCurrentMonth = viewModel.calendar.isDate(date, equalTo: viewModel.displayedMonth, toGranularity: .month)
            let isSelected = viewModel.selectedDate != nil && viewModel.calendar.isDate(viewModel.selectedDate!, inSameDayAs: date)
            
            VStack(spacing: 4) {
                Text("\(viewModel.calendar.component(.day, from: date))")
                    .font(.system(size: 15))
                    .frame(maxWidth: .infinity, minHeight: 45)
                    .foregroundStyle(isSelected ? .dark : (isCurrentMonth ? .primary : .gray))
                    .background(isSelected ? .white : (isCurrentMonth ? .BG : .gray.opacity(0.2)))                    .clipShape(RoundedRectangle(cornerRadius: 8))
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
                    RoundedRectangle(cornerRadius: 10)
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
            let visibleEvents = viewModel.selectedDate != nil ? EventB.events.filter {
                viewModel.calendar.isDate($0.date, inSameDayAs: viewModel.selectedDate!) } : EventB.events
            
            if visibleEvents.isEmpty {
                Text("No Events for this day.")
                    .foregroundStyle(.gray)
                    .fontWeight(.semibold)
            } else {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack (spacing: 20) {
                        ForEach(visibleEvents) { event in
                            EventItem(item: event)
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

struct EventItem: View {
     
    let item: EventB
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(.clear)
            .frame(width: .infinity, height: 100)
            .overlay {
                HStack(alignment: .lastTextBaseline) {
                    HStack {
                        Image("pizzaria")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 70, height: 70)
                            .clipShape(CustomRoundedShape(topLeftRadius: 10, topRightRadius: 10, bottomLeftRadius: 10, bottomRightRadius: 10))
                        
                        VStack(alignment: .leading) {
                            Text(item.title)
                                .font(.caption)
                                .fontWeight(.semibold)
                            
                            HStack(alignment: .lastTextBaseline, spacing: 5) {
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 10)
                                    .foregroundStyle(.yellow)
                                    .fontWeight(.bold)
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 10)
                                    .foregroundStyle(.yellow)
                                    .fontWeight(.bold)
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 10)
                                    .foregroundStyle(.yellow)
                                    .fontWeight(.bold)
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 10)
                                    .foregroundStyle(.yellow)
                                    .fontWeight(.bold)
                                Image(systemName: "star")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 10)
                                    .foregroundStyle(.yellow)
                                    .fontWeight(.bold)
                                
                                
                                HStack {
                                    Text("4.8")
                                        .fontWeight(.medium)
                                        .font(.caption)
                                }
                            }
                            
                            Text("April 28 2025")
                                .font(.caption)
                                .fontWeight(.semibold)
                                .foregroundStyle(.gray)
                        }
                    }
                    
                    Spacer()
                    
                    
                    RoundedRectangle(cornerRadius: 5)
                        .fill(.BG)
                        .frame(width: 70, height: 30)
                        .overlay {
                            HStack {
                                Text("Join")
                                    .font(.caption)
                                    .fontWeight(.bold)
                                
                                Image(systemName: "chevron.right")
                                    .font(.caption)
                            }
                        }
                    
                }
                .padding(.horizontal,10)
            }
    }
}

struct EventB: Identifiable {
    let id = UUID()
    let date: Date
    let title: String
    
    static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter
    }()
    
    static let events: [EventB] = [
        EventB(date: dateFormatter.date(from: "2025-04-27")!, title: "Mamma Jamma, Restaurant"),
        EventB(date: dateFormatter.date(from: "2025-04-26")!, title: "Ayoama, Japanese Restaurant"),
        EventB(date: dateFormatter.date(from: "2025-04-23")!, title: "Nova Bar, Choperia"),
        EventB(date: dateFormatter.date(from: "2025-04-27")!, title: "Mamma Jamma, Restaurant"),
        EventB(date: dateFormatter.date(from: "2025-04-26")!, title: "Bulhadi, Japanese Restaurant"),
        EventB(date: dateFormatter.date(from: "2025-04-26")!, title: "Arabe Pararan, Arabic Restaurant"),
        EventB(date: dateFormatter.date(from: "2025-04-26")!, title: "Shubau, Restaurant"),
        EventB(date: dateFormatter.date(from: "2025-04-24")!, title: "Bom Beef, Churrascaria"),
        EventB(date: dateFormatter.date(from: "2025-04-23")!, title: "Nova Bar, Choperia"),
        EventB(date: dateFormatter.date(from: "2025-04-22")!, title: "Restaurante20, Espetinho"),
        EventB(date: dateFormatter.date(from: "2025-04-20")!, title: "Zé da Manga, Ahhh"),
        EventB(date: dateFormatter.date(from: "2025-04-18")!, title: "Mamma Jamma, Restaurant"),
        EventB(date: dateFormatter.date(from: "2025-04-12")!, title: "Mamma Jamma, Restaurant"),
        EventB(date: dateFormatter.date(from: "2025-04-15")!, title: "Mamma Jamma, Restaurant"),
    ]
}

#Preview {
    ViewMoreEvents()
}
