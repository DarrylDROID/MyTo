//
//  Profile.swift
//  Crypto App
//
//  Created by MacBook Pro on 05/06/22.
//

import SwiftUI

struct Profile: View {
    @State private var defaultProfile = ProfileModel.default
       var body: some View {
           NavigationView{
           VStack{
               VStack(){
               Text("Profile")
                   .fontWeight(.bold)
                   .font(.system(size: 21))
                   .offset(y: -250)
                   Image(systemName: "person.circle.fill").resizable().aspectRatio(contentMode: .fill)
                       .frame(width:150, height: 90)
                       .offset(y: -200)
                       .foregroundColor(.orange)
                   Text(defaultProfile.username)
                       .font(.system(size: 25))
                       .fontWeight(.semibold)
                       .offset(y: -170)
               Text("Email")
                       .font(.system(size: 24))
                       .fontWeight(.semibold)
                       .offset(y: -150)
               Text("Birthday")
                       .font(.system(size: 15))
                       .foregroundColor(.gray)
                       .offset(x: -130, y: -100)
                   Text(defaultProfile.birthday)
                       .font(.system(size: 20))
                       .fontWeight(.bold)
                       .offset(x: -117, y: -100)
                       .padding(.bottom, 12)
               Text("Address")
                       .font(.system(size: 15))
                       .foregroundColor(.gray)
                       .offset(x: -133, y: -100)
                   Text(defaultProfile.address)
                       .font(.system(size: 20))
                       .fontWeight(.bold)
                       .offset(x: -117, y: -100)
                       .padding(.bottom, 12)
               Text("Phone")
                       .font(.system(size: 15))
                       .foregroundColor(.gray)
                       .offset(x: -139, y: -100)
                   Text(defaultProfile.number)
                       .font(.system(size: 20))
                       .fontWeight(.bold)
                       .offset(x: -80, y: -100)

           }
               NavigationLink{
                   Edit_Profile(profile: $defaultProfile)
               } label: {
                   HStack{
                       Text("Edit")
                   }
                   .frame(width: 300, height: 50)
                   .background(Color.blue)
                   .cornerRadius(20)
                   .foregroundColor(.white)
                   .padding()
               }
           }
   }
   }
   }

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
