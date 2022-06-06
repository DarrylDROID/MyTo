//
//  MarketView.swift
//  Crypto App
//
//  Created by MacBook Pro on 24/05/22.
//

import SwiftUI

struct MarketView: View {
    
    @EnvironmentObject private var vm: MarketViewModel
    @State private var showCryptoDetail: Bool = false
    @State private var selectCoin: CoinModel? = nil
    
    var body: some View {
            VStack {
                allCoinList
            }
            .background(
            NavigationLink(
                destination: LoadDetail(coin: $selectCoin),
                isActive: $showCryptoDetail,
                label: {EmptyView()})
            )
    }
}

struct MarketView_Previews: PreviewProvider {
    static var previews: some View {
            MarketView()
        .environmentObject(dev.marketVM)
    }
}

    extension MarketView {
        private var allCoinList: some View {
            
            VStack {
            Text("Cryptocurrency List")
                    .font(.title2).fontWeight(.bold).padding(.bottom, 30)
        
            SearchBarView(searchText: $vm.searchText)
            
            HStack {
                Text("Coin")
                Spacer()
                Text("Price")
                Spacer()
                Text("Percentage")
                    .frame(width: UIScreen.main.bounds.width / 3.5, alignment: .trailing)
            }
            .font(.caption)
            .foregroundColor(Color.gray)
            .padding(.horizontal)
            
            List {
                ForEach(vm.allCoins) { coin in
                    CoinRowView(coin: coin, showHoldingsColumn: false).listRowInsets(.init(top: 10, leading: 0, bottom: 10, trailing: 10)).onTapGesture {
                        segue(coin: coin)
                    }
                }
            }
            
            .listStyle(PlainListStyle())
                Spacer()
      
            }
            .padding()
}
        
        private func segue(coin: CoinModel) {
            selectCoin = coin
            showCryptoDetail.toggle()
        }
    }
