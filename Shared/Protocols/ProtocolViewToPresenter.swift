//
//  ProtocolViewToPresenter.swift
//  SwiftUI+VIPER+VideoPlayer (iOS)
//
//  Created by Keyur Patel on 01/12/22.
//

import Foundation

protocol ProtocolViewToPresenter {
    
    var view: ProtocolPresenterToView? {get set}
    var interactor: ProtocolPresenterToInteractor? {get set}
    var router: ProtocolPresenterToRouter? {get set}
    
}
