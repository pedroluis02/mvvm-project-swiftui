import Combine

class PostListViewModel: ObservableObject {
    @Published var posts: [Post] = []
    
    /*@Published var posts = [Post]() {
        didSet {
            didChange.send(self)
        }
    }
    let didChange = PassthroughSubject<PostListViewModel, Never>()*/
    
    var userId: Int
    
    init(_ userId: Int) {
        self.userId = userId
        //getPosts()
    }
    
    func getPosts() {
        RepositoryManager.instance.getPosts(userId: self.userId) {
            self.posts = $0
        } failure: { error in
            print(error)
        }
    }
}
