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
            HomeView(profile: .constant(.default))
                    .tabItem() {
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
        .navigationBarTitle("", displayMode: .inline)
        .navigationBarHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(MarketViewModel())
            
    }
}
