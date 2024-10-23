//
//  UserItemModel.swift
//  NewsApp
//
//  Created by Florencia Olivera on 23/10/2024.
//

import Foundation

struct UserItemModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let lastName: String
    let company: String
    // TODO: Change for an URL image
    let avatarImage: String = "person.circle"
    var fullName: String {
        return name + " " + lastName
    }
}
