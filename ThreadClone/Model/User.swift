//
//  User.swift
//  ThreadClone
//
//  Created by apple on 29/09/2023.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    let fullname: String
    let email: String
    let username: String
    var profileImageUrl: String?
    var bio: String?
}
