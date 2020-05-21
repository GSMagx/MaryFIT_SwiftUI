//
//  RegForm.swift
//  MaryFIT_SwiftUI
//
//  Created by ALEKSANDR KIRILENKOV on 21.05.2020.
//  Copyright © 2020 ALEKSANDR KIRILENKOV. All rights reserved.
//

import SwiftUI

struct RegForm: View {
    @State private var userName : String = ""
    @State private var userEmail : String = ""
    @State private var userPassword : String = ""
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            
            Color(red: 0.79, green: 0.59, blue: 0.59, opacity: 0.3)
                .edgesIgnoringSafeArea(.all).blur(radius: 20)
            
            VStack {
                Text("Sign up to get")
                    .font(.system(size: 25))
                    .bold()
                
                Text("5 Premium Course")
                    .font(.system(size: 60))
                    .bold()
                    .lineLimit(2)
                    .minimumScaleFactor(0.7).padding()
                    .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                    .shadow(color: Color.black.opacity(0.25), radius: 5, x: 0, y: 15)
                
                HStack {
                    Color(red: 0.79, green: 0.59, blue: 0.59, opacity: 0.3)
                    Image(systemName: "person.circle.fill")
                        
                        .foregroundColor(Color(#colorLiteral(red: 0.6549019608, green: 0.7137254902, blue: 0.862745098, alpha: 1)))
                        .frame(width: 44, height: 44)
                        .background(Color("background1"))
                        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                        .shadow(color: Color.black.opacity(0.15), radius: 5, x: 0, y: 5)
                    
                    TextField("Name".uppercased(), text: $userName)
                        .keyboardType(.emailAddress)
                        .font(.subheadline)
                    
                }
                .padding()
            }
        }
    }
}

struct RegForm_Previews: PreviewProvider {
    static var previews: some View {
        RegForm()
    }
}
