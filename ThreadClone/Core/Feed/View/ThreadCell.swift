//
//  ThreadCell.swift
//  ThreadClone
//
//  Created by apple on 16/08/2023.
//

import SwiftUI

struct ThreadCell: View {
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 12) {
                CircularProfileImageView()
                
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text("IOS Developer")
                            .font(.footnote)
                        .fontWeight(.semibold)
                        
                        Spacer()
                        Text("10m")
                            .font(.caption)
                            .foregroundColor(.gray).opacity(0.6)
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "ellipsis")
                                .foregroundColor(.gray)
                        }

                    }//hstack
                    
                    Text("An software Engineer")
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    
                    HStack(spacing: 18) {
                        Button {
                            
                        } label: {
                            Image(systemName: "heart")
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "bubble.right")
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "arrow.rectanglepath")
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "paperplane")
                        }

                    }//button hstack
                    .foregroundColor(.black)
                    .padding(.vertical, 10)

                }
            }//hstack
            
            Divider()
        }//vstack
        .padding(20)
    }
}

struct ThreadCell_Previews: PreviewProvider {
    static var previews: some View {
        ThreadCell()
    }
}
