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
    
    @State private var isFocused = false
    @State private var showCourses = false
    
    @State private var showAlert = false
    @State private var showMessage = "Something went wrong"
    
    func heidkeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
    var body: some View {
        
        ZStack {
            ZStack(alignment: .leading) {
                
                Color(red: 0.79, green: 0.59, blue: 0.59, opacity: 0.3)
                    .edgesIgnoringSafeArea(.all).blur(radius: 20)
                
                VStack {
                    Text("Sign up to get")
                        .font(.system(size: 25))
                        .bold()
                    
                    Text("5 Premium Course")
                        .font(.system(size: 60))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        
                        .lineLimit(2)
                        .minimumScaleFactor(0.7).padding()
                        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                        .shadow(color: Color.black.opacity(0.25), radius: 5, x: 0, y: 15)
                    
                    VStack() {
                        RoundedRectangle(cornerRadius: 20
                        ).foregroundColor(Color(red: 0.79, green: 0.59, blue: 0.59, opacity: 0.3))
                            .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                            .shadow(color: Color.black.opacity(0.15), radius: 5, x: 5, y: 5)
                            //  .padding()
                            
                            .frame(height: 148.0)
                            .overlay(HStack {
                                VStack {
                                    HStack {
                                        Image(systemName: "person.fill")
                                            .foregroundColor(Color(#colorLiteral(red: 0.6549019608, green: 0.7137254902, blue: 0.862745098, alpha: 1)))
                                            .frame(width: 44, height: 44)
                                            .background(Color("background1"))
                                            .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                                            .shadow(color: Color.black.opacity(0.15), radius: 5, x: 0, y: 5)
                                        TextField("Name".uppercased(), text: $userName)
                                            .keyboardType(.emailAddress)
                                            .font(.subheadline)
                                    }
                                    // .padding()
                                    VStack {
                                        HStack {
                                            VStack {
                                                HStack {
                                                    Image(systemName: "envelope.fill")
                                                        .foregroundColor(Color(#colorLiteral(red: 0.6549019608, green: 0.7137254902, blue: 0.862745098, alpha: 1)))
                                                        .frame(width: 44, height: 44)
                                                        .background(Color("background1"))
                                                        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                                                        .shadow(color: Color.black.opacity(0.15), radius: 5, x: 0, y: 5)
                                                    TextField("Your Email".uppercased(), text: $userEmail)
                                                        .keyboardType(.emailAddress)
                                                        .font(.subheadline)
                                                }
                                                //   .padding()
                                                HStack {
                                                    Image(systemName: "lock.fill")
                                                        .foregroundColor(Color(#colorLiteral(red: 0.6549019608, green: 0.7137254902, blue: 0.862745098, alpha: 1)))
                                                        .frame(width: 44, height: 44)
                                                        .background(Color("background1"))
                                                        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                                                        .shadow(color: Color.black.opacity(0.15), radius: 5, x: 0, y: 5)
                                                    SecureField("Password".uppercased(), text: $userPassword)
                                                        .keyboardType(.default)
                                                        .font(.subheadline)
                                                        .onTapGesture {
                                                            self.isFocused = true
                                                    }
                                                    
                                                }
                                                // .padding()
                                            }
                                            
                                        }
                                    }
                                }
                                .padding(.vertical)
                            })
                            
                            .padding()
                    }
                    .padding(.bottom, 120.0)
                        
                        // .padding()
                        .frame(height: 250.0)
                    Button(action: { self.showCourses.toggle() })
                    {
                        Text("Sign Up")
                            .multilineTextAlignment(.center)
                            .frame( width: 350.0, height: 50.0)
                            .background(Color(red: 0.961, green: 0.71, blue: 0.639))
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                            .cornerRadius(10)
                            .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                            .shadow(color: Color.black.opacity(0.15), radius: 5, x: 0, y: 5)
                        
                    }
                    .sheet(isPresented: self.$showCourses ) {
                        CoursesList()
                    }
                    Text("Terms of Use and Privacy Policy").bold()
                        
                        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                        .shadow(color: Color.black.opacity(0.15), radius: 5, x: 0, y: 5)
                        .padding()
                    
                    
                    HStack {
                        Text("Already have account?")
                            .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                            .shadow(color: Color.black.opacity(0.15), radius: 5, x: 0, y: 5)
                        
                        Button(action: {
                            self.showAlert = true
                            self.isFocused = false
                            self.heidkeyboard()
                        }) {
                            Text("Log in").bold()
                                .alert(isPresented: $showAlert) {
                                    Alert(title: Text("Error"), message: Text(self.showMessage), dismissButton: .default(Text("OK")))
                            }
                            
                        }
                    }
                    
                }
            }
        }
        .offset(y: isFocused ? -100 : 0)
        .animation(.easeInOut)
        .onTapGesture {
            self.isFocused = false
            self.heidkeyboard()
        }
    }
}

struct RegForm_Previews: PreviewProvider {
    static var previews: some View {
        RegForm()
        //   .previewDevice("iPad")
        
    }
}
