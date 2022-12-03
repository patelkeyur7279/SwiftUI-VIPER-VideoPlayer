//
//  ViewModel.swift
//  SwiftUI+VIPER+VideoPlayer (iOS)
//
//  Created by Keyur Patel on 02/12/22.
//

import Foundation
import SwiftUI
import AVKit
import Combine

class ViewModel: ObservableObject {
    
    private var presenter: Presenter?
    @Published var shapes = [ShapeType]()
    @Published var currentShape: ShapeType = .shape1
    
    let player: AVPlayer
    @Published var isPlaying = false
    private var subscriptions: Set<AnyCancellable> = []
    
    init(presenter: Presenter) {
        self.presenter = presenter
        
        player = AVPlayer(url:  Bundle.main.url(forResource: "carVideo", withExtension: "mp4")!)
        player.play()
        player.isMuted = true
        
        player.publisher(for: \.timeControlStatus)
            .sink { [weak self] status in
                switch status {
                case .playing:
                    self?.isPlaying = true
                case .paused:
                    self?.isPlaying = false
                case .waitingToPlayAtSpecifiedRate:
                    break
                @unknown default:
                    break
                }
            }
            .store(in: &subscriptions)
        
    }
    
    func setCurrentItem(_ item: AVPlayerItem) {
        player.replaceCurrentItem(with: item)
    }
    
    func changePlayerShape(shape: ShapeType) {
        presenter?.changePlayerShape(shape: shape)
    }
    
}

extension ViewModel: ProtocolPresenterToView {
    
    func showShapes(shapes: [ShapeType]) {
        self.shapes = shapes
    }
    
    func changeShape(shape: ShapeType) {
        self.currentShape = shape
    }
    
}
