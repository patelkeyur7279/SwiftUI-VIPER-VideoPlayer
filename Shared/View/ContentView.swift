//
//  ContentView.swift
//  Shared
//
//  Created by Keyur Patel on 01/12/22.
//

import SwiftUI
import AVKit

struct ContentView: View {
    
    @StateObject private var viewModel = ViewModel()
    @State private var currentShape: ShapeType = .shape1
    @State private var offset = CGSize.zero
    @State private var hideControls: Bool = false
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            CustomVideoPlayer(player: viewModel.player)
                .frame(width: 300, height: 300, alignment: .center)
                .clipShape(currentShape)
                .overlay(CustomControlsView(viewModel: viewModel, isHideControl: $hideControls)
                         , alignment: .center)
                .onTapGesture {
                    hideControls.toggle()
                }
                .gesture(
                    DragGesture()
                        .onChanged { gesture in
                            offset = gesture.translation
                        }
                        .onEnded { _ in
                            if abs(offset.width) > 100 {
                                // remove the card
                            } else {
                                offset = .zero
                            }
                        }
                )
            
//            ZStack {
//
//                VideoPlayer(player: viewModel.player)
//                    .clipShape(currentShape)
//                    .overlay(CustomControlsView(viewModel: viewModel)
//                             , alignment: .center)
//
//    //            Button {
//    //                if avPlayer.isPlaying {
//    //                    avPlayer.pause()
//    //                } else {
//    //                    avPlayer.play()
//    //                }
//    //            } label: {
//    //                Image(systemName: avPlayer.isPlaying ? "pause.circle" : "play.circle")
//    //                    .resizable()
//    //                    .frame(width: 100,
//    //                           height: 100,
//    //                           alignment: .center)
//    //                    .scaledToFill()
//    //            }
//
//            }
            
         
            Spacer()
            
            ScrollView (.horizontal, showsIndicators: false) {
                 HStack {
                     ForEach(viewModel.shapes, id: \.self) { shape in
                         
                         Button {
                             withAnimation {
                                 currentShape = shape
                             }
                         } label: {
                             HStack {
                                 shape
                                     .fill(currentShape == shape ? Color.blue : Color.gray)
                                     .frame(width: 100,
                                            height: 100,
                                            alignment: .center)
                                     .scaledToFit()
                             }
                         }
                         .buttonStyle(PlainButtonStyle())

                     }
                 }
            }
            .padding()
            .frame(height: 100)
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


