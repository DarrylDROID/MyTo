//
//  WishlistView.swift
//  Crypto App
//
//  Created by MacBook Pro on 24/05/22.
//

import SwiftUI

struct WishlistView: View {
    var body: some View {
        NavigationView{
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                Text("My Wishlist")
            }
            List {
                
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct WishlistView_Previews: PreviewProvider {
    static var previews: some View {
        WishlistView()
    }
}
