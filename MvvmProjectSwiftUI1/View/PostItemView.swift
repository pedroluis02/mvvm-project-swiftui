//
//  PostItemView.swift
//  MvvmProjectSwiftUI1
//
//  Created by Pedro Luis on 23/06/23.
//

import SwiftUI

struct PostItemView: View {
    private var post: Post!
    
    init (post: Post) {
        self.post = post
    }
    
    var body: some View {
        VStack {
            Text(post.title)
                .font(.title)
                .padding(16)
            Text(post.body)
                .padding(16)
            Spacer()
        }
    }
}

struct PostItemView_Previews: PreviewProvider {
    static var previews: some View {
        let post = Post(id: 1, title: "Post 1", body: "Body 1", user_id: 1)
        PostItemView(post: post)
    }
}
