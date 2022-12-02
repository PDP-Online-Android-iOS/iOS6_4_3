//
//  UsersDefaults.swift
//  Task 3
//
//  Created by Ogabek Matyakubov on 02/12/22.
//

import Foundation
import SwiftKeychainWrapper

class UsersDefaults: ObservableObject {
    
    @Published var password: String? {
        didSet {
            KeychainWrapper.standard.set(password ?? "no password", forKey: "password")
        }
    }
    
    init() {
        self.password = KeychainWrapper.standard.object(forKey: "password") as? String ?? nil
    }

}
