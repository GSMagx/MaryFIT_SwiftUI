//
//  StartView.swift
//  MaryFIT_SwiftUI
//
//  Created by ALEKSANDR KIRILENKOV on 10.05.2020.
//  Copyright © 2020 ALEKSANDR KIRILENKOV. All rights reserved.
//

import SwiftUI

struct StartView: View {
    
        @State private var isShowSecondView = false
    
    init() {
        
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.systemRed, .font: UIFont(name: "ArialRoundedMTBold", size: 35)!]
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.black, .font: UIFont(name: "ArialRoundedMTBold", size: 40)!]
        
        
        UINavigationBar.appearance().standardAppearance = navBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
        UINavigationBar.appearance().compactAppearance = navBarAppearance
        
    }
    
    var body: some View {
        
        NavigationView {
           
            ZStack {
                
                Color(red: 0.961, green: 0.71, blue: 0.639).edgesIgnoringSafeArea(.all).blur(radius: 20)
                TitleText()
                    .position(x: 170, y: 210)
                HStack(alignment: .bottom) {
                    
                    Button(action: {self.isShowSecondView.toggle()})
                    {
//                        Color.white
//                        .frame(width: 38, height: 6)
//                        .cornerRadius(3)
//                        .frame(width: 130, height: 6, alignment: .leading)
//                        .background(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.08)))
//                        .cornerRadius(3)
//                        .padding()
//                        .frame(width: 150, height: 24)
//                        .background(Color(#colorLiteral(red: 0.7882352941, green: 0.8196078431, blue: 0.862745098, alpha: 1)))
//                        .cornerRadius(12)
//                        .shadow(color: Color.white, radius: 0, x: 0, y: 1)

//                        Image("Button")
//                        .resizable()
//                        .renderingMode(.original)
//                        .aspectRatio(contentMode: .fit)
//                        .position(x: 300, y: 720)
                        
                        Text("Start Training")
                        .multilineTextAlignment(.center)
                        .frame( width: 350.0, height: 60.0)
                            .background(Color.white)
                        .foregroundColor(.black)
                        .font(.system(size: 20))
                        .cornerRadius(10)
                        .clipShape(RoundedRectangle(cornerRadius: 26, style: .continuous))
                        .shadow(color: Color.black.opacity(0.45), radius: 5, x: 2, y: 15)
                        .position(x: 300, y: 540)
                        .padding()
                    }
                    .sheet(isPresented: $isShowSecondView) {
                        SecondView()
                    }
                }
            }
            .navigationBarTitle("MaryFIT.app", displayMode: .inline)
            
        }
    }
}
struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
        
    }
}

struct TitleText: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            
            VStack {
                
                Text("Make Yourself")
                    .font(.custom("Lobster-Regular", size: 45))
                    .lineLimit(2)
                .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                .shadow(color: Color.black.opacity(0.25), radius: 5, x: 0, y: 25)
                .padding()
            }
            
            VStack {
                Text("Better")
                    .font(.custom("Lobster-Regular", size: 70))
                    .fontWeight(.bold)
                .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                .shadow(color: Color.black.opacity(0.55), radius: 5, x: 0, y: 5)
            }
            
            VStack() {
                Text("Your personal fitness trainer")
                    
                    .font(.custom("Lobster-Regular", size: 20))
                    .multilineTextAlignment(.leading)
                .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                .shadow(color: Color.black.opacity(0.25), radius: 5, x: 0, y: 5)
            }
            .padding()
            ZStack {
                Image("fit_logo").resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 350, height: 310)
                    .shadow(radius: 30)
                    .padding()
            }
            .padding([.bottom, .trailing], -100.0)
        }
        .padding()
    }

}
