//
//  Router.swift
//  SwiftUI+VIPER+VideoPlayer (iOS)
//
//  Created by Keyur Patel on 04/12/22.
//

import SwiftUI

class Router: ProtocolPresenterToRouter {
    
    static func createModule() -> AnyView {
        let presenter = Presenter()
        let interactor = Interactor()
        let router = Router()

        let viewModel = ViewModel(presenter: presenter)
        let view = ContentView(viewModel: viewModel)
        
        presenter.view = viewModel
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        interactor.getShapes()
        
        return AnyView(view)
    }
    
}
