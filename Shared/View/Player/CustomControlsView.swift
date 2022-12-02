//
//  CustomControlsView.swift
//  SwiftUI+VIPER+VideoPlayer (iOS)
//
//  Created by Keyur Patel on 02/12/22.
//

import SwiftUI

struct CustomControlsView: View {
    
    @ObservedObject var viewModel: ViewModel
    @Binding var isHideControl: Bool
    
    var body: some View {
        VStack {
            if viewModel.isPlaying == false {
                Button(action: {
                    viewModel.player.play()
                }, label: {
                    Image(systemName: "play.circle")
                        .imageScale(.large)
                })
            } else {
                Button(action: {
                    viewModel.player.pause()
                }, label: {
                    Image(systemName: "pause.circle")
                        .imageScale(.large)
                })
            }
        }
        .isHidden(isHideControl)
        .padding()
        //.background(.thinMaterial)
    }
}
