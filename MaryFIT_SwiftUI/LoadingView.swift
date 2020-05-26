//
//  LoadingView.swift
//  MaryFIT_SwiftUI
//
//  Created by Alex on 25.05.20.
//  Copyright © 2020 ALEKSANDR KIRILENKOV. All rights reserved.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        
            
        LottieView(filename: "loading")
            .frame(width: 200, height: 200)
        
    
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
