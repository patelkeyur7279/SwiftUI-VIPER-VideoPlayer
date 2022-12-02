//
//  CustomVideoPlayer.swift
//  SwiftUI+VIPER+VideoPlayer (iOS)
//
//  Created by Keyur Patel on 02/12/22.
//

import SwiftUI
import AVKit

struct CustomVideoPlayer: UIViewControllerRepresentable {
    
    let player: AVPlayer

    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let view = AVPlayerViewController()
        view.player = player
        view.showsPlaybackControls = false
//        view.view.layer.contentsGravity = .resizeAspectFill
        view.videoGravity = AVLayerVideoGravity(rawValue: AVLayerVideoGravity.resizeAspectFill.rawValue)
        
        view.view.layer.masksToBounds = true
        
        return view
    }
    
    func updateUIViewController(_ uiView: AVPlayerViewController, context: Context) { }
}
