//
//  Shape8.swift
//  SwiftUI+VIPER+VideoPlayer (iOS)
//
//  Created by Keyur Patel on 01/12/22.
//

import SwiftUI

struct Shape8: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.38886*width, y: 0.03057*height))
        path.addCurve(to: CGPoint(x: 0.61114*width, y: 0.03057*height), control1: CGPoint(x: 0.45794*width, y: -0.00676*height), control2: CGPoint(x: 0.54206*width, y: -0.00676*height))
        path.addCurve(to: CGPoint(x: 0.69519*width, y: 0.057*height), control1: CGPoint(x: 0.6371*width, y: 0.0446*height), control2: CGPoint(x: 0.66566*width, y: 0.05358*height))
        path.addCurve(to: CGPoint(x: 0.87501*width, y: 0.18344*height), control1: CGPoint(x: 0.77374*width, y: 0.06609*height), control2: CGPoint(x: 0.8418*width, y: 0.11395*height))
        path.addCurve(to: CGPoint(x: 0.92696*width, y: 0.25264*height), control1: CGPoint(x: 0.8875*width, y: 0.20957*height), control2: CGPoint(x: 0.90514*width, y: 0.23307*height))
        path.addCurve(to: CGPoint(x: 0.99564*width, y: 0.45723*height), control1: CGPoint(x: 0.98498*width, y: 0.30468*height), control2: CGPoint(x: 1.01098*width, y: 0.38212*height))
        path.addCurve(to: CGPoint(x: 0.99564*width, y: 0.54277*height), control1: CGPoint(x: 0.98988*width, y: 0.48547*height), control2: CGPoint(x: 0.98988*width, y: 0.51453*height))
        path.addCurve(to: CGPoint(x: 0.92696*width, y: 0.74736*height), control1: CGPoint(x: 1.01098*width, y: 0.61788*height), control2: CGPoint(x: 0.98498*width, y: 0.69532*height))
        path.addCurve(to: CGPoint(x: 0.87501*width, y: 0.81656*height), control1: CGPoint(x: 0.90514*width, y: 0.76692*height), control2: CGPoint(x: 0.8875*width, y: 0.79043*height))
        path.addCurve(to: CGPoint(x: 0.69519*width, y: 0.943*height), control1: CGPoint(x: 0.8418*width, y: 0.88605*height), control2: CGPoint(x: 0.77374*width, y: 0.93391*height))
        path.addCurve(to: CGPoint(x: 0.61114*width, y: 0.96943*height), control1: CGPoint(x: 0.66566*width, y: 0.94642*height), control2: CGPoint(x: 0.6371*width, y: 0.9554*height))
        path.addCurve(to: CGPoint(x: 0.38886*width, y: 0.96943*height), control1: CGPoint(x: 0.54206*width, y: 1.00676*height), control2: CGPoint(x: 0.45794*width, y: 1.00676*height))
        path.addCurve(to: CGPoint(x: 0.30481*width, y: 0.943*height), control1: CGPoint(x: 0.3629*width, y: 0.9554*height), control2: CGPoint(x: 0.33434*width, y: 0.94642*height))
        path.addCurve(to: CGPoint(x: 0.12499*width, y: 0.81656*height), control1: CGPoint(x: 0.22626*width, y: 0.93391*height), control2: CGPoint(x: 0.1582*width, y: 0.88605*height))
        path.addCurve(to: CGPoint(x: 0.07304*width, y: 0.74736*height), control1: CGPoint(x: 0.1125*width, y: 0.79043*height), control2: CGPoint(x: 0.09486*width, y: 0.76692*height))
        path.addCurve(to: CGPoint(x: 0.00436*width, y: 0.54277*height), control1: CGPoint(x: 0.01502*width, y: 0.69532*height), control2: CGPoint(x: -0.01098*width, y: 0.61788*height))
        path.addCurve(to: CGPoint(x: 0.00436*width, y: 0.45723*height), control1: CGPoint(x: 0.01012*width, y: 0.51453*height), control2: CGPoint(x: 0.01012*width, y: 0.48547*height))
        path.addCurve(to: CGPoint(x: 0.07304*width, y: 0.25264*height), control1: CGPoint(x: -0.01098*width, y: 0.38212*height), control2: CGPoint(x: 0.01502*width, y: 0.30468*height))
        path.addCurve(to: CGPoint(x: 0.12499*width, y: 0.18344*height), control1: CGPoint(x: 0.09486*width, y: 0.23307*height), control2: CGPoint(x: 0.1125*width, y: 0.20957*height))
        path.addCurve(to: CGPoint(x: 0.30481*width, y: 0.057*height), control1: CGPoint(x: 0.1582*width, y: 0.11395*height), control2: CGPoint(x: 0.22626*width, y: 0.06609*height))
        path.addCurve(to: CGPoint(x: 0.38886*width, y: 0.03057*height), control1: CGPoint(x: 0.33434*width, y: 0.05358*height), control2: CGPoint(x: 0.3629*width, y: 0.0446*height))
        path.closeSubpath()
        return path
    }
}
