//
//  Shape9.swift
//  SwiftUI+VIPER+VideoPlayer (iOS)
//
//  Created by Keyur Patel on 01/12/22.
//

import SwiftUI

struct Shape9: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.25*width, y: 0))
        path.addCurve(to: CGPoint(x: 0, y: 0.27757*height), control1: CGPoint(x: 0.11195*width, y: 0), control2: CGPoint(x: 0, y: 0.12426*height))
        path.addCurve(to: CGPoint(x: 0.4744*width, y: 0.99195*height), control1: CGPoint(x: 0, y: 0.40132*height), control2: CGPoint(x: 0.04375*width, y: 0.69504*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: height), control1: CGPoint(x: 0.48211*width, y: 0.99722*height), control2: CGPoint(x: 0.49097*width, y: height))
        path.addCurve(to: CGPoint(x: 0.5256*width, y: 0.99195*height), control1: CGPoint(x: 0.50903*width, y: height), control2: CGPoint(x: 0.51789*width, y: 0.99722*height))
        path.addCurve(to: CGPoint(x: width, y: 0.27757*height), control1: CGPoint(x: 0.95625*width, y: 0.69504*height), control2: CGPoint(x: width, y: 0.40132*height))
        path.addCurve(to: CGPoint(x: 0.75*width, y: 0), control1: CGPoint(x: width, y: 0.12426*height), control2: CGPoint(x: 0.88805*width, y: 0))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0.16822*height), control1: CGPoint(x: 0.61195*width, y: 0), control2: CGPoint(x: 0.5*width, y: 0.16822*height))
        path.addCurve(to: CGPoint(x: 0.25*width, y: 0), control1: CGPoint(x: 0.5*width, y: 0.16822*height), control2: CGPoint(x: 0.38805*width, y: 0))
        path.closeSubpath()
        return path
    }
}
