//
//  ContentView.swift
//  Shared
//
//  Created by Keyur Patel on 01/12/22.
//

import SwiftUI
import AVKit

struct ContentView: View {
    
    @StateObject var viewModel: ViewModel
    @State private var offset = CGSize.zero
    @State private var hideControls: Bool = false
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            CustomVideoPlayer(player: viewModel.player)
                .frame(width: 300, height: 300, alignment: .center)
                .clipShape(viewModel.currentShape)
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
            
            Spacer()
            
            ScrollView (.horizontal, showsIndicators: false) {
                 HStack {
                     ForEach(viewModel.shapes, id: \.self) { shape in
                         
                         Button {
                             withAnimation {
                                 //currentShape = shape
                                 viewModel.changeShape(shape: shape)
                             }
                         } label: {
                             HStack {
                                 shape
                                     .fill(viewModel.currentShape == shape ? Color.blue : Color.gray)
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
        ContentView(viewModel: ViewModel(presenter: Presenter()))
    }
}


