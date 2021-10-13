//
//  RegistrationViewModel.swift
//  FirebaseUAM
//
//  Created by Danh Tu on 13/10/2021.
//

import Foundation
import Combine

enum RegistrationState {
    case successfull
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
    private var subscriptions = Set<AnyCancellable>()
    
    func register() {
        service
            .register(with: userDetails)
            .sink { [weak self] res in
                switch res {
                case .failure(let error):
                    self?.state = .failed(error: error)
                default:
                    break
                }
            } receiveValue: { [weak self] in
                self?.state = .successfull
            }
            .store(in: &subscriptions)
    }
    
    var service: RegistrationService
    
    var state: RegistrationState = .na
    
    var userDetails: RegistrationDetails = RegistrationDetails.new
    
    init(service: RegistrationService) {
        self.service = service
    }
}
