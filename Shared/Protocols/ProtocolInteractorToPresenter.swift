//
//  ProtocolInteractorToPresenter.swift
//  SwiftUI+VIPER+VideoPlayer (iOS)
//
//  Created by Keyur Patel on 01/12/22.
//

import Foundation

protocol ProtocolInteractorToPresenter {
    func showShapes(shapes: [ShapeType])
    func changeShape(shape: ShapeType)
}
