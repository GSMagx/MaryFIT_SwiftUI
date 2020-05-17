//
//  LoginForm.swift
//  MaryFIT_SwiftUI
//
//  Created by Alex on 16.05.20.
//  Copyright © 2020 ALEKSANDR KIRILENKOV. All rights reserved.
//

import SwiftUI

struct LoginForm: View {
    @State private var userName : String = ""
    @State private var userEmail : String = ""
    @State private var userPassword : String = ""
    var body: some View {
        NavigationView{
        ZStack(alignment: .leading) {
            Color(red: 0.79, green: 0.59, blue: 0.59, opacity: 0.3)
                .edgesIgnoringSafeArea(.all).blur(radius: 20)
            
            VStack(alignment: .leading) {
                
                VStack {
                    Text("Sign up to get")
                        .font(.system(size: 25))
                        .bold()
                }
                
                VStack {
                    Text("5 Premium Course")
                        .font(.system(size: 60))
                        .bold()
                        .lineLimit(2)
                }
                
                HStack {
                    Image(systemName: "person.circle")
                        
                    TextField("Name", text: $userName)
                    
                }
                .padding()
                
                HStack {
                    Image(systemName: "envelope")
                        
                    TextField("Email", text: $userEmail)
                }
                .padding()
                HStack {
                    Image(systemName: "lock")
                        
                    VStack {
                        TextField("Password", text: $userPassword)
                        
                    }
                
                }
                .padding()
             //   VStack() {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Sign Up")
                            .multilineTextAlignment(.center)
                            .frame( width: 350.0, height: 50.0)
                            .background(Color(red: 0.961, green: 0.71, blue: 0.639))
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                        .cornerRadius(10)
                            
                            .padding()
                  //  }
                }
                Text("Terms of Use and Privacy Policy")
                    .padding(.leading, 60.0)
                
                HStack(alignment: .center, spacing: 20.0){
                    Text("Already have account?")
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Log in").bold()
                }

                }
                .padding([.top, .leading], 60.0)
                }
        .padding()
            }
            }
            
        }
}


struct LoginForm_Previews: PreviewProvider {
    static var previews: some View {
        LoginForm()
    }
}
