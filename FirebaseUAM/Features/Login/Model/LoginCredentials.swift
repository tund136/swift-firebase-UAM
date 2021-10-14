//
//  LoginCredentials.swift
//  FirebaseUAM
//
//  Created by Danh Tu on 14/10/2021.
//

import Foundation

struct LoginCredentials {
    var email: String
    var password: String
}

extension LoginCredentials {
    static var new: LoginCredentials {
        LoginCredentials(email: "", password: "")
    }
}
