//
//  testImage.swift
//  MaryFIT_SwiftUI
//
//  Created by ALEKSANDR KIRILENKOV on 21.05.2020.
//  Copyright © 2020 ALEKSANDR KIRILENKOV. All rights reserved.
//

import SwiftUI

struct SecondView: View {
    
    @State private var isShowLoginForm = false
    
    var body: some View {
        ZStack{
            Color(red: 0.79, green: 0.59, blue: 0.59, opacity: 0.6)
                .blur(radius: 20)
            
           VStack(alignment: .center) {
                Image("reg_logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .edgesIgnoringSafeArea(.all)
             Spacer()
            }
           
            
            VStack {
                Text("Your Ultimate Personal Trainer")
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .multilineTextAlignment(.center)
                        .lineLimit(2)
                    .padding()
            
                    
                
                Text("Personalized workouts and plans for any fitness goal and skill level")
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
                .font(.system(size: 20))
                .lineLimit(2)
                .shadow(radius: 20)
                
                    .padding()
                
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
                }
            .sheet(isPresented: $isShowLoginForm) {
                 RegForm()
                }
            }
            .padding()
            
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
