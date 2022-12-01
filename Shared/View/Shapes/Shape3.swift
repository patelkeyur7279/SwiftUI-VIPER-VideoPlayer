//
//  Shape3.swift
//  SwiftUI+VIPER+VideoPlayer (iOS)
//
//  Created by Keyur Patel on 01/12/22.
//

import SwiftUI

struct Shape3: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.5*width, y: 0))
        path.addLine(to: CGPoint(x: 0.58434*width, y: 0.13928*height))
        path.addLine(to: CGPoint(x: 0.72223*width, y: 0.04952*height))
        path.addLine(to: CGPoint(x: 0.73632*width, y: 0.21072*height))
        path.addLine(to: CGPoint(x: 0.90045*width, y: 0.18825*height))
        path.addLine(to: CGPoint(x: 0.84149*width, y: 0.33946*height))
        path.addLine(to: CGPoint(x: 0.99935*width, y: 0.38874*height))
        path.addLine(to: CGPoint(x: 0.87902*width, y: 0.5*height))
        path.addLine(to: CGPoint(x: 0.99935*width, y: 0.61126*height))
        path.addLine(to: CGPoint(x: 0.84149*width, y: 0.66054*height))
        path.addLine(to: CGPoint(x: 0.90045*width, y: 0.81175*height))
        path.addLine(to: CGPoint(x: 0.73632*width, y: 0.78928*height))
        path.addLine(to: CGPoint(x: 0.72223*width, y: 0.95048*height))
        path.addLine(to: CGPoint(x: 0.58434*width, y: 0.86072*height))
        path.addLine(to: CGPoint(x: 0.5*width, y: height))
        path.addLine(to: CGPoint(x: 0.41566*width, y: 0.86072*height))
        path.addLine(to: CGPoint(x: 0.27777*width, y: 0.95048*height))
        path.addLine(to: CGPoint(x: 0.26368*width, y: 0.78928*height))
        path.addLine(to: CGPoint(x: 0.09955*width, y: 0.81175*height))
        path.addLine(to: CGPoint(x: 0.15851*width, y: 0.66054*height))
        path.addLine(to: CGPoint(x: 0.00065*width, y: 0.61126*height))
        path.addLine(to: CGPoint(x: 0.12098*width, y: 0.5*height))
        path.addLine(to: CGPoint(x: 0.00065*width, y: 0.38874*height))
        path.addLine(to: CGPoint(x: 0.15851*width, y: 0.33946*height))
        path.addLine(to: CGPoint(x: 0.09955*width, y: 0.18825*height))
        path.addLine(to: CGPoint(x: 0.26368*width, y: 0.21072*height))
        path.addLine(to: CGPoint(x: 0.27777*width, y: 0.04952*height))
        path.addLine(to: CGPoint(x: 0.41566*width, y: 0.13928*height))
        path.addLine(to: CGPoint(x: 0.5*width, y: 0))
        path.closeSubpath()
        return path
    }
}
