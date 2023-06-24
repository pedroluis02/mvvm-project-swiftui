//
//  User.swift
//  MvvmProjectSwiftUI1
//
//  Created by Pedro Luis on 23/04/22.
//
//  Ref: https://gorest.co.in/public/v2/users

import Foundation

struct User: Codable, Hashable, Identifiable {
    let _id = UUID()
    let id: Int
    let name: String
    let gender: String
    let email: String
    let status: String
}

enum Gender {
    case male
    case female
}
