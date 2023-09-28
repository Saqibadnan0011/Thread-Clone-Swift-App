//
//  CreateThreadView.swift
//  ThreadClone
//
//  Created by apple on 16/08/2023.

import SwiftUI

struct CreateThreadView: View {
    @State private var caption = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack(alignment: .top, spacing: 4) {
                    CircularProfileImageView()
                    
                    VStack(alignment: .leading) {
                        Text("Rana Danish")
                            .fontWeight(.semibold)
                        TextField("Create a thread", text: $caption, axis: .vertical)
                    }
                    .padding(.horizontal, 10)
                    .font(.footnote)
                    Spacer()
                    
                    if !caption.isEmpty {
                        Button {
                            caption = ""
                        } label: {
                            Image(systemName: "xmark")
                                .resizable()
                                .frame(width: 12, height: 12)
                                .foregroundColor(.black).opacity(0.5)
                        }
                    }
                }
                Spacer()
            }
            .padding(30)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button ("Cancel") {
                        dismiss()
                    }
                    .font(.footnote)
                    .foregroundColor(.black)
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button ("Post") {
                        
                    }
                    .opacity(caption.isEmpty ? 0.5 : 1.0)
                    .disabled(caption.isEmpty)
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                }
            }
            .navigationTitle("Create Thread")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct CreateThreadView_Previews: PreviewProvider {
    static var previews: some View {
        CreateThreadView()
    }
}
