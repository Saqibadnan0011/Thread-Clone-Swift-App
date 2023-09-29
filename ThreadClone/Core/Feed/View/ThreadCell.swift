//
//  ThreadCell.swift
//  ThreadClone
//
//  Created by apple on 16/08/2023.
//

import SwiftUI

struct ThreadCell: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea(.all)
            VStack {
                HStack(alignment: .top, spacing: 12) {
                    CircularProfileImageView()
                    
                    VStack(alignment: .leading, spacing: 4) {
                        HStack {
                            Text("IOS Developer")
                                .font(.footnote)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            
                            Spacer()
                            Text("10m")
                                .font(.caption)
                                .foregroundColor(.white).opacity(0.6)
                            
                            Button {
                                
                            } label: {
                                Image(systemName: "ellipsis")
                                    .foregroundColor(.white)
                            }

                        }//hstack
                        
                        Text("An software Engineer")
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.white)
                        
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
                        .foregroundColor(.white)
                        .padding(.vertical, 10)

                    }
                }//hstack
                
                Divider()
            }//vstack
            .padding(20)
        }
    }
}

struct ThreadCell_Previews: PreviewProvider {
    static var previews: some View {
        ThreadCell()
    }
}
