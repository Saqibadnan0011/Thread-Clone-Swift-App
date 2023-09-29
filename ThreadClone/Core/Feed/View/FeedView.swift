//
//  FeedView.swift
//  ThreadClone
//
//  Created by apple on 16/08/2023.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.black
                    .ignoresSafeArea(.all)
                ScrollView {
                    LazyVStack {
                        ForEach (0 ... 10, id: \.self) { thread in
                            ThreadCell()
                        }
                    }
                }
                .refreshable {
                    print("DEBUG: refresh ")
                }
                .navigationTitle("Thread")
                .navigationBarTitleDisplayMode(.inline)
            }
        }//naviStack
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    
                } label: {
                    Image(systemName: "arrow.counterclockwise")
                        .foregroundColor(.white)
                }
            }

        }//toolbar
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            FeedView()
        }
    }
}
