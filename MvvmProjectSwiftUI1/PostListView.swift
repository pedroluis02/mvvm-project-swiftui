//
//  PostListView.swift
//  MvvmProjectSwiftUI1
//
//  Created by Pedro Luis on 30/04/22.
//

import SwiftUI

struct PostListView: View {
    var userId: Int
    @ObservedObject var model: PostListViewModel
    
    init (userId: Int) {
        self.userId = userId
        model = PostListViewModel(self.userId)
    }
    
    var body: some View {
        List(model.posts) { post in
            NavigationLink {
                VStack {
                    Text(post.title)
                        .font(.title)
                        .padding(16)
                    Text(post.body)
                        .padding(16)
                }.navigationTitle("Post id=\(post.id.description)")
            } label: {
                Text("\(post.id.description) \(post.title)")
            }
        }
        .navigationTitle("Posts usr=\(userId.description)")
        .onAppear(perform: model.getPosts)
    }
}
