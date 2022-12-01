//
//  Shape6.swift
//  SwiftUI+VIPER+VideoPlayer (iOS)
//
//  Created by Keyur Patel on 01/12/22.
//

import SwiftUI

struct Shape6: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.43338*width, y: 0.04348*height))
        path.addCurve(to: CGPoint(x: 0.56662*width, y: 0.04348*height), control1: CGPoint(x: 0.46299*width, y: -0.01449*height), control2: CGPoint(x: 0.53701*width, y: -0.01449*height))
        path.addLine(to: CGPoint(x: 0.98853*width, y: 0.86957*height))
        path.addCurve(to: CGPoint(x: 0.92191*width, y: height), control1: CGPoint(x: 1.01814*width, y: 0.92754*height), control2: CGPoint(x: 0.98113*width, y: height))
        path.addLine(to: CGPoint(x: 0.07809*width, y: height))
        path.addCurve(to: CGPoint(x: 0.01147*width, y: 0.86957*height), control1: CGPoint(x: 0.01887*width, y: height), control2: CGPoint(x: -0.01813*width, y: 0.92754*height))
        path.addLine(to: CGPoint(x: 0.43338*width, y: 0.04348*height))
        path.closeSubpath()
        return path
    }
}
