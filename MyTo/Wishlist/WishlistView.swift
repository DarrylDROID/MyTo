//
//  WishlistView.swift
//  Crypto App
//
//  Created by MacBook Pro on 24/05/22.
//

import SwiftUI

struct WishlistView: View {
    
    @EnvironmentObject private var vm: MarketViewModel
    
    var body: some View {
        VStack {
            allCoinList
    
        }
    }
}

struct WishlistView_Previews: PreviewProvider {
    static var previews: some View {
        WishlistView()
            .environmentObject(dev.marketVM)
    }
}

extension WishlistView{
    private var allCoinList: some View{
        VStack{
            Text("My Wishlist")
                .font(.title)
                .bold()
            List{
                ForEach(vm.wishListCoins){coin in
                    CoinRowView(coin: coin, showHoldingsColumn: true)
                        .listRowInsets(.init(top: 10, leading: 0, bottom: 10, trailing: 10))
                }
            }
            .listStyle(PlainListStyle())
        }
        .padding()
    }
}
