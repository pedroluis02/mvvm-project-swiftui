import SwiftUI

struct UserListView: View {
    @ObservedObject var viewModel = UserListViewModel()
    
    var body: some View {
        List(viewModel.users) { user in
            NavigationLink {
                UserDetailView(user: user)
                    .navigationBarTitle("User", displayMode: .inline)
            } label: {
                HStack {
                    Text("[\(user.id.description)]").font(.caption)
                    Text(user.name).font(.headline).bold().lineLimit(1)
                }
            }
        }
    }
}

struct UserListView_Previews: PreviewProvider {
    static var previews: some View {
        UserListView()
    }
}
