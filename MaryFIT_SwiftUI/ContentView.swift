//
//  ContentView.swift
//  MaryFIT_SwiftUI
//
//  Created by ALEKSANDR KIRILENKOV on 09.05.2020.
//  Copyright © 2020 ALEKSANDR KIRILENKOV. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        ZStack {
            Color(red: 0.961, green: 0.71, blue: 0.639).edgesIgnoringSafeArea(.all)
            
            VStack() {
                

                Text("Make Yourself")
                    .font(.custom("my empire wont fall", size: 65))
                    .fontWeight(.bold)
            }
            .padding()
            VStack  {
                Text("Better")
                    .font(.custom("my empire wont fall", size: 70))
                    .fontWeight(.bold)
                
            }
            VStack {
                Text("Your personal fitness trainer")
                    .font(.custom("my empire wont fall", size: 20))
                    .fontWeight(.bold)
            }
   
            VStack(alignment: .trailing) {
                Divider()
                Button(action: {
                }) {
                    
                    Image("Button")
                        
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 250, height: 50, alignment: .bottomTrailing)
                        
                }
                
            }
  
        }

        .position(x: 160, y: 200)
        .padding()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

