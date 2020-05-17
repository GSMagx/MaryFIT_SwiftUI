//
//  SecondView.swift
//  MaryFIT_SwiftUI
//
//  Created by Alex on 16.05.20.
//  Copyright © 2020 ALEKSANDR KIRILENKOV. All rights reserved.
//

import SwiftUI

struct SecondView: View {

    @State private var isShowingDetailView = false
    
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
                    
                }
                .padding(.all, -250.0)
                .padding(150)
                VStack()  {
                    VStack {
                        Text("Your Ultimate Personal Trainer")
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                            .font(.system(size: 40))
                            .lineLimit(2)
                        
                    }
                    VStack {
                        Text("Personalized workouts and plans for any fitness goal and skill level")
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                        
                    }
                    
                    VStack {
                        NavigationLink(destination: LoginForm(), isActive: $isShowingDetailView) { EmptyView() }
                        Button(action: {
                         self.isShowingDetailView = true
                        }) {
                            RoundedRectangle(cornerRadius: 20).foregroundColor(.black)
                                .frame(width: nil, height: 50.0)
                                
                                .overlay(Text("Create Account").foregroundColor(.white))
                        }
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

//}
struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
