//
//  ContentView.swift
//  iOSAppTemplate
//
//  Created by MAC42 on 10/06/22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        VStack {
            CardView()
            HStack {
                
                HomeButtonView(imageName: "undo")
                HomeButtonView(imageName: "dislike")
                HomeButtonView(imageName: "super-like")
                HomeButtonView(imageName: "like")
                HomeButtonView(imageName: "flash")
                
            }
            .padding()
            
        }
    }
}

struct ContentView_Previews:
    
    PreviewProvider {
    
    static var previews: some View {
        ContentView()
        
    }
    
}
