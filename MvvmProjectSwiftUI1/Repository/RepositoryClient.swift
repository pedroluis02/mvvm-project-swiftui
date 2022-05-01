//
//  RepositoryClient.swift
//  MvvmProjectSwiftUI1
//
//  Created by Pedro Luis on 29/04/22.
//

import Foundation

class RespositoryClient {
    
    let OK_STATUS = 200
    let BASE_URL = "https://gorest.co.in/public/v2"
    
    func get(path: String, success: @escaping(Data) -> (), failure: @escaping(Error) -> ()) {
        let urlString = "\(BASE_URL)\(path)"
        
        print("---> GET \(urlString)")
        
        guard let url = URL(string: urlString) else {
            failure(RepositoryError("Unknown URL or it's impossible to access"))
            return
        }
        
        URLSession.shared.dataTask(with: url) { data1, response1, error1 in
            if (error1 != nil) {
                failure(RepositoryError(error1!.localizedDescription))
                return
            }
            
            guard let data = data1, let response = response1 as? HTTPURLResponse else {
                failure(RepositoryError("There was a error in response data"))
                return
            }
            
            print("response statuCode=\(response.statusCode)")
            if response.statusCode == self.OK_STATUS {
                DispatchQueue.main.async { success(data) }
            } else {
                failure(RepositoryError("There was a error statusCode=\(response.statusCode)"))
            }
        }.resume()
    }
    
}
