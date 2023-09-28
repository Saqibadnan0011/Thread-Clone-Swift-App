//
//  AuthService.swift
//  ThreadClone
//
//  Created by apple on 01/09/2023.
//

import FirebaseAuth
import Firebase
import FirebaseFirestoreSwift

class AuthService {
    @Published var userSession: FirebaseAuth.User?
    
    static let shared = AuthService()
    
    init() {
        self.userSession = Auth.auth().currentUser
    }
    
    @MainActor
    func login(withemail email: String, password: String) async throws {
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
                self.userSession = result.user
                print("DEBUG: created user\(result.user.uid)")
            } catch {
                print("DEBUG: failed to create user\(error.localizedDescription)")
            }
    }
    @MainActor
    func createUser(withemail email: String, password: String, fullname: String, username: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            print("DEBUG: created user\(result.user.uid)")
        } catch {
            print("DEBUG: failed to create user\(error.localizedDescription)")
        }
    }
    func signOut() {
        try? Auth.auth().signOut()
        self.userSession = nil
    }
    
    //func to upload user data
    @MainActor
    private func uploadUserData(withemail email: String, fullname: String, username: String, id: String) async throws {
        let user = User(id: id, fullname: fullname, email: email, username: username)
        guard let userData = try? Firestore.Encoder().encode(user) else { return }
        try await Firestore.firestore().collection("users").document(id).setData(userData)
    }
}
