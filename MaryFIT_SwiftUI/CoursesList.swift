//
//  CoursesList.swift
//  MaryFIT_SwiftUI
//
//  Created by Alex on 24.05.20.
//  Copyright © 2020 ALEKSANDR KIRILENKOV. All rights reserved.
//

import SwiftUI

struct CoursesList: View {
    var body: some View {
        NavigationView {
        HStack {
                List(dataList) { cours in
                    NavigationLink(destination: CoursData(coursData: cours )) {
                        
                        HStack(){
                        Image(cours.image).resizable()
                            .renderingMode(.original)
                            .aspectRatio(contentMode: .fill).frame(width: 100, height: 100)
                            .cornerRadius(20)
                            .clipShape(RoundedRectangle(cornerRadius: 26, style: .continuous))
                            .shadow(color: Color.black.opacity(0.45), radius: 5, x: 2, y: 15)
                            .padding()
                        
                        
                            VStack(alignment: .leading) {
                            
                            Text(cours.text).bold().font(.system(size: 20)).lineLimit(2)
                            Text(cours.description).font(.subheadline)
                                
                                if cours.vip == true {
                                    Text("Premium").foregroundColor(.red).bold().blur(radius: 0.7)
                                } else {
                                    
                                }
                        }
                        .padding()
                        
                        }
                        
                        
                    }
                }
                
            }
           
        }
         .navigationBarTitle("Courses")
    }
}

struct CoursesList_Previews: PreviewProvider {
    static var previews: some View {
        CoursesList()
    }
}
struct Courses: Identifiable {
    
    var id = UUID()
    var image : String
    var text : String
    var description : String
    var vip : Bool
}

let dataList = [
    Courses( image: "Pic_1", text: "LiveFit",          description: "test test test", vip: false),
    Courses( image: "Pic_2", text: "Shortcut To Size", description: "test test test", vip: true),
    Courses( image: "Pic_3", text: "Joga",             description: "test test test", vip: true),
    Courses( image: "Pic_4", text: "Running",          description: "test test test", vip: true)
]
