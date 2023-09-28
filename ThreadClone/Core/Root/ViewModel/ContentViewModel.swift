//
//  ContentViewModel.swift
//  ThreadClone
//
//  Created by apple on 01/09/2023.
//

import Foundation
import Combine
import FirebaseAuth
import Firebase

class ContentViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        setupSubscribers()
    }
    private func setupSubscribers()  {
        AuthService.shared.$userSession.sink{ [weak self] userSession in
            self?.userSession = userSession
        }.store(in: &cancellables)
    }
}
