//
//  test.swift
//  MaryFIT_SwiftUI
//
//  Created by Alex on 19.05.20.
//  Copyright © 2020 ALEKSANDR KIRILENKOV. All rights reserved.
//

import SwiftUI

struct test: View {
    var body: some View {
        
        Text("Personalized workouts and plans for any fitness goal and skill level")
            .font(.body)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            .lineLimit(2)
            .scaleEffect(1.5)
        
    }
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}
