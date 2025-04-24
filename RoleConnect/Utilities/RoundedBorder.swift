//
//  RoundedBorder.swift
//  RoleConnect
//
//  Created by fabossif on 24/04/25.
//

import Foundation
import SwiftUI

public struct CustomRoundedShape: Shape {
    
    let topLeftRadius: CGFloat?
    let topRightRadius: CGFloat?
    let bottomLeftRadius: CGFloat?
    let bottomRightRadius: CGFloat?
    
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let width = rect.size.width
        let height = rect.size.height
        
        // Limita os raios para evitar distorções
        let tl = min(min(topLeftRadius ?? 0, width / 2), height / 2)
        let tr = min(min(topRightRadius ?? 0, width / 2), height / 2)
        let bl = min(min(bottomLeftRadius ?? 0, width / 2), height / 2)
        let br = min(min(bottomRightRadius ?? 0, width / 2), height / 2)
        
        // Desenha o caminho
        path.move(to: CGPoint(x: tl, y: 0))
        
        // Canto superior direito
        path.addLine(to: CGPoint(x: width - tr, y: 0))
        path.addArc(
            center: CGPoint(x: width - tr, y: tr),
            radius: tr,
            startAngle: Angle(degrees: -90),
            endAngle: Angle(degrees: 0),
            clockwise: false
        )
        
        // Canto inferior direito
        path.addLine(to: CGPoint(x: width, y: height - br))
        path.addArc(
            center: CGPoint(x: width - br, y: height - br),
            radius: br,
            startAngle: Angle(degrees: 0),
            endAngle: Angle(degrees: 90),
            clockwise: false
        )
        
        // Canto inferior esquerdo
        path.addLine(to: CGPoint(x: bl, y: height))
        path.addArc(
            center: CGPoint(x: bl, y: height - bl),
            radius: bl,
            startAngle: Angle(degrees: 90),
            endAngle: Angle(degrees: 180),
            clockwise: false
        )
        
        // Canto superior esquerdo
        path.addLine(to: CGPoint(x: 0, y: tl))
        path.addArc(
            center: CGPoint(x: tl, y: tl),
            radius: tl,
            startAngle: Angle(degrees: 180),
            endAngle: Angle(degrees: 270),
            clockwise: false
        )
        
        path.closeSubpath()
        
        return path
    }
}


public struct TopRoundedRectangle: Shape {
    
    let cornerRadius: CGFloat
    
    public func path(in rect: CGRect) -> Path {
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

