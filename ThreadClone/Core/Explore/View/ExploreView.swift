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
            ZStack {
                Color.black
                    .ignoresSafeArea(.all)
                ScrollView {
                    LazyVStack {
                        ForEach(viewModel.users) { user in
                            VStack {
                                UserCell(user: user)
                                
                                Divider()
                            }
                            .padding(.vertical, 5)
                        }//loop
                    }
                }
                .navigationTitle("Search")
                .foregroundColor(.white)
                .navigationBarTitleDisplayMode(.inline)
                .searchable(text: $searchText, prompt: "Search")
                //.foregroundColor(.gray)
            }
        }//navistack
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
