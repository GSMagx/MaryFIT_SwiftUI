//
//  CoursData.swift
//  MaryFIT_SwiftUI
//
//  Created by Alex on 24.05.20.
//  Copyright © 2020 ALEKSANDR KIRILENKOV. All rights reserved.
//

import SwiftUI

struct CoursData: View {
    
    var coursData: Courses = dataList[2]
    
    var body: some View {
        
        VStack {
            VStack {
                Image(self.coursData.image).resizable().aspectRatio(contentMode: .fit)
                
                Text(self.coursData.description)
            }
            .padding()
            .navigationBarTitle(self.coursData.text)
            List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                Text("Video 1")
            }
            .listStyle(GroupedListStyle())
        }
    }
    
}

struct CoursData_Previews: PreviewProvider {
    static var previews: some View {
        CoursData()
    }
}

