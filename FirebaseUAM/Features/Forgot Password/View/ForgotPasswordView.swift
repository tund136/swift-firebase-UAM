//
//  ForgotPasswordView.swift
//  FirebaseUAM
//
//  Created by Danh Tu on 13/10/2021.
//

import SwiftUI

struct ForgotPasswordView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 16) {
                InputTextFieldView(text: .constant(""), placeholder: "Email", keyboardType: .emailAddress, sfSymbol: "envelope")
                
                ButtonView(title: "Send Password Reset", handler: {
                    // TODO: Handle password reset
                })
            }
            .padding(.horizontal)
            .navigationTitle("Reset Password")
            .applyClose()
        }
    }
}

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}
