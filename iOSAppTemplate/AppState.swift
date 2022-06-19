//
//  AppState.swift
//  iOSAppTemplate
//
//  Created by MAC42 on 10/06/22.
//

import SwiftUI

class AppState: ObservableObject {
    
    static let shared = AppState()
    
    enum AppScreens: String {
        
        case launch
        case home
        case profile
        case options
        
    }
    
    @Published var currentScreen: AppScreens = .launch
    
}
