//
//  CoinDetail.swift
//  Crypto App
//
//  Created by MacBook Pro on 05/06/22.
//

import SwiftUI

struct LoadDetail: View {
    @Binding var coin: CoinModel?
    var body: some View {
        ZStack{
            if let coin = coin {
                CoinDetail(coin: coin)
            }
        }
    }
}

struct CoinDetail: View {
    let coin: CoinModel
    
    @State private var showCryptoDetail: Bool = false
    @State private var selectCoin: CoinModel? = nil
    
    init(coin: CoinModel) {
        self.coin = coin
    }
    
    var body: some View {
        
        ScrollView{
            if let coin = coin{
                VStack(alignment: .leading, spacing: 20){
                    Group{
                        HStack{
                            CoinImageView(coin: coin)
                                .frame(width: 30, height: 30)
                            Text(coin.symbol.uppercased())
                            Spacer()
                        }
                        HStack{
                            Text(coin.currentPrice.asCurrencyWith2Decimals())
                                .font(.title3)
                                .bold()
                            Spacer()
                            Group{
                                Text(coin.priceChangePercentage24H.asPercentString())
                                Image(systemName: "triangle.fill")
                                    .font(.caption2)
                                    .rotationEffect(
                                        Angle(degrees:(coin.priceChangePercentage24H) >= 0 ? 0 : 180))
                                    .foregroundColor((coin.priceChangePercentage24H) >= 0 ? Color.blue : Color.red)
                            }
                            
                        }
                        GraphView(coin: coin)
                    }
                    Group{
                        Text("Statistic")
                            .font(.title)
                            .bold()
                        HStack{
                            Text("Current Price")
                            Spacer()
                            Text(coin.currentPrice.asCurrencyWith2Decimals())
                        }
                        Divider()
                        HStack{
                            Text("Market Cap")
                            Spacer()
                            Text(coin.marketCap?.asCurrencyWith2Decimals() ?? "")
                        }
                        Divider()
                        HStack{
                            Text("Volume 24h")
                            Spacer()
                            Text(coin.totalVolume?.formattedWithAbbreviations() ?? "")
                        }
                        Divider()
                        HStack{
                            Text("Circulating Supply")
                            Spacer()
                            Text(coin.circulatingSupply?.formattedWithAbbreviations() ?? "")
                        }
                        Divider()
                        HStack{
                            Text("Total Supply")
                            Spacer()
                            Text(coin.totalSupply?.formattedWithAbbreviations() ?? "")
                        }
                    }
                    HStack{
                        Spacer()
                        Button(action: {
                            segue(coin: coin)
                        }, label: {
                            Text("Add to wishlist")
                                .foregroundColor(.white)
                                .frame(width: 200, height: 40)
                                .background(Color.blue)
                                .cornerRadius(15)
                                .padding()
                        })
                        Spacer()
                    }
                    .background(
                        NavigationLink(
                            destination: Wishlist(coin: $selectCoin),
                            isActive: $showCryptoDetail,
                            label: {EmptyView()})
                        )

                    
                    
                }
                .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
            }
        }
    
    
    
    
}
}

struct CoinDetail_Previews: PreviewProvider {
static var previews: some View {
    CoinDetail(coin: dev.coin)
    
}
}

extension CoinDetail{
private func segue(coin: CoinModel){
    selectCoin = coin
    showCryptoDetail.toggle()
}
}
