//
//  ExploreView.swift
//  ThreadClone
//
//  Created by apple on 16/08/2023.
//

import SwiftUI

struct ExploreView: View {
    
    @State private var searchText = ""
    @StateObject var viewModel = ExploreViewModel()
    
    var body: some View {
        NavigationStack {
                ScrollView {
                    LazyVStack {
                        ForEach(viewModel.users) { user in
                            NavigationLink(value: user) {
                                VStack {
                                    UserCell(user: user)
                                    
                                    Divider()
                                }
                                .padding(.vertical, 5)
                            }
                        }//loop
                    }
                }
                .navigationDestination(for: User.self, destination: { user in
                    ProfileView()
                })
                .navigationTitle("Search")
                .navigationBarTitleDisplayMode(.inline)
                .searchable(text: $searchText, prompt: "Search")
        }//navistack
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
