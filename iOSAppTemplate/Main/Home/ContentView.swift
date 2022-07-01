//
//  ContentView.swift
//  iOSAppTemplate
//
//  Created by MAC42 on 10/06/22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var appState: AppState
    @StateObject var homeViewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    ForEach(homeViewModel.pokemons, id: \.name) { pokemon in
                        CardView(pokemon: pokemon)
                    }
                }
                HStack {

                    HomeButtonView(imageName: "undo")
                    HomeButtonView(imageName: "dislike")
                    HomeButtonView(imageName: "super-like")
                    HomeButtonView(imageName: "like")
                    HomeButtonView(imageName: "flash")

                }
                .padding()
            }
            .navigationBarHidden(true)
        }
        .task {
            homeViewModel.getPokemonByUserId()
        }
    }
}

struct ContentView_Previews:
    
    PreviewProvider {
    
    static var previews: some View {
        ContentView()
        
    }
    
}

