//
//  Shape12.swift
//  SwiftUI+VIPER+VideoPlayer (iOS)
//
//  Created by Keyur Patel on 02/12/22.
//

import SwiftUI

struct Shape12: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.87768*width, y: 0.96022*height))
        path.addCurve(to: CGPoint(x: 0.8063*width, y: height), control1: CGPoint(x: 0.85974*width, y: 0.98548*height), control2: CGPoint(x: 0.8337*width, y: height))
        path.addLine(to: CGPoint(x: 0.1929*width, y: height))
        path.addCurve(to: CGPoint(x: 0.12153*width, y: 0.96022*height), control1: CGPoint(x: 0.16551*width, y: height), control2: CGPoint(x: 0.13946*width, y: 0.98548*height))
        path.addLine(to: CGPoint(x: 0.02304*width, y: 0.82149*height))
        path.addCurve(to: CGPoint(x: 0, y: 0.74609*height), control1: CGPoint(x: 0.00818*width, y: 0.80055*height), control2: CGPoint(x: 0, y: 0.77378*height))
        path.addLine(to: CGPoint(x: 0, y: 0.25176*height))
        path.addCurve(to: CGPoint(x: 0.02304*width, y: 0.17636*height), control1: CGPoint(x: 0, y: 0.22406*height), control2: CGPoint(x: 0.00818*width, y: 0.19729*height))
        path.addLine(to: CGPoint(x: 0.12*width, y: 0.03978*height))
        path.addCurve(to: CGPoint(x: 0.19138*width, y: 0), control1: CGPoint(x: 0.13793*width, y: 0.01452*height), control2: CGPoint(x: 0.16398*width, y: 0))
        path.addLine(to: CGPoint(x: 0.84997*width, y: 0))
        path.addCurve(to: CGPoint(x: 0.85162*width, y: 0.00092*height), control1: CGPoint(x: 0.8506*width, y: 0), control2: CGPoint(x: 0.85121*width, y: 0.00034*height))
        path.addLine(to: CGPoint(x: 0.97695*width, y: 0.17747*height))
        path.addCurve(to: CGPoint(x: width, y: 0.25288*height), control1: CGPoint(x: 0.99182*width, y: 0.19841*height), control2: CGPoint(x: width, y: 0.22518*height))
        path.addLine(to: CGPoint(x: width, y: 0.78667*height))
        path.addCurve(to: CGPoint(x: 0.99933*width, y: 0.78885*height), control1: CGPoint(x: width, y: 0.78747*height), control2: CGPoint(x: 0.99976*width, y: 0.78825*height))
        path.addLine(to: CGPoint(x: 0.87768*width, y: 0.96022*height))
        path.closeSubpath()
        return path
    }
}
