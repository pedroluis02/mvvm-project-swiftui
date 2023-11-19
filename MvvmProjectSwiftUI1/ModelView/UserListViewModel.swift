import Combine

class UserListViewModel: ObservableObject {
    @Published var users: [User] = []
    
    /*Published var users = [User]() {
        didSet {
            didChange.send(self)
        }
    }
    let didChange = PassthroughSubject<UserListViewModel, Never>()*/
    
    init() {
        getUsers()
    }
    
    func getUsers() {
        RepositoryManager.instance.getUsers {
            self.users = $0
        } failure: { error in
            print(error)
        }
    }
}
