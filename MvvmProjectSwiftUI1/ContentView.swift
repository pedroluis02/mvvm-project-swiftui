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
