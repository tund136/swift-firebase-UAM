//
//  LoginView.swift
//  FirebaseUAM
//
//  Created by Danh Tu on 12/10/2021.
//

import SwiftUI

struct LoginView: View {
    @State private var showRegistration = false
    @State private var showForgotPassword = false
    
    @StateObject private var vm = LoginViewModelImpl(
        service: LoginServiceImpl()
    )
    
    var body: some View {
        VStack(spacing: 16) {
            VStack(spacing: 16) {
                InputTextFieldView(text: $vm.credentials.email, placeholder: "Email", keyboardType: .emailAddress, sfSymbol: "envelope")
                
                InputPasswordView(password: $vm.credentials.password, placeholder: "Password", sfSymbol: "lock")
            }
            
            HStack {
                Spacer()
                
                Button(action: {
                    // TODO: Handle presentation to forgot password
                    showForgotPassword.toggle()
                }, label: {
                    Text("Forgot Password")
                })
                    .font(.system(size: 16, weight: .bold))
                    .sheet(isPresented: $showForgotPassword) {
                        ForgotPasswordView()
                    }
            }
            
            VStack(spacing: 16) {
                ButtonView(title: "Login", handler: {
                    // TODO: Handle login action
                    vm.login()
                })
                
                ButtonView(title: "Register", background: .clear, foreground: .blue, border: .blue, handler: {
                    // TODO: Handle register action
                    showRegistration.toggle()
                })
                    .sheet(isPresented: $showRegistration) {
                        RegisterView()
                    }
            }
        }
        .padding(.horizontal)
        .navigationTitle("Login")
        .alert(isPresented: $vm.hasError) {
            if case .failed(let error) = vm.state {
                return Alert(title: Text("Error"), message: Text(error.localizedDescription))
            } else {
                return Alert(title: Text("Error"), message: Text("Something went wrong."))
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LoginView()
        }
    }
}
