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
    @State private var avPlayer = AVPlayer(url:  Bundle.main.url(forResource: "carVideo", withExtension: "mp4")!)
    //@State private var currentShape = AnyView(Shape1())
    @State private var currentShape: EnumShapes = .shape1
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            ZStack {
                
                VideoPlayer(player: avPlayer)
                    .clipShape(viewModel.getShape(shape: currentShape))
                
    //            Button {
    //                if avPlayer.isPlaying {
    //                    avPlayer.pause()
    //                } else {
    //                    avPlayer.play()
    //                }
    //            } label: {
    //                Image(systemName: avPlayer.isPlaying ? "pause.circle" : "play.circle")
    //                    .resizable()
    //                    .frame(width: 100,
    //                           height: 100,
    //                           alignment: .center)
    //                    .scaledToFill()
    //            }
                
            }
            .frame(width: 300, height: 300, alignment: .center)
         
            Spacer()
            
            ScrollView (.horizontal, showsIndicators: false) {
                 HStack {
                     ForEach([EnumShapes](viewModel.shapes.keys), id: \.self) { key in
                         
                         Button {
                             withAnimation {
                                 currentShape = key
                             }
                         } label: {
                             HStack {
                                 viewModel.shapes[key]
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


