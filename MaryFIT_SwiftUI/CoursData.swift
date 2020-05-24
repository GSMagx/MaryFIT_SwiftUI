//
//  CoursData.swift
//  MaryFIT_SwiftUI
//
//  Created by Alex on 24.05.20.
//  Copyright © 2020 ALEKSANDR KIRILENKOV. All rights reserved.
//

import SwiftUI

struct CoursData: View {
    var body: some View {
        List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
}

struct CoursData_Previews: PreviewProvider {
    static var previews: some View {
        CoursData()
    }
}
