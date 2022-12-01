//
//  Shape1.swift
//  SwiftUI+VIPER+VideoPlayer (iOS)
//
//  Created by Keyur Patel on 01/12/22.
//

import SwiftUI

struct Shape1: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.49866*width, y: 0.97761*height))
        path.addCurve(to: CGPoint(x: 0.01548*width, y: 0.49779*height), control1: CGPoint(x: 0.49663*width, y: 0.88516*height), control2: CGPoint(x: -0.00559*width, y: 0.77492*height))
        path.addCurve(to: CGPoint(x: 0.12956*width, y: 0.17223*height), control1: CGPoint(x: 0.02465*width, y: 0.37723*height), control2: CGPoint(x: 0.06111*width, y: 0.26798*height))
        path.addCurve(to: CGPoint(x: 0.15998*width, y: 0.00944*height), control1: CGPoint(x: 0.179*width, y: 0.06051*height), control2: CGPoint(x: 0.14576*width, y: -0.0032*height))
        path.addCurve(to: CGPoint(x: 0.48321*width, y: 0.00944*height), control1: CGPoint(x: 0.18512*width, y: 0.03179*height), control2: CGPoint(x: 0.41096*width, y: 0.04775*height))
        path.addCurve(to: CGPoint(x: 0.4998*width, y: 0.00279*height), control1: CGPoint(x: 0.48321*width, y: 0.00944*height), control2: CGPoint(x: 0.49908*width, y: 0.00078*height))
        path.addCurve(to: CGPoint(x: 0.51679*width, y: 0.00944*height), control1: CGPoint(x: 0.50056*width, y: 0.00078*height), control2: CGPoint(x: 0.51679*width, y: 0.00944*height))
        path.addCurve(to: CGPoint(x: 0.84002*width, y: 0.00944*height), control1: CGPoint(x: 0.58904*width, y: 0.04775*height), control2: CGPoint(x: 0.81488*width, y: 0.03179*height))
        path.addCurve(to: CGPoint(x: 0.87044*width, y: 0.17223*height), control1: CGPoint(x: 0.85424*width, y: -0.0032*height), control2: CGPoint(x: 0.82101*width, y: 0.06051*height))
        path.addCurve(to: CGPoint(x: 0.98452*width, y: 0.49779*height), control1: CGPoint(x: 0.93889*width, y: 0.26798*height), control2: CGPoint(x: 0.97535*width, y: 0.37723*height))
        path.addCurve(to: CGPoint(x: 0.49866*width, y: 0.97761*height), control1: CGPoint(x: 1.0056*width, y: 0.77492*height), control2: CGPoint(x: 0.50068*width, y: 0.88516*height))
        path.closeSubpath()
        return path
    }
}
