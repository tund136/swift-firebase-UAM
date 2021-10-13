//
//  RegisterView.swift
//  FirebaseUAM
//
//  Created by Danh Tu on 13/10/2021.
//

import SwiftUI

struct RegisterView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            VStack(spacing: 32) {
                VStack(spacing: 16) {
                    InputTextFieldView(text: .constant(""), placeholder: "Email", keyboardType: .emailAddress, sfSymbol: "envelope")
                    
                    InputPasswordView(password: .constant(""), placeholder: "Password", sfSymbol: "lock")
                    
                    Divider()
                    
                    InputTextFieldView(text: .constant(""), placeholder: "First Name", keyboardType: .default, sfSymbol: nil)
                    
                    InputTextFieldView(text: .constant(""), placeholder: "Last Name", keyboardType: .default, sfSymbol: nil)
                    
                    InputTextFieldView(text: .constant(""), placeholder: "Occupation", keyboardType: .default, sfSymbol: nil)
                }
                
                ButtonView(title: "Sign Up", handler: {
                    // TODO: Handle create action
                })
            }
            .padding(.horizontal)
            .navigationBarTitle("Register")
            .applyClose()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
