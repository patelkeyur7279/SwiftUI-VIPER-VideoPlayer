//
//  Shape14.swift
//  SwiftUI+VIPER+VideoPlayer (iOS)
//
//  Created by Keyur Patel on 02/12/22.
//

import SwiftUI

struct Shape14: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: width, y: 0.42753*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0), control1: CGPoint(x: width, y: 0.19141*height), control2: CGPoint(x: 0.77613*width, y: 0))
        path.addCurve(to: CGPoint(x: 0, y: 0.42753*height), control1: CGPoint(x: 0.22387*width, y: 0), control2: CGPoint(x: 0, y: 0.19141*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0.85501*height), control1: CGPoint(x: 0, y: 0.66365*height), control2: CGPoint(x: 0.22387*width, y: 0.85501*height))
        path.addCurve(to: CGPoint(x: 0.71809*width, y: 0.82987*height), control1: CGPoint(x: 0.60283*width, y: 0.85501*height), control2: CGPoint(x: 0.60745*width, y: 0.85501*height))
        path.addCurve(to: CGPoint(x: 0.75889*width, y: 0.91449*height), control1: CGPoint(x: 0.7407*width, y: 0.84906*height), control2: CGPoint(x: 0.75277*width, y: 0.88095*height))
        path.addCurve(to: CGPoint(x: 0.84538*width, y: 0.98247*height), control1: CGPoint(x: 0.76961*width, y: 0.97322*height), control2: CGPoint(x: 0.81344*width, y: 1.02431*height))
        path.addCurve(to: CGPoint(x: 0.89043*width, y: 0.73104*height), control1: CGPoint(x: 0.92261*width, y: 0.88127*height), control2: CGPoint(x: 0.89043*width, y: 0.73104*height))
        path.addCurve(to: CGPoint(x: width, y: 0.42753*height), control1: CGPoint(x: 0.97326*width, y: 0.6551*height), control2: CGPoint(x: width, y: 0.53996*height))
        path.closeSubpath()
        return path
    }
}
