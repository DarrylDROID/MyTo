//
//  ContentView.swift
//  Crypto App
//
//  Created by MacBook Pro on 24/05/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
               Text("Home")
                   .tabItem {
                       Image(systemName: "house.fill")
                       Text("Home")
               }
               Text("Market")
                   .tabItem {
                       Image(systemName: "chart.bar.fill")
                       Text("Market")
               }
               Text("Wishlist")
                   .tabItem {
                       Image(systemName: "heart.fill")
                       Text("Wishlist")
               }
           }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
