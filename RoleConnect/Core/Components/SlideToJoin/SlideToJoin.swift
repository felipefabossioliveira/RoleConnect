//
//  SlideToJoin.swift
//  RoleConnect
//
//  Created by Felipe Fabossi on 15/04/25.
//

import SwiftUI

struct SlideToJoin: View {
    
    @State private var animateText: Bool = false
    @State private var offsetX: CGFloat = 0
    @State private var isComplete: Bool = false
    
    var config: Config
    var onSwiped: () -> ()
    
    var body: some View{
        GeometryReader { geo in
            let size = geo.size
            let knobSize = size.height
            let maxLimit = size.width - knobSize
            let progress: CGFloat = isComplete ? 1 : (offsetX / maxLimit)
            
            ZStack(alignment: .leading) {
                Capsule()
                    .fill(
                        .gray.opacity(0.25)
                        .shadow(.inner(color: .black.opacity(0.2), radius: 10))
                    )
                
                let extraCapsuleWidth = (size.width - knobSize) * progress
                
                Capsule()
                    .tint(config.tint.gradient)
                    .frame(width: knobSize + extraCapsuleWidth, height: knobSize)
                
                LeadingTextView(size, progress: progress)
                
                HStack(spacing: 0) {
                    KnobView(size, progress: progress, maxLimit: maxLimit)
                        .zIndex(1)
                    ShimmerTextView(size, progress: progress)
                }
                
            }
            
        }
        .frame(height: isComplete ? 50 : config.height)
        .containerRelativeFrame(.horizontal) { value, _ in
            let ratio: CGFloat = isComplete ? 0.5 : 0.8
            return value * ratio
            
        }
        .frame(maxWidth: 300)
        .allowsTightening(!isComplete)
    
    }


    
    // KnobView
    func KnobView(_ size: CGSize, progress: CGFloat, maxLimit: CGFloat) -> some View {
        Circle()
            .fill(.white)
            .padding(6)
            .frame(width: size.height, height: size.height)
            .overlay {
                ZStack {
                    Image(systemName: "chevron.forward.dotted.chevron.forward")
                        .opacity(1 - progress)
                        .blur(radius: progress * 10)
                    
                    Image(systemName: "checkmark")
                        .opacity(progress)
                        .blur(radius: (1 - progress) * 10)
                    
                }
                .font(.title3.bold())
            }
            .contentShape(.circle)
            .scaleEffect(isComplete ? 0.75 : 1, anchor: .center)
            .offset(x: isComplete ? maxLimit : offsetX)
            .gesture(
                DragGesture()
                    .onChanged({ value in
                        // Limiting the end of the capsule
                        let knobSize = size.height
                        let maxLimit = size.width - knobSize
                        
                        offsetX = min(max(value.translation.width, 0), maxLimit)
                    })
                    .onEnded({ value in
                        if offsetX == maxLimit {
                            onSwiped()
                            
                            animateText = false
                            
                            withAnimation(.smooth) {
                                isComplete = true
                            }
                        } else {
                            withAnimation(.smooth) {
                                offsetX = 0
                            }
                        }
                    })
            )
    }
    
    //Shimmer text view
    func ShimmerTextView(_ size: CGSize, progress: CGFloat) -> some View {
        Text(isComplete ? config.confirmationText : config.idleText)
            .foregroundStyle(.gray.opacity(0.6))
            .overlay {
                Rectangle()
                    .frame(height: 15)
                    .rotationEffect(.init(degrees: 90))
                    .visualEffect { [animateText] content, proxy in
                        content
                            .offset(x: -proxy.size.width / 1.8)
                            .offset(x: animateText ? proxy.size.width * 1.2 : 0)
                    }
                    .mask(alignment: .leading) {
                        Text(config.idleText )
                    }
                    .blendMode(.softLight)
            }
            .font(.system(size: 20))
            .fontWeight(.semibold)
            .frame(maxWidth: .infinity)
            .padding(.trailing, size.height / 2)
            .mask {
                Rectangle()
                    .scale(x: 1 - progress, anchor: .trailing)
            }
            .frame(height: size.height)
            .task {
                withAnimation(.linear(duration: 2.5).repeatForever(autoreverses: false)) {
                    animateText = true
                }
            }
    }
    
    //On Swipe/ Confirmation text view
    func LeadingTextView(_ size: CGSize, progress: CGFloat) -> some View {
        ZStack{
            Text(config.onSwipeText)
                .opacity(isComplete ? 0 : 1)
                .blur(radius: isComplete ? 10 : 0)
            
            Text(config.confirmationText)
                .opacity(!isComplete ? 0 : 1)
                .blur(radius: !isComplete ? 10 : 0)
        }
        .fontWeight(.bold)
        .foregroundStyle(config.foregroundColor)
        .frame(maxWidth: .infinity)
        // To make it center
        .padding(.trailing, (size.height * (isComplete ? 0.6 : 1) / 2))
        .mask {
            Rectangle()
                .scale(x: progress, anchor: .leading)
        }
    }
    
    
    struct Config {
        var idleText: String
        var onSwipeText: String
        var confirmationText: String
        var tint: Color
        var foregroundColor: Color
        var height: CGFloat = 70
    }
}

#Preview {
    UpcomingEventDetail()
}
