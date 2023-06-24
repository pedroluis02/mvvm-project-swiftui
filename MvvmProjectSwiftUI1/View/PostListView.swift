//
//  PostListView.swift
//  MvvmProjectSwiftUI1
//
//  Created by Pedro Luis on 30/04/22.
//

import SwiftUI

struct PostListView: View {
    @ObservedObject var viewModel: PostListViewModel
    
    init (userId: Int) {
        self.viewModel = PostListViewModel(userId)
        self.viewModel.getPosts()
    }
    
    private func loadAfter (_ seconds: Double) {
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            self.viewModel.getPosts()
        }
    }
    
    var body: some View {
        ForEach(viewModel.posts) { post in
            NavigationLink {
                PostItemView(post: post)
                    .navigationBarTitle("Post", displayMode: .inline)
            } label: {
                Text("\(post.id.description) \(post.title)")
                    .lineLimit(3)
            }
        }
    }
}


struct PostListView_Previews: PreviewProvider {
    static var previews: some View {
        PostListView(userId: 1)
    }
}
