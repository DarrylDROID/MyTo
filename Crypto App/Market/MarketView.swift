//
//  MarketView.swift
//  Crypto App
//
//  Created by MacBook Pro on 24/05/22.
//

import SwiftUI

struct MarketView: View {
    var body: some View {
        HStack{
        Text("Crptocurrency List")
    }
        .padding()
        .frame(maxHeight: .infinity, alignment: .top)
        .padding(.top, 20)
        .navigationBarHidden(true)
        .ignoresSafeArea()
    }
    
}


struct MarketView_Previews: PreviewProvider {
    static var previews: some View {
        MarketView()
    }
}
