//
//  HomeView.swift
//  Crypto App
//
//  Created by MacBook Pro on 24/05/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(){
            Text("John Doe").font(.body).fontWeight(.heavy).padding(.top, 30).padding(.trailing, 300)
            Text("Welcome Back 👋").font(.caption).fontWeight(.heavy).foregroundColor(.gray).padding(.trailing, 270)
                ZStack{
                    Image("Card").resizable().aspectRatio(contentMode: .fit).padding(.bottom, 100).frame(width: 400)
                    Image(systemName: "person.circle.fill").font(.system(size: 55)).foregroundColor(.orange)  .frame(maxHeight: .infinity, alignment: .top).padding(.top, -10).padding(.trailing, 5)
                    Text("MYTO").font(.largeTitle).fontWeight(.heavy).foregroundColor(.white).padding(.bottom, 130)
                    Text("$ 22,982.912").font(.title).fontWeight(.heavy).foregroundColor(.white).padding(.top, 10)
                }
                
                HStack {
                    Text("My Favorite Crypto").font(.system(size: 22)).fontWeight(.medium).padding(.trailing, 100).padding(.top, -100)
                    Text("View all").font(.headline).foregroundColor(.blue).fontWeight(.semibold).padding(.top, -100)
                }

            ScrollView(.horizontal) {

            HStack {
                VStack {
                    HStack {
                        VStack {

                        }
                    }
                }
                .background()
                    .frame(width: 100, height: 100)
                    .shadow(radius: 35)
                
            }
        }
        
                    .padding()
                    .frame(maxHeight: .infinity, alignment: .top)
                    .padding(.top, 20)
                    .navigationBarHidden(true)
                    .ignoresSafeArea()
                
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
