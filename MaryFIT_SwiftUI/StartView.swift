//
//  StartView.swift
//  MaryFIT_SwiftUI
//
//  Created by ALEKSANDR KIRILENKOV on 10.05.2020.
//  Copyright © 2020 ALEKSANDR KIRILENKOV. All rights reserved.
//

import SwiftUI

struct StartView: View {
    
        @State private var isShowingDetailView = false
    
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
                    
                    NavigationLink(destination: SecondView(), isActive: $isShowingDetailView) { EmptyView() }
                    Button(action: {
                     self.isShowingDetailView = true
                    })
                    { Image("Button")
                        .resizable()
                        .renderingMode(.original)
                        .aspectRatio(contentMode: .fit)
                        .position(x: 300, y: 720)
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
                    .font(.custom("Lobster-Regular", size: 65))
                    .lineLimit(2)
            }
            
            VStack {
                Text("Better")
                    .font(.custom("Lobster-Regular", size: 80))
                    .fontWeight(.bold)
            }
            
            VStack() {
                Text("Your personal fitness trainer")
                    
                    .font(.custom("Lobster-Regular", size: 20))
                    
                    .multilineTextAlignment(.leading)
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
            .padding([.bottom, .trailing], -400.0)
        }
        .padding()
    }
}
