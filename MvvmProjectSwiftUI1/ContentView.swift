//
//  ContentView.swift
//  MvvmProjectSwiftUI1
//
//  Created by Pedro Luis on 23/04/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = UserListViewModel()
    
    var body: some View {
        NavigationView {
            List(model.users) { user in
                NavigationLink {
                    PostListView(userId: user.id)
                } label: {
                    Text("[\(user.id.description)] \(user.name)")
                }
            }
            .navigationTitle("Users")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
