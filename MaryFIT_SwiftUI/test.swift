//
//  test.swift
//  MaryFIT_SwiftUI
//
//  Created by Alex on 17.05.20.
//  Copyright © 2020 ALEKSANDR KIRILENKOV. All rights reserved.
//

import SwiftUI

struct test: View {
    var body: some View {
        
        Color.white
        .frame(width: 38, height: 6)
        .cornerRadius(3)
        .frame(width: 130, height: 6, alignment: .leading)
        .background(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.08)))
        .cornerRadius(3)
        .padding()
        .frame(width: 150, height: 24)
        .background(Color(#colorLiteral(red: 0.7882352941, green: 0.8196078431, blue: 0.862745098, alpha: 1)))
        .cornerRadius(12)
        .shadow(color: Color.white, radius: 0, x: 0, y: 1)
    }
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}
