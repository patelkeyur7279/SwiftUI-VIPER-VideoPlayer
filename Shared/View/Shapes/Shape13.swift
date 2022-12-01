//
//  Shape13.swift
//  SwiftUI+VIPER+VideoPlayer (iOS)
//
//  Created by Keyur Patel on 02/12/22.
//

import SwiftUI

struct Shape13: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.5*width, y: 0))
        path.addCurve(to: CGPoint(x: 0.85355*width, y: 0.13153*height), control1: CGPoint(x: 0.63261*width, y: 0), control2: CGPoint(x: 0.75978*width, y: 0.04731*height))
        path.addCurve(to: CGPoint(x: width, y: 0.44908*height), control1: CGPoint(x: 0.94732*width, y: 0.21575*height), control2: CGPoint(x: width, y: 0.32997*height))
        path.addLine(to: CGPoint(x: width, y: 0.80556*height))
        path.addCurve(to: CGPoint(x: 0.80392*width, y: height), control1: CGPoint(x: width, y: 0.91294*height), control2: CGPoint(x: 0.91221*width, y: height))
        path.addLine(to: CGPoint(x: 0.19608*width, y: height))
        path.addCurve(to: CGPoint(x: 0, y: 0.80556*height), control1: CGPoint(x: 0.08779*width, y: height), control2: CGPoint(x: 0, y: 0.91294*height))
        path.addLine(to: CGPoint(x: 0, y: 0.44908*height))
        path.addCurve(to: CGPoint(x: 0.14645*width, y: 0.13153*height), control1: CGPoint(x: 0, y: 0.32997*height), control2: CGPoint(x: 0.05268*width, y: 0.21575*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0), control1: CGPoint(x: 0.24021*width, y: 0.04731*height), control2: CGPoint(x: 0.36739*width, y: 0))
        path.closeSubpath()
        return path
    }
}
