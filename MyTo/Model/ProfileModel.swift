//
//  ProfileModel.swift
//  MyTo
//
//  Created by MacBook Pro on 06/06/22.
//

import Foundation

struct ProfileModel {
    var username: String
    var birthday: String
    var address: String
    var number: String
    
    static let `default` = Profile(username: "Darryl", birthday: "April 29", address: "Taman Wisata Regency", number: "087852626209")
}
