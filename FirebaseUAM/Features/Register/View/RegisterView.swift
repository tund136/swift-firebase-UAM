//
//  RegisterView.swift
//  FirebaseUAM
//
//  Created by Danh Tu on 13/10/2021.
//

import SwiftUI

struct RegisterView: View {
    @StateObject private var vm = RegistrationViewModelImpl(
        service: RegistrationServiceImpl()
    )
    
    var body: some View {
        NavigationView {
            VStack(spacing: 32) {
                VStack(spacing: 16) {
                    InputTextFieldView(text: $vm.userDetails.email, placeholder: "Email", keyboardType: .emailAddress, sfSymbol: "envelope")
                    
                    InputPasswordView(password: $vm.userDetails.password, placeholder: "Password", sfSymbol: "lock")
                    
                    Divider()
                    
                    InputTextFieldView(text: $vm.userDetails.firstName, placeholder: "First Name", keyboardType: .default, sfSymbol: nil)
                    
                    InputTextFieldView(text: $vm.userDetails.lastName, placeholder: "Last Name", keyboardType: .default, sfSymbol: nil)
                    
                    InputTextFieldView(text: $vm.userDetails.occupation, placeholder: "Occupation", keyboardType: .default, sfSymbol: nil)
                }
                
                ButtonView(title: "Sign Up", handler: {
                    // TODO: Handle create action
                    vm.register()
                })
            }
            .padding(.horizontal)
            .navigationBarTitle("Register")
            .applyClose()
            .alert(isPresented: $vm.hasError) {
                if case .failed(let error) = vm.state {
                    return Alert(title: Text("Error"), message: Text(error.localizedDescription))
                } else {
                    return Alert(title: Text("Error"), message: Text("Something went wrong."))
                }
            }
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
