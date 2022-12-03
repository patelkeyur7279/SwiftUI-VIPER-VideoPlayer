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
//                .onAppear(perform: {
//                    viewModel.player.currentItem!.videoComposition = AVMutableVideoComposition(asset: viewModel.player.currentItem!.asset,
//                                                                                        applyingCIFiltersWithHandler: { request in
//
////                        let videoComposition = AVMutableVideoComposition()
////
////                        guard let videoTrack = viewModel.player.currentItem!.asset.tracks(withMediaType: .video).first else { return }
////
////                        let size = CGSize(width: abs(videoTrack.naturalSize.height), height: abs(videoTrack.naturalSize.width))
////                        videoComposition.renderSize = size
////
////                        let videoInstruction = AVMutableVideoCompositionInstruction()
////                        videoInstruction.timeRange = CMTimeRange(start: .zero, duration: videoTrack.asset!.duration)
////
////                        // Setting up the transform to fix scale and rotation
////                        let transformInstruction = AVMutableVideoCompositionLayerInstruction(assetTrack: videoTrack)
////                        let translate = CGAffineTransform(translationX: size.width, y: size.height)
////                        //let rotate = CGAffineTransform(rotationAngle: CGFloat.pi)
////
////                        transformInstruction.setTransform(translate, at: .zero)
////                        videoInstruction.layerInstructions.append(transformInstruction)
////                        videoComposition.instructions.append(videoInstruction)
////                        viewModel.player.currentItem!.videoComposition = videoComposition
//
//
////                        if let filter = self.filters[currentFilter]{
////                            let source = request.sourceImage.clampedToExtent()
////                            filter.setValue(source, forKey: kCIInputImageKey)
////                            if filter.inputKeys.contains(kCIInputScaleKey){
////                                filter.setValue(30, forKey: kCIInputScaleKey)
////                            }
////                            let output = filter.outputImage!.cropped(to: request.sourceImage.extent)
////                            request.finish(with: output, context: nil)
////                        }
////                        else{
////                            request.finish(with: request.sourceImage, context: nil)
////                        }
//
//
//                    })
//                })
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


