//
//  Shape15.swift
//  SwiftUI+VIPER+VideoPlayer (iOS)
//
//  Created by Keyur Patel on 02/12/22.
//

import SwiftUI

struct Shape15: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.51192*width, y: 0.99986*height))
        path.addCurve(to: CGPoint(x: width, y: 0.5*height), control1: CGPoint(x: 0.78256*width, y: 0.99353*height), control2: CGPoint(x: width, y: 0.77216*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0), control1: CGPoint(x: width, y: 0.22386*height), control2: CGPoint(x: 0.77614*width, y: 0))
        path.addCurve(to: CGPoint(x: 0.00014*width, y: 0.48807*height), control1: CGPoint(x: 0.22784*width, y: 0), control2: CGPoint(x: 0.00647*width, y: 0.21744*height))
        path.addLine(to: CGPoint(x: 0.00004*width, y: 0.87043*height))
        path.addCurve(to: CGPoint(x: 0.13082*width, y: 0.99996*height), control1: CGPoint(x: 0.00002*width, y: 0.94198*height), control2: CGPoint(x: 0.05858*width, y: 0.99998*height))
        path.addLine(to: CGPoint(x: 0.51192*width, y: 0.99986*height))
        path.closeSubpath()
        return path
    }
}
