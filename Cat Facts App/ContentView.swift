//
//  ContentView.swift
//  Cat Facts App
//
//  Created by YJ Soon on 28/8/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            CatFactView()
                .tabItem {
                    Label("Cat Fact", systemImage: "newspaper")
                }
            CatImageView()
                .tabItem {
                    Label("Cat Image", systemImage: "photo")
                }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
