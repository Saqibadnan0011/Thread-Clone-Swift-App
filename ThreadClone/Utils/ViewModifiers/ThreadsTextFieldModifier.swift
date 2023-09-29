//
//  ThreadsTextFieldModifier.swift
//  ThreadClone
//
//  Created by apple on 15/08/2023.
//

import SwiftUI

struct ThreadsTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .frame(width: 330, height: 62)
            .background(.white).opacity(0.8)
            .cornerRadius(10)
            .padding(.horizontal, 24)
    }
}
