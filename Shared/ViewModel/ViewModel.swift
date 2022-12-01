//
//  ViewModel.swift
//  SwiftUI+VIPER+VideoPlayer (iOS)
//
//  Created by Keyur Patel on 02/12/22.
//

import Foundation
import SwiftUI

class ViewModel: ObservableObject {
    
    @Published var shapes: [EnumShapes: AnyShape]
    
    init() {
        
        shapes = [
            .shape1: AnyShape(Shape1()),
            .shape2: AnyShape(Shape2()),
            .shape3: AnyShape(Shape3()),
            .shape4: AnyShape(Shape4()),
            .shape5: AnyShape(Shape5()),
            .shape6: AnyShape(Shape6()),
            .shape7: AnyShape(Shape7()),
            .shape8: AnyShape(Shape8()),
            .shape9: AnyShape(Shape9()),
            .shape10: AnyShape(Shape10()),
            .shape11: AnyShape(Shape11()),
            .shape12: AnyShape(Shape12()),
            .shape13: AnyShape(Shape13()),
            .shape14: AnyShape(Shape14()),
            .shape15: AnyShape(Shape15()),
            .shape16: AnyShape(Shape16())
        ]
        
    }
    
    func getShape(shape: EnumShapes) -> AnyShape {
        switch shape {
        case .shape1:
            return AnyShape(Shape1())
        case .shape2:
            return AnyShape(Shape1())
        case .shape3:
            return AnyShape(Shape1())
        case .shape4:
            return AnyShape(Shape1())
        case .shape5:
            return AnyShape(Shape1())
        case .shape6:
            return AnyShape(Shape1())
        case .shape7:
            return AnyShape(Shape1())
        case .shape8:
            return AnyShape(Shape1())
        case .shape9:
            return AnyShape(Shape1())
        case .shape10:
            return AnyShape(Shape1())
        case .shape11:
            return AnyShape(Shape1())
        case .shape12:
            return AnyShape(Shape1())
        case .shape13:
            return AnyShape(Shape1())
        case .shape14:
            return AnyShape(Shape1())
        case .shape15:
            return AnyShape(Shape1())
        case .shape16:
            return AnyShape(Shape1())
        }
    }
    
}
