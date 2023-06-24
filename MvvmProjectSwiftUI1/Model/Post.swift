//
//  Post.swift
//  MvvmProjectSwiftUI1
//
//  Created by Pedro Luis on 23/04/22.
//
// Ref: https://gorest.co.in/public/v2/posts

import Foundation

struct Post : Codable, Hashable, Identifiable {
    let _id = UUID()
    let id: Int
    let title: String
    let body: String
    let user_id: Int
}
