//
//  RegistrationViewModel.swift
//  FirebaseUAM
//
//  Created by Danh Tu on 13/10/2021.
//

import Foundation
import Combine

enum RegistrationState {
    case successful
    case failed(error: Error)
    case na
}

protocol RegistrationViewModel {
    func register()
    var service: RegistrationService { get }
    var state: RegistrationState { get }
    var userDetails: RegistrationDetails { get }
    init(service: RegistrationService)
}

final class RegistrationViewModelImpl: RegistrationViewModel {
    func register() {
        
    }
    
    var service: RegistrationService
    
    var state: RegistrationState = .na
    
    var userDetails: RegistrationDetails = RegistrationDetails(email: "", password: "", firstName: "", lastName: "", occupation: "")
    
    init(service: RegistrationService) {
        self.service = service
    }
    
    
}
