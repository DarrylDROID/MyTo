//
//  AddWishlist.swift
//  Crypto App
//
//  Created by MacBook Pro on 05/06/22.
//

import SwiftUI

struct AddWishlist: View {
    var body: some View {
        VStack {
            Text("Add to wishlist").font(.body).fontWeight(.heavy).padding(.trailing, 250)
        
            Image("btc")
                .resizable()
                .frame(width:200, height:200)
                .padding()
                .cornerRadius(20)
                .shadow(radius: 10)
                .padding(.top, 20)
            Text("Bitcoin").font(.title).fontWeight(.light)
            ZStack {
                RoundedRectangle(cornerRadius: 30).fill(.white).frame(width: 180, height: 35).shadow(radius: 15).padding()
                Text("Amount").fontWeight(.light)
                
            }
            ZStack{
                RoundedRectangle(cornerRadius: 30).fill(.white).frame(width: 180, height: 35).shadow(radius: 15)
                Text("Target Price").fontWeight(.light)
            }
        
            Spacer()
            Button(action: {print("Your Wishlist Has Been Saved!")}){
                HStack{
                    Text("Save").fontWeight(.semibold).frame(maxWidth: .infinity, alignment: .center)
                    Spacer()
                }
            }
            .padding()
            .background(Color.blue)
            .cornerRadius(10)
            .foregroundColor(Color.white)
            .padding(.bottom, 20)

        }
        
        .padding()
        .frame(maxHeight: .infinity, alignment: .top)
        .padding(.top, 50)
        .navigationBarHidden(true)
        .ignoresSafeArea()
    }
}

struct AddWishlist_Previews: PreviewProvider {
    static var previews: some View {
        AddWishlist()
    }
}
