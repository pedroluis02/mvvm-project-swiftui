//
//  RepositoryError.swift
//  MvvmProjectSwiftUI1
//
//  Created by Pedro Luis on 30/04/22.
//

import Foundation

struct RepositoryError : Error {
    let message: String
    
    init(_ message: String) {
        self.message = message
    }
    
    public var localizedDescription: String {
        return message
    }
}
