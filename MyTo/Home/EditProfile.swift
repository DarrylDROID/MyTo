//
//  Edit Profile.swift
//  Crypto App
//
//  Created by MacBook Pro on 05/06/22.
//

import SwiftUI

struct EditProfile: View {
    @Binding var profile: ProfileModel
       
       var body: some View {
           List {
               HStack {
                   Text("Username:").bold()
                   Divider()
                   TextField("Username", text: $profile.username)
               }
               HStack {
                   Text("Email:").bold()
                   Divider()
                   TextField("Email", text: $profile.email)
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
                   Text("Phone:").bold()
                   Divider()
                   TextField("Phone", text: $profile.phone)
               }
           }
       }
}

   struct EditProfile_Previews: PreviewProvider {
       static var previews: some View {
           EditProfile(profile: .constant(.default))
       }
   }
