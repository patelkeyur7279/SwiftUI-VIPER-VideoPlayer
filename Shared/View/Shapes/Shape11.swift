//
//  Shape11.swift
//  SwiftUI+VIPER+VideoPlayer (iOS)
//
//  Created by Keyur Patel on 02/12/22.
//

import SwiftUI

struct Shape11: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.5*width, y: 0))
        path.addLine(to: CGPoint(x: 0.99862*width, y: 0.25*height))
        path.addLine(to: CGPoint(x: 0.99862*width, y: 0.75*height))
        path.addLine(to: CGPoint(x: 0.5*width, y: height))
        path.addLine(to: CGPoint(x: 0.00138*width, y: 0.75*height))
        path.addLine(to: CGPoint(x: 0.00138*width, y: 0.25*height))
        path.addLine(to: CGPoint(x: 0.5*width, y: 0))
        path.closeSubpath()
        return path
    }
}
