//
//  AddWishlist.swift
//  Crypto App
//
//  Created by MacBook Pro on 05/06/22.
//

import SwiftUI

struct Wishlist: View {
    @Binding var coin: CoinModel?
    
    var body: some View {
        ZStack{
            if let coin = coin{
                AddWishlist(coin: coin)
            }
        }
        
    }
}

struct AddWishlist: View {
    
    let coin: CoinModel
    
    init(coin: CoinModel){
        self.coin = coin
    }
    
    @EnvironmentObject private var vm: MarketViewModel
    @State private var quantityText: String = ""
    
    var body: some View {
        
            VStack{
                Text("Add to wishlist")
                    .bold()
                    .padding(.bottom, 40)
                Group{
                    CoinImageView(coin: coin)
                        .frame(width: 125, height: 125)
                    Text(coin.name)
                        .padding(.vertical, 10)
                    HStack{
                        Text("Current Value")
                        Spacer()
                        Text(coin.currentPrice.asCurrencyWith2Decimals())
                    }
                    .padding(.top, 40)
                    Divider()
                    HStack{
                        Text("Amount: ")
                        Spacer()
                        TextField("Ex: 1.4", text: $quantityText)
                            .multilineTextAlignment(.trailing)
                            .keyboardType(.decimalPad)
                    }
                    Divider()
                    HStack{
                        Text("Current Value:")
                        Spacer()
                        Text(getCurrentValue().asCurrencyWith2Decimals())
                    }
                    .padding(.bottom, 40)
                    Button(action: {
                        saveButtonPressed()
                    }, label: {
                        Text("Save")
                            .foregroundColor(.white)
                            .frame(width: 200, height: 40)
                            .background(Color.blue)
                            .cornerRadius(15)
                            .padding()
                    })
                }
                Spacer()
            }
            .padding()
        
    }
}

struct AddWishlist_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        AddWishlist(coin: dev.coin)
            .environmentObject(dev.marketVM)
        }
    }
}

extension AddWishlist{
    public func getCurrentValue() -> Double{
        if let quantity = Double(quantityText){
            return quantity * (coin.currentPrice )
        }
        return 0
    }
    public func saveButtonPressed(){
        guard let amount = Double(quantityText) else{return}
        
        vm.updateWishlist(coin: coin, amount: amount)
    }
}
