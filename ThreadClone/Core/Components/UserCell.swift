//
//  UserCell.swift
//  ThreadClone
//
//  Created by apple on 16/08/2023.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            CircularProfileImageView()
            
            VStack(alignment: .leading) {
                Text("IOS Developer")
                    .fontWeight(.semibold)
                Text("Saqib Adnan")
                    .font(.footnote)
            }
            .font(.footnote)
            Spacer()
            
            Text("Follow")
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 100, height: 32)
                .foregroundColor(.white)
                .background(.black)
                .cornerRadius(10)

        }//hstack
        .padding(.horizontal)
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
