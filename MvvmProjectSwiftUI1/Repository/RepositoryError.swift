//
//  RepositoryError.swift
//  MvvmProjectSwiftUI1
//
//  Created by Pedro Luis on 30/04/22.
//

struct RepositoryError : Error {
    let message: String
    
    init(_ message: String) { 
        self.message = message
    }
    
    public var localizedDescription: String {
        return message
    }
}
