//
//  Presenter.swift
//  SwiftUI+VIPER+VideoPlayer (iOS)
//
//  Created by Keyur Patel on 04/12/22.
//

import Foundation

class Presenter: ProtocolViewToPresenter {
    
    var view: ProtocolPresenterToView?
    
    var interactor: ProtocolPresenterToInteractor?
    
    var router: ProtocolPresenterToRouter?
    
    func getShapes() {
        interactor?.getShapes()
    }
    
    func changePlayerShape(shape: ShapeType) {
        interactor?.changeShape(shape: shape)
    }
}

extension Presenter: ProtocolInteractorToPresenter {
    
    func showShapes(shapes: [ShapeType]) {
        view?.showShapes(shapes: shapes)
    }
    
    func changeShape(shape: ShapeType) {
        view?.changeShape(shape: shape)
    }
    
}
