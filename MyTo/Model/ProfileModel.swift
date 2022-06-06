//
//  ProfileModel.swift
//  MyTo
//
//  Created by MacBook Pro on 06/06/22.
//

import Foundation

struct ProfileModel {
    var username: String
    var email: String
    var birthday: String
    var address: String
    var phone: String
    
    static let `default` = ProfileModel(username: "Darryl", email: "darryl16888@gmail.com", birthday: "April 29", address: "Citraland", phone: "087852626209")
}
