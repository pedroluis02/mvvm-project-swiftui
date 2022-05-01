//
//  RepositoryManager.swift
//  MvvmProjectSwiftUI1
//
//  Created by Pedro Luis on 29/04/22.
//

import Foundation

class RepositoryManager {
    private let jsonDecoder = JSONDecoder()
    
    func getUsers(success: @escaping([User]) -> (), failure: @escaping(Error) ->()) {
        let client = RespositoryClient()
        client.get(path: "/users") { data in
            do {
                let list = try self.jsonDecoder.decode([User].self, from: data)
                success(list)
            } catch let error {
                failure(RepositoryError(error.localizedDescription))
            }
        } failure: { error in
            failure(error)
        }
    }
    
    func getPosts(userId: Int, success: @escaping([Post]) -> (), failure: @escaping(Error) ->()) {
        let client = RespositoryClient()
        client.get(path: "/users/\(userId)/posts") { data in
            do {
                let list = try self.jsonDecoder.decode([Post].self, from: data)
                success(list)
            } catch let error {
                failure(RepositoryError(error.localizedDescription))
            }
        } failure: { error in
            failure(error)
        }
    }
    
    
    private static let _instance = RepositoryManager()
    
    static var instance: RepositoryManager {
        return _instance
    }
}
