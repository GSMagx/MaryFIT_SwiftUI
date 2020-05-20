//
//  Start.swift
//  MaryFIT_SwiftUI
//
//  Created by Alex on 19.05.20.
//  Copyright © 2020 ALEKSANDR KIRILENKOV. All rights reserved.
//

import SwiftUI

struct Start: View {
    
    
    @State private var isShowSecondView = false
    
    var body: some View {
        GeometryReader  { gr in
            ZStack {
                Color(red: 0.961, green: 0.71, blue: 0.639).edgesIgnoringSafeArea(.all).blur(radius: 20)
                
                VStack {
                    
                    Text("Make Yourself")
                        .font(.title)
                        .scaleEffect(2)
                        .foregroundColor(Color.black)
                        .frame(maxWidth: .infinity, maxHeight: 50)
                        
                        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                        .shadow(color: Color.black.opacity(0.55), radius: 5, x: 0, y: 5)
                        
                        .padding(2)
                    
                    Text("Better")
                        .font(.largeTitle)
                        .scaleEffect(3)
                        .foregroundColor(Color.black)
                        .frame(maxWidth: .infinity, maxHeight: 80)
                        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                        .shadow(color: Color.black.opacity(0.45), radius: 5, x: 0, y: 5)
                        
                        .padding(28)
                    
                    Text("Your personal fitness trainer")
                        .font(.title)
                        .scaleEffect(1)
                        .foregroundColor(Color.black)
                        .frame(maxWidth: .infinity)
                        //  .minimumScaleFactor(0.5)
                        
                        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                        .shadow(color: Color.black.opacity(0.55), radius: 5, x: 0, y: 5)
                    
                    
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        HStack(spacing: 30.0) {
                            ForEach(sectionData) { item in
                                ImageList(section: item)
                            }
                            
                        }
                        .padding(30.0)
                        //    .padding(.bottom, 30)
                        
                    }
                    
                    Button(action: {self.isShowSecondView.toggle()})
                    {
                        Text("Start Training")
                            .multilineTextAlignment(.center)
                            .frame( width: 350.0, height: 60.0)
                            .background(Color.white)
                            .foregroundColor(.black)
                            .font(.system(size: 20))
                            .cornerRadius(10)
                            .clipShape(RoundedRectangle(cornerRadius: 26, style: .continuous))
                            .shadow(color: Color.black.opacity(0.45), radius: 5, x: 2, y: 15)
                    }
                    .sheet(isPresented: self.$isShowSecondView) {
                        SecondView()
                    }
                    
                }
                
            }
        }
    }
}



struct Start_Previews: PreviewProvider {
    static var previews: some View {
        Start()
    }
}

struct ImageList: View {
    
    var section: Section
    
    var body: some View {
        
        
        VStack {
            
            section.image.resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fill)
                .padding(.all, 20.0)
                
                .overlay(Text(section.text).bold().clipShape(RoundedRectangle(cornerRadius: 6, style: .continuous))
                .shadow(color: Color.black.opacity(0.55), radius: 1, x: 3, y: 0)
                    .multilineTextAlignment(.center)
                    
                    .padding(.top, -80.0))
            
            
                .font(.system(size: 25))
            
                .foregroundColor(.black)
                
                
                
                
                .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                .shadow(color: Color.black.opacity(0.55), radius: 5, x: 20, y: 25)
                
                .padding()
            
        }
        .frame(width: 250, height: 250)
        
        
        
    }
}

struct Section: Identifiable {
    
    var id = UUID()
    var image : Image
    var text : String
}

let sectionData = [
    Section( image: Image("Pic_1"), text: ("LiveFit") ),
    Section( image: Image("Pic_2"), text: ("Shortcut To Size")),
    Section( image: Image("Pic_3"), text: ("Joga")),
    Section( image: Image("Pic_4"), text: ("Running"))
]


