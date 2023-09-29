//
//  UserCell.swift
//  ThreadClone
//
//  Created by apple on 16/08/2023.
//

import SwiftUI

struct UserCell: View {
    
    let user: User
    
    var body: some View {
        //ZStack {
            Color.black
                .ignoresSafeArea(.all)
            HStack {
                CircularProfileImageView()
                
                VStack(alignment: .leading) {
                    Text(user.fullname)
                        .fontWeight(.semibold)
                    Text(user.username)
                        .font(.footnote)
                }
                .font(.footnote)
                .foregroundColor(.white)
                
                Spacer()
                
                Text("Follow")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 100, height: 32)
                    .foregroundColor(.black)
                    .background(.white)
                    .cornerRadius(10)

            }//hstack
            .padding(.horizontal)
        //}
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell(user: dev.user)
    }
}
