//
//  EventList.swift
//  RoleConnect
//
//  Created by Felipe Fabossi on 14/04/25.
//

import SwiftUI

struct UpcomingEventList: View {
    
    @StateObject private var eventListVM = UpcomingEventViewModel()
    
    var body: some View {
        VStack(spacing: 25) {
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 25) {
                    ForEach(eventListVM.upcomingEventList) { item in
                        EventListItem(item: item)
                    }
                }
            }
            .frame(height: 290)
        }
        .onAppear {
            eventListVM.fetchUpcomingEvents()
        }
    }
}

struct EventListItem: View {
    let item: UpcomingEventModel
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(.dark)
            .frame(width: 300, height: 290)
            .overlay {
                VStack(alignment: .leading, spacing: 0) {
                    Image(item.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 300, height: 170)
                        .clipShape(TopRoundedRectangle(cornerRadius: 20))
                        .overlay(alignment: .topTrailing) {
                            Circle()
                                .foregroundStyle(.white)
                                .frame(height: 44)
                                .overlay {
                                    Image(systemName: "heart.fill")
                                        .foregroundStyle(.pink)
                                }
                                .padding(10)
                        }
                    
                    // Conteúdo abaixo da imagem
                    VStack(alignment: .leading, spacing: 15) {
                        Text(item.name)
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .padding(.horizontal, 10)
                        
                        HStack(spacing: 10) {
                            Image("calendar")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 20)
                            
                            Text(item.date)
                                .font(.caption)
                                .fontWeight(.medium)
                                .foregroundStyle(.gray)
                            
                            Image("clock")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 20)
                            
                            Text(item.time)
                                .font(.caption)
                                .fontWeight(.medium)
                                .foregroundStyle(.gray)
                        }
                        .padding(.horizontal, 10)
                        
                        Participants(height: 30, circleHeight: 35)
                            .padding(.horizontal, 10)
                    }
                    .padding(.vertical, 10)
                }
            }
    }
}

struct TopRoundedRectangle: Shape {
    let cornerRadius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let width = rect.size.width
        let height = rect.size.height
        let radius = min(cornerRadius, min(width, height) / 2)
        
        path.move(to: CGPoint(x: 0, y: radius))
        
        path.addArc(
            center: CGPoint(x: radius, y: radius),
            radius: radius,
            startAngle: Angle(degrees: 180),
            endAngle: Angle(degrees: 270),
            clockwise: false
        )
        
        path.addLine(to: CGPoint(x: width - radius, y: 0))
        
        path.addArc(
            center: CGPoint(x: width - radius, y: radius),
            radius: radius,
            startAngle: Angle(degrees: -90),
            endAngle: Angle(degrees: 0),
            clockwise: false
        )
        
        path.addLine(to: CGPoint(x: width, y: height))
        
        path.addLine(to: CGPoint(x: 0, y: height))
        
        path.closeSubpath()
        
        return path
    }
}

#Preview {
    UpcomingEventList()
}
