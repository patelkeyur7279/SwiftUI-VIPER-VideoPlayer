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
    
    @Published var shapes: [ShapeType]
    
    let player: AVPlayer
    @Published var isPlaying = false
    private var subscriptions: Set<AnyCancellable> = []
    
    init() {
        
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
    
}
