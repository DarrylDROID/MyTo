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
                            Text("Bitcoin")
                                .padding()
                            Text("BTC").foregroundColor(.gray)
                                .offset(x: -11, y: -12)
                                .font(.subheadline)

                        }
                        
                        Spacer()
                        
                        Image("btc").resizable().aspectRatio(contentMode: .fit).frame(width: 80, height: 100).padding(.trailing, 20).shadow(radius: 10).padding(.top, 10)
                    }
                    HStack {
                        Text("32,927.75").offset(x: -25, y: -10).font(.title)
                        Text("1.83%").foregroundColor(.red).offset(x: 10, y: -10)
                        Image(systemName: "arrowtriangle.down.fill").resizable().frame(width: 10, height: 5).foregroundColor(.red).offset(x: 10, y: -10)
                    }
                    .padding()
                }
                .background()
                .cornerRadius(20)
                .padding()
                    .frame(width: 300, height: 250)
                    .shadow(radius: 10)
            
                VStack {
                    HStack {
                        VStack {
                            Text("Ethereum")
                                .padding()
                            Text("ETH").foregroundColor(.gray).offset(x: -20, y: -12).font(.subheadline)
                        }
                        
                        Spacer()
                        
                        Image("eth").resizable().aspectRatio(contentMode: .fit).frame(width: 80, height: 100).padding(.trailing, 20).padding(.top, 10)
                        
                    }
                    
                    HStack {
                        Text("2,880.96").offset(x: -25, y: -10).font(.title)
                        Text("2.26%").foregroundColor(.red).offset(x: 10, y: -10)
                        Image(systemName: "arrowtriangle.down.fill").resizable().frame(width: 10, height: 5).foregroundColor(.red).offset(x: 10, y: -10)
                    }
                    .padding()
                }
                .background()
                .cornerRadius(20)
                .padding()
                    .frame(width: 300, height: 250)
                    .shadow(radius: 10)
                
                VStack {
                    HStack {
                        VStack {
                            Text("Binance")
                                .padding()
                            Text("BNB").foregroundColor(.gray).offset(x: -15, y: -12).font(.subheadline)
                        }
                        
                        Spacer()
                        
                        Image("bnb").resizable().aspectRatio(contentMode: .fit).frame(width: 80, height: 100).padding(.trailing, 20).padding(.top, 10)
                        
                    }
                    
                    HStack {
                        Text("393,25").offset(x: -40, y: -10).font(.title)
                        Text("2.14%").foregroundColor(.red).offset(x: 20, y: -10)
                        Image(systemName: "arrowtriangle.down.fill").resizable().frame(width: 10, height: 5).foregroundColor(.red).offset(x: 20, y: -10)
                    }
                    .padding()
                }
                .background()
                .cornerRadius(20)
                .padding()
                    .frame(width: 300, height: 250)
                    .shadow(radius: 10)
                
                VStack {
                    HStack {
                        VStack {
                            Text("Ripple")
                                .padding()
                            Text("XRP").foregroundColor(.gray).offset(x: -11, y: -12).font(.subheadline)
                        }
                        
                        Spacer()
                        
                        Image("xrp").resizable().aspectRatio(contentMode: .fit).frame(width: 80, height: 100).padding(.trailing, 20).padding(.top, 10)
                        
                    }
                    
                    HStack {
                        Text("0.6716").offset(x: -40, y: -10).font(.title)
                        Text("4.75%").foregroundColor(.red).offset(x: 20, y: -10)
                        Image(systemName: "arrowtriangle.down.fill").resizable().frame(width: 10, height: 5).foregroundColor(.red).offset(x: 20, y: -10)
                    }
                    .padding()
                }
                .background()
                .cornerRadius(20)
                .padding()
                    .frame(width: 300, height: 250)
                    .shadow(radius: 10)
                
                VStack {
                    HStack {
                        VStack {
                            Text("Doge")
                                .padding()
                            Text("DOGE").foregroundColor(.gray).offset(x: -2, y: -12).font(.subheadline)
                        }
                        
                        Spacer()
                        
                        Image("doge").resizable().aspectRatio(contentMode: .fit).frame(width: 80, height: 100).padding(.trailing, 20).padding(.top, 10)
                        
                    }
                    
                    HStack {
                        Text("0.1399").offset(x: -40, y: -10).font(.title)
                        Text("4.13%").foregroundColor(.blue).offset(x: 20, y: -10)
                        Image(systemName: "arrowtriangle.up.fill").resizable().frame(width: 10, height: 5).foregroundColor(.blue).offset(x: 20, y: -10)
                    }
                    .padding()
                }
                .background()
                .cornerRadius(20)
                .padding()
                    .frame(width: 300, height: 250)
                    .shadow(radius: 10)
                
                VStack {
                    HStack {
                        VStack {
                            Text("Elon Buys Twitter")
                                .padding()
                            Text("EBT").foregroundColor(.gray).offset(x: -20, y: -12).font(.subheadline)
                        }
                        
                        Spacer()
                        
                        Image("ebt").resizable().aspectRatio(contentMode: .fit).frame(width: 80, height: 100).padding(.trailing, 20).padding(.top, 10)
                        
                    }
                    
                    HStack {
                        Text("0.0000007111").offset(x: -40, y: -10).font(.title)
                        Text("3413.93%").foregroundColor(.blue).offset(x: 10, y: -10)
                        Image(systemName: "arrowtriangle.up.fill").resizable().frame(width: 10, height: 5).foregroundColor(.blue).offset(x: 10, y: -10)
                    }
                    .padding()
                }
                .background()
                .cornerRadius(20)
                .padding()
                    .frame(width: 300, height: 250)
                    .shadow(radius: 10)
                
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
