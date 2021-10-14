//
//  ForgotPasswordView.swift
//  FirebaseUAM
//
//  Created by Danh Tu on 13/10/2021.
//

import SwiftUI

struct ForgotPasswordView: View {
    @Environment(\.presentationMode) var presentationMode
    @StateObject private var vm = ForgotPasswordViewModelImpl(
        service: ForgotPasswordServiceImpl()
    )
    
    var body: some View {
        NavigationView {
            VStack(spacing: 16) {
                InputTextFieldView(text: $vm.email, placeholder: "Email", keyboardType: .emailAddress, sfSymbol: "envelope")
                
                ButtonView(title: "Send Password Reset", handler: {
                    // TODO: Handle password reset
                    vm.sendPasswordReset()
                    presentationMode.wrappedValue.dismiss()
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
