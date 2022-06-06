//
//  Button.swift
//  MyTo
//
//  Created by MacBook Pro on 07/06/22.
//

import SwiftUI

struct BackButton: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }, label:{
            Image(systemName: "arrow.backward")
                .font(.headline)
                .foregroundColor(Color.black)
        })
    }
}

struct Button_Previews: PreviewProvider {
    static var previews: some View {
        BackButton()
    }
}
