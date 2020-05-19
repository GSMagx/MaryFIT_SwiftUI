//
//  SecondView.swift
//  MaryFIT_SwiftUI
//
//  Created by Alex on 16.05.20.
//  Copyright © 2020 ALEKSANDR KIRILENKOV. All rights reserved.
//

import SwiftUI

struct SecondView: View {
    
    @State private var isShowLoginForm = false
    
    var body: some View {
        //   NavigationView {
        
        ZStack {
            Color(red: 0.79, green: 0.59, blue: 0.59, opacity: 0.6).edgesIgnoringSafeArea(.all).blur(radius: 20)
            
            VStack() {
                VStack() {
                    Image("reg_logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .edgesIgnoringSafeArea(.all).shadow(radius: 20)
                        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                        .shadow(color: Color.black.opacity(0.25), radius: 25, x: 0, y: 5)
                    
                    
                }
                .padding(.all, -250.0)
                .padding(150)
                VStack()  {
                    VStack {
                        Text("Your Ultimate Personal Trainer")
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                            .font(.system(size: 20))
                            .lineLimit(3)
                            .padding()
                    }
                    .padding()
                    VStack {
                        Text("Personalized workouts and plans for any fitness goal and skill level")
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .font(.system(size: 30))
                            .lineLimit(2)
                            .padding()
                    }
                    
                    VStack {
                        Button(action: {self.isShowLoginForm.toggle()})
                        {
                            Text("Create Account")
                                .multilineTextAlignment(.center)
                                .frame( width: 350.0, height: 50.0)
                                .background(Color(red: 0.961, green: 0.71, blue: 0.639))
                                .foregroundColor(.white)
                                .font(.system(size: 20))
                                .cornerRadius(10)
                                .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .shadow(color: Color.black.opacity(0.15), radius: 5, x: 0, y: 5)
                                
                                .padding()
                            //                            RoundedRectangle(cornerRadius: 20).foregroundColor(.black)
                            //                                .frame(width: nil, height: 50.0)
                            //
                            //                                .overlay(Text("Create Account").foregroundColor(.white))
                        }
                        .sheet(isPresented: $isShowLoginForm) {
                            LoginForm()
                            HStack(alignment: .center, spacing: 20.0) {
                                
                                HStack {
                                    Text("Already have account?").foregroundColor(.white)
                                }
                                
                                HStack {
                                    Button(action: {
                                        
                                    }) {
                                        Text("Log In").foregroundColor(.white)
                                    } 
                                }
                            }
                        }
                    }
                    .padding()
                    .frame(height: 300.0)
                }
            }
        }
        
    }
}

//}
struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
