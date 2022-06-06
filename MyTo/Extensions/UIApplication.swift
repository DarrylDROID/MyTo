//
//  UIApplication.swift
//  MyTo
//
//  Created by MacBook Pro on 06/06/22.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
