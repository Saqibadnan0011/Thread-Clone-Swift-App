//
//  LoginViewModel.swift
//  ThreadClone
//
//  Created by apple on 29/09/2023.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    @MainActor
    func login() async throws {
        try await AuthService.shared.login(withemail: email, password: password)
    }
}
