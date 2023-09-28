//
//  CircularProfileImageView.swift
//  ThreadClone
//
//  Created by apple on 16/08/2023.
//

import SwiftUI

struct CircularProfileImageView: View {
    var body: some View {
        Image("saqib")
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
    }
}

struct CircularProfileImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProfileImageView()
    }
}
