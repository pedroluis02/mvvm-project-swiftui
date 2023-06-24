//
//  ContentView.swift
//  MvvmProjectSwiftUI1
//
//  Created by Pedro Luis on 23/04/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            UserListView()
                .navigationBarTitle("Users", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
