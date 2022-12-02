//
//  ShapeType.swift
//  SwiftUI+VIPER+VideoPlayer (iOS)
//
//  Created by Keyur Patel on 02/12/22.
//

import SwiftUI

enum ShapeType: String, CaseIterable, Shape {
    
    case shape1 = "Shape1"
    case shape2 = "Shape2"
    case shape3 = "Shape3"
    case shape4 = "Shape4"
    case shape5 = "Shape5"
    case shape6 = "Shape6"
    case shape7 = "Shape7"
    case shape8 = "Shape8"
    case shape9 = "Shape9"
    case shape10 = "Shape10"
    case shape11 = "Shape11"
    case shape12 = "Shape12"
    case shape13 = "Shape13"
    case shape14 = "Shape14"
    case shape15 = "Shape15"
    case shape16 = "Shape16"
    
    func path(in rect: CGRect) -> Path {
        switch self {
            case .shape1: return Shape1().path(in: rect)
            case .shape2: return Shape2().path(in: rect)
            case .shape3: return Shape3().path(in: rect)
            case .shape4: return Shape4().path(in: rect)
            case .shape5: return Shape5().path(in: rect)
            case .shape6: return Shape6().path(in: rect)
            case .shape7: return Shape7().path(in: rect)
            case .shape8: return Shape8().path(in: rect)
            case .shape9: return Shape9().path(in: rect)
            case .shape10: return Shape10().path(in: rect)
            case .shape11: return Shape11().path(in: rect)
            case .shape12: return Shape12().path(in: rect)
            case .shape13: return Shape13().path(in: rect)
            case .shape14: return Shape14().path(in: rect)
            case .shape15: return Shape15().path(in: rect)
            case .shape16: return Shape16().path(in: rect)
        }
    }
    
}
