//
//  Extenstions.swift
//  SwiftUI+VIPER+VideoPlayer (iOS)
//
//  Created by Keyur Patel on 02/12/22.
//

import Foundation
import AVKit

extension AVPlayer {
    var isPlaying: Bool {
        return rate != 0 && error == nil
    }
}
