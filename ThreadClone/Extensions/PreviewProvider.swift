//
//  PreviewProvider.swift
//  ThreadClone
//
//  Created by apple on 30/09/2023.
//

import SwiftUI

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    let user = User(id: NSUUID().uuidString, fullname: "Saqib Adnan", email: "saqib@gmail.com", username: "saqib01")
}
