//
//  Repository.swift
//  NewsApp
//
//  Created by Florencia Olivera on 23/10/2024.
//

import Foundation

class Repository: RepositoryProtocol {
    func getNews() async throws -> [NewsEntity] {
        return [
            NewsEntity(title: "Title 1", author: "Author", dateTime: "MM/dd/yyyy hh:mm:ss"),
            NewsEntity(title: "Title 2", author: "Author", dateTime: "MM/dd/yyyy hh:mm:ss"),
            NewsEntity(title: "Title 3", author: "Author", dateTime: "MM/dd/yyyy hh:mm:ss"),
        ]
    }
    
    func getUsers() async throws -> [UserEntity] {
        return [
            UserEntity(name: "Roberto", lastName: "Perez", company: "Company A"),
            UserEntity(name: "Roberto", lastName: "Perez", company: "Company B"),
            UserEntity(name: "Roberto", lastName: "Perez", company: "Company C")
        ]
    }
}
