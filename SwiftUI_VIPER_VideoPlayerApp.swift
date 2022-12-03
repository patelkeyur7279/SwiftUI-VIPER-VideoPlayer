//
//  SwiftUI_VIPER_VideoPlayerApp.swift
//  Shared
//
//  Created by Keyur Patel on 01/12/22.
//

import SwiftUI

@main
struct SwiftUI_VIPER_VideoPlayerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                VStack {
                    Router.createModule()
                }
            }
        }
    }
}
