//
//  Shape7.swift
//  SwiftUI+VIPER+VideoPlayer (iOS)
//
//  Created by Keyur Patel on 01/12/22.
//

import SwiftUI

struct Shape7: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: width, y: 0.5*height))
        path.addLine(to: CGPoint(x: 0.83333*width, y: height))
        path.addLine(to: CGPoint(x: 0.16667*width, y: height))
        path.addLine(to: CGPoint(x: 0, y: 0.5*height))
        path.addLine(to: CGPoint(x: 0.16667*width, y: 0))
        path.addLine(to: CGPoint(x: 0.83333*width, y: 0))
        path.addLine(to: CGPoint(x: width, y: 0.5*height))
        path.closeSubpath()
        return path
    }
}
