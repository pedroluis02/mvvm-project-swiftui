import SwiftUI

struct UserDetailView: View {
    private var user: User
    
    init (user: User) {
        self.user = user
    }
    
    var body: some View {
        List {
            Section(header: Text("Info")) {
                Text(user.name).font(.title).bold()
                Text(user.email)
                HStack {
                    Circle()
                        .fill((user.status == "inactive") ? .red : .green)
                        .frame(width: 16, height: 16)
                    Text(user.status)
                }
            }
            Section(header: Text("Posts")) {
                PostListView(userId: user.id)
            }
        }
    }
}

struct UserDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let user = User(id: 1, name: "Name 1", gender: "", email: "email@example.com", status: "active")
        UserDetailView(user: user)
    }
}
