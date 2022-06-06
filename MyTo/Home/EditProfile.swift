//
//  Edit Profile.swift
//  Crypto App
//
//  Created by MacBook Pro on 05/06/22.
//

import SwiftUI

struct EditProfile: View {
    @Binding var profile: Profile
       
       var body: some View {
           List {
               HStack {
                   Text("Username:").bold()
                   Divider()
                   TextField("Username", text: $profile.username)
               }
               HStack {
                   Text("Birthday:").bold()
                   Divider()
                   TextField("Birthday", text: $profile.birthday)
               }
               HStack {
                   Text("Address:").bold()
                   Divider()
                   TextField("Address", text: $profile.address)
               }
               HStack {
                   Text("Number:").bold()
                   Divider()
                   TextField("Number", text: $profile.number)
               }
           }
       }
   struct EditProfile_Previews: PreviewProvider {
       static var previews: some View {
           EditProfile(profile: .constant(Profile.default))
       }
   }
   }
