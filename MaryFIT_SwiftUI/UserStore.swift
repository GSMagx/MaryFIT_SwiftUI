//
//  UserStore.swift
//  MaryFIT_SwiftUI
//
//  Created by Alex on 25.05.20.
//  Copyright © 2020 ALEKSANDR KIRILENKOV. All rights reserved.
//

import SwiftUI
import Combine

class UserStore: ObservableObject {
   // UserStore().environmentObject(UserStore)
    @Published var isLogged: Bool = UserDefaults.standard.bool(forKey: "isLogged") {
        didSet {
            UserDefaults.standard.set(self.isLogged, forKey: "isLogged")
            
        }
    }
    @Published var showLogin = false
}

