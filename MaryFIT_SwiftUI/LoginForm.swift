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
        //  NavigationView{
        ZStack(alignment: .leading) {
            Color(red: 0.79, green: 0.59, blue: 0.59, opacity: 0.3)
                .edgesIgnoringSafeArea(.all).blur(radius: 20)
            
            VStack(alignment: .leading) {
                
                VStack {
                    Text("Sign up to get")
                        .font(.system(size: 25))
                        .bold()
                        .padding()
                }
                
                VStack {
                    Text("5 Premium Course")
                        .font(.system(size: 60))
                        .bold()
                        .lineLimit(2)
                        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                        .shadow(color: Color.black.opacity(0.25), radius: 5, x: 0, y: 15)
                    
                }
                
                VStack(alignment: .leading, spacing: 12.0) {
                    
                    
                    HStack {
                        Image(systemName: "person.circle.fill")
                            
                            .foregroundColor(Color(#colorLiteral(red: 0.6549019608, green: 0.7137254902, blue: 0.862745098, alpha: 1)))
                            .frame(width: 44, height: 44)
                            .background(Color("background1"))
                            .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                            .shadow(color: Color.black.opacity(0.15), radius: 5, x: 0, y: 5)
                        //     .padding(.leading)
                        
                        TextField("Name".uppercased(), text: $userName)
                            .keyboardType(.emailAddress)
                            .font(.subheadline)
                            
                            //         .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.leading)
                            .frame(height: 44)
                        
                        
                    }
                    
                    
                    HStack {
                        
                        Image(systemName: "person.crop.circle.fill")
                            .foregroundColor(Color(#colorLiteral(red: 0.6549019608, green: 0.7137254902, blue: 0.862745098, alpha: 1)))
                            .frame(width: 44, height: 44)
                            .background(Color("background1"))
                            .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                            .shadow(color: Color.black.opacity(0.15), radius: 5, x: 0, y: 5)
                        //        .padding(.leading)
                        
                        TextField("Your Email".uppercased(), text: $userEmail)
                            .keyboardType(.emailAddress)
                            .font(.subheadline)
                            //           .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.leading)
                            .frame(height: 44)
                        
                        
                    }
                    
                    
                    HStack  {
                        
                        Image(systemName: "lock.fill")
                            .foregroundColor(Color(#colorLiteral(red: 0.6549019608, green: 0.7137254902, blue: 0.862745098, alpha: 1)))
                            .frame(width: 44, height: 44)
                            .background(Color("background1"))
                            .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                            .shadow(color: Color.black.opacity(0.15), radius: 5, x: 0, y: 5)
                        //   .padding(.leading)
                        
                        SecureField("Password".uppercased(), text: $userPassword)
                            .keyboardType(.default)
                            .font(.subheadline)
                            //                    .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.leading)
                            .frame(height: 44)
                        
                        
                    }
                    
                }
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Sign Up")
                        .multilineTextAlignment(.center)
                        .frame( width: 350.0, height: 50.0)
                        .background(Color(red: 0.961, green: 0.71, blue: 0.639))
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                        .cornerRadius(10)
                        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                        .shadow(color: Color.black.opacity(0.15), radius: 5, x: 0, y: 5)
                        
                        .padding()
                    
                }
                Text("Terms of Use and Privacy Policy")
                    .padding(.leading, 60.0)
                    .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                    .shadow(color: Color.black.opacity(0.15), radius: 5, x: 0, y: 5)
                
                HStack(alignment: .center, spacing: 20.0){
                    Text("Already have account?")
                        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                        .shadow(color: Color.black.opacity(0.15), radius: 5, x: 0, y: 5)
                    
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


struct LoginForm_Previews: PreviewProvider {
    static var previews: some View {
        LoginForm()
    }
}
