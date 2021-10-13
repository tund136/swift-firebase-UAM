//
//  LoginView.swift
//  FirebaseUAM
//
//  Created by Danh Tu on 12/10/2021.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack(spacing: 16) {
            VStack(spacing: 16) {
                InputTextFieldView(text: .constant(""), placeholder: "Email", keyboardType: .emailAddress, sfSymbol: "envelope")
                
                InputPasswordView(password: .constant(""), placeholder: "Password", sfSymbol: "lock")
            }
            
            HStack {
                Spacer()
                
                Button(action: {
                    // TODO: Handle presentation to forgot password
                }, label: {
                    Text("Forgot Password")
                })
                    .font(.system(size: 16, weight: .bold))
            }
            
            VStack(spacing: 16) {
                ButtonView(title: "Login", handler: {
                    // TODO: Handle login action
                })
                
                ButtonView(title: "Register", background: .clear, foreground: .blue, border: .blue, handler: {
                    // TODO: Handle register action
                })
            }
        }
        .padding(.horizontal)
        .navigationTitle("Login")
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LoginView()
        }
    }
}
