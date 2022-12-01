//
//  Shape16.swift
//  SwiftUI+VIPER+VideoPlayer (iOS)
//
//  Created by Keyur Patel on 02/12/22.
//

import SwiftUI

struct Shape16: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.95984*width, y: 0.59837*height))
        path.addCurve(to: CGPoint(x: 0.95984*width, y: 0.40163*height), control1: CGPoint(x: 1.01242*width, y: 0.54017*height), control2: CGPoint(x: 1.01242*width, y: 0.45983*height))
        path.addLine(to: CGPoint(x: 0.65544*width, y: 0.06473*height))
        path.addCurve(to: CGPoint(x: 0.34456*width, y: 0.06473*height), control1: CGPoint(x: 0.57746*width, y: -0.02156*height), control2: CGPoint(x: 0.42254*width, y: -0.02156*height))
        path.addLine(to: CGPoint(x: 0.04016*width, y: 0.40163*height))
        path.addCurve(to: CGPoint(x: 0.04016*width, y: 0.59837*height), control1: CGPoint(x: -0.01242*width, y: 0.45983*height), control2: CGPoint(x: -0.01242*width, y: 0.54017*height))
        path.addLine(to: CGPoint(x: 0.34456*width, y: 0.93527*height))
        path.addCurve(to: CGPoint(x: 0.65544*width, y: 0.93527*height), control1: CGPoint(x: 0.42254*width, y: 1.02156*height), control2: CGPoint(x: 0.57746*width, y: 1.02156*height))
        path.addLine(to: CGPoint(x: 0.95984*width, y: 0.59837*height))
        path.closeSubpath()
        return path
    }
}
