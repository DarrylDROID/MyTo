//
//  MarketView.swift
//  Crypto App
//
//  Created by MacBook Pro on 24/05/22.
//

import SwiftUI

struct MarketView: View {
    
    @EnvironmentObject private var vm: MarketViewModel
    @State private var showMarket: Bool = false
    
    var body: some View {
            
            VStack {
                Text("Cryptocurrency List")
                    .font(.title2).fontWeight(.bold)
                
                MarketStatsView(showMarket: $showMarket)
                
                SearchBarView(searchText: $vm.searchText)
                
                HStack {
                    Text("Coin")
                    Spacer()
                    Text("Price")
                        .frame(width: UIScreen.main.bounds.width / 3.5, alignment: .trailing)
                }
                .font(.caption)
                .foregroundColor(Color.gray)
                .padding(.horizontal)
                
                List {
                    ForEach(vm.allCoins) { coin in
                        CoinRowView(coin: coin, showHoldingsColumn: false).listRowInsets(.init(top: 10, leading: 0, bottom: 10, trailing: 10))
                    }
                }
                
                .listStyle(PlainListStyle())
          
                }
                Spacer(minLength: 0)
            }
    }

struct MarketView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MarketView()
                .navigationBarHidden(true)
        }
        .environmentObject(dev.marketVM)
    }
}

