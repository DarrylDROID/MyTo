//
//  HomeView.swift
//  Crypto App
//
//  Created by MacBook Pro on 24/05/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("John Doe").font(.body).fontWeight(.heavy).padding(.top, 30)
                Text("Welcome Back 👋").font(.caption).fontWeight(.heavy).foregroundColor(.gray)
                ZStack {
                    RoundedRectangle(cornerRadius: 30)
                        .fill(.blue)
                        .frame(width: UIScreen.main.bounds.width-40, height: 250).shadow(radius: 15).padding(.top, -100)
                    RoundedRectangle(cornerRadius: 25).fill(.white).frame(width: 75, height: 75)  .frame(maxHeight: .infinity, alignment: .top).padding(.top, -20)
                    Image(systemName: "person.circle.fill").font(.system(size: 55)).foregroundColor(.orange)  .frame(maxHeight: .infinity, alignment: .top).padding(.top, -15)
                    Text("MYTO").font(.largeTitle).fontWeight(.heavy).foregroundColor(.white).padding(.bottom, 120)
                    Text("$ 22,982.912").font(.title).fontWeight(.heavy).foregroundColor(.white).padding(.top, 10)
                }
                HStack {
                    Text("My Favorite Crypto").font(.system(size: 22)).fontWeight(.medium).padding(.trailing, 100).padding(.top, -125)
                    Text("View all").font(.headline).foregroundColor(.blue).fontWeight(.semibold).padding(.top, -125)
                }
 
                    .padding()
                    .frame(maxHeight: .infinity, alignment: .top)
                    .padding(.top, 20)
                    .navigationBarHidden(true)
                    .ignoresSafeArea()
                
            }
            
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
