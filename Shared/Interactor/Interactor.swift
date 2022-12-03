//
//  Interactor.swift
//  SwiftUI+VIPER+VideoPlayer (iOS)
//
//  Created by Keyur Patel on 04/12/22.
//

import Foundation

class Interactor: ProtocolPresenterToInteractor {
    
    var presenter: ProtocolInteractorToPresenter?
    
    private var shapes = [ShapeType]()
    
    func getShapes() {
        shapes = [
            .shape1,
            .shape2,
            .shape3,
            .shape4,
            .shape5,
            .shape6,
            .shape7,
            .shape8,
            .shape9,
            .shape10,
            .shape11,
            .shape12,
            .shape13,
            .shape14,
            .shape15,
            .shape16
        ]
        presenter?.showShapes(shapes: shapes)
    }
    
    func changeShape(shape: ShapeType) {
        presenter?.changeShape(shape: shape)
    }
}
