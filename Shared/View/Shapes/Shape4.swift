//
//  Shape4.swift
//  SwiftUI+VIPER+VideoPlayer (iOS)
//
//  Created by Keyur Patel on 01/12/22.
//

import SwiftUI

struct Shape4: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.36257*width, y: 0.04745*height))
        path.addCurve(to: CGPoint(x: 0.63743*width, y: 0.04745*height), control1: CGPoint(x: 0.44422*width, y: -0.01355*height), control2: CGPoint(x: 0.55578*width, y: -0.01355*height))
        path.addLine(to: CGPoint(x: 0.90624*width, y: 0.24824*height))
        path.addCurve(to: CGPoint(x: 0.98889*width, y: 0.50646*height), control1: CGPoint(x: 0.9857*width, y: 0.3076*height), control2: CGPoint(x: 1.01893*width, y: 0.41141*height))
        path.addLine(to: CGPoint(x: 0.88449*width, y: 0.83683*height))
        path.addCurve(to: CGPoint(x: 0.6644*width, y: 0.99912*height), control1: CGPoint(x: 0.85394*width, y: 0.93349*height), control2: CGPoint(x: 0.76494*width, y: 0.99912*height))
        path.addLine(to: CGPoint(x: 0.3356*width, y: 0.99912*height))
        path.addCurve(to: CGPoint(x: 0.11551*width, y: 0.83683*height), control1: CGPoint(x: 0.23506*width, y: 0.99912*height), control2: CGPoint(x: 0.14606*width, y: 0.93349*height))
        path.addLine(to: CGPoint(x: 0.01111*width, y: 0.50646*height))
        path.addCurve(to: CGPoint(x: 0.09376*width, y: 0.24824*height), control1: CGPoint(x: -0.01893*width, y: 0.41141*height), control2: CGPoint(x: 0.0143*width, y: 0.3076*height))
        path.addLine(to: CGPoint(x: 0.36257*width, y: 0.04745*height))
        path.closeSubpath()
        return path
    }
}
