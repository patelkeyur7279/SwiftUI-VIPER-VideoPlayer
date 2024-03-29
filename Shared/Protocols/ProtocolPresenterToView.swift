//
//  ProtocolPresenterToView.swift
//  SwiftUI+VIPER+VideoPlayer (iOS)
//
//  Created by Keyur Patel on 01/12/22.
//

import Foundation

protocol ProtocolPresenterToView {
    func showShapes(shapes: [ShapeType])
    func changeShape(shape: ShapeType)
}
