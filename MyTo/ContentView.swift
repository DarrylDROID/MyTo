//
//  ContentView.swift
//  Crypto App
//
//  Created by MacBook Pro on 24/05/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var vm: MarketViewModel
    var body: some View {
        TabView {
                HomeView()
                       .tabItem {
                           Image(systemName: "house.fill")
                           Text("Home")
                       }
                
                MarketView()
                       .tabItem {
                           Image(systemName: "chart.bar.fill")
                           Text("Market")
                   }
                
                WishlistView()
                       .tabItem {
                           Image(systemName: "heart.fill")
                           Text("Wishlist")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
