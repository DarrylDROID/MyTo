//
//  Crypto_App.swift
//  Crypto App
//
//  Created by MacBook Pro on 24/05/22.
//

import SwiftUI

@main
struct  MyTo: App {
    
    @StateObject private var vm = MarketViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
            .environmentObject(vm)
        }
    }
}
