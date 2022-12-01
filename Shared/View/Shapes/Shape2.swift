//
//  Shape2.swift
//  SwiftUI+VIPER+VideoPlayer (iOS)
//
//  Created by Keyur Patel on 01/12/22.
//

import SwiftUI

struct Shape2: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.49763*width, y: 0))
        path.addLine(to: CGPoint(x: 0, y: 0.097*height))
        path.addLine(to: CGPoint(x: 0, y: 0.35334*height))
        path.addCurve(to: CGPoint(x: 0.48681*width, y: 0.99601*height), control1: CGPoint(x: 0, y: 0.64453*height), control2: CGPoint(x: 0.18199*width, y: 0.88478*height))
        path.addLine(to: CGPoint(x: 0.49775*width, y: height))
        path.addLine(to: CGPoint(x: 0.50869*width, y: 0.99601*height))
        path.addCurve(to: CGPoint(x: width, y: 0.35298*height), control1: CGPoint(x: 0.81634*width, y: 0.88375*height), control2: CGPoint(x: width, y: 0.64351*height))
        path.addLine(to: CGPoint(x: 0.99504*width, y: 0.09694*height))
        path.addLine(to: CGPoint(x: 0.49763*width, y: 0))
        path.closeSubpath()
        return path
    }
}
