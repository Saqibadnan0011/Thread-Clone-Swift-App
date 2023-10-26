//
//  EditProfileView.swift
//  ThreadClone
//
//  Created by apple on 16/08/2023.
//

import SwiftUI

struct EditProfileView: View {
    
    @State private var bio = ""
    @State private var link = ""
    @State private var isPrivateProfile = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.black)
                    .edgesIgnoringSafeArea([.bottom, .horizontal])
                VStack {
                    HStack {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Name")
                                .fontWeight(.semibold)
                            Text("Saqib Adnan")
                        }
                        Spacer()
                        CircularProfileImageView()
                    }
                    Divider()
                    //bio
                    VStack(alignment: .leading) {
                        Text("Bio")
                            .fontWeight(.semibold)
                        TextField("Enter your bio", text: $bio, axis: .vertical)
                    }
                    Divider()
                    //links
                    VStack(alignment: .leading) {
                        Text("Links")
                            .fontWeight(.semibold)
                        TextField("Add your links...", text: $link)
                    }
                    Divider()
                    //private profile
                    Toggle("Private Profile", isOn: $isPrivateProfile)
                }
                .font(.footnote)
                .foregroundColor(.white)
                .background(.black)
                .padding(.horizontal)
                .padding()
            }
            .navigationTitle("Edit Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        
                    }
                    .font(.subheadline)
                    .foregroundColor(.black)
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Done") {
                        
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                }
            }
        }
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}
