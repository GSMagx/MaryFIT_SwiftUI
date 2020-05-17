//
//  LoginForm.swift
//  MaryFIT_SwiftUI
//
//  Created by Alex on 16.05.20.
//  Copyright © 2020 ALEKSANDR KIRILENKOV. All rights reserved.
//

import SwiftUI

struct LoginForm: View {
    var body: some View {
        
        ZStack {
            Color(red: 0.79, green: 0.59, blue: 0.59, opacity: 0.6)
                .edgesIgnoringSafeArea(.all).blur(radius: 20)
            
            
            
            VStack {
                Text("Hello, World!")
                    
            }
            .padding()
            
            VStack {
                Text("UserForm")
            }
        }
        
    }
}




struct LoginForm_Previews: PreviewProvider {
    static var previews: some View {
        LoginForm()
    }
}
