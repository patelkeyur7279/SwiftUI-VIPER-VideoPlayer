//
//  Shape10.swift
//  SwiftUI+VIPER+VideoPlayer (iOS)
//
//  Created by Keyur Patel on 02/12/22.
//

import SwiftUI

struct Shape10: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.5*width, y: 0))
        path.addLine(to: CGPoint(x: 0.85355*width, y: 0.14645*height))
        path.addLine(to: CGPoint(x: width, y: 0.5*height))
        path.addLine(to: CGPoint(x: 0.85355*width, y: 0.85355*height))
        path.addLine(to: CGPoint(x: 0.5*width, y: height))
        path.addLine(to: CGPoint(x: 0.14645*width, y: 0.85355*height))
        path.addLine(to: CGPoint(x: 0, y: 0.5*height))
        path.addLine(to: CGPoint(x: 0.14645*width, y: 0.14645*height))
        path.addLine(to: CGPoint(x: 0.5*width, y: 0))
        path.closeSubpath()
        return path
    }
}
