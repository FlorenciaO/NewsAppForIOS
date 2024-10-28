//
//  Repository.swift
//  NewsApp
//
//  Created by Florencia Olivera on 23/10/2024.
//

import Foundation

protocol RepositoryProtocol {
    func getNews() async throws -> [NewsEntity]
    func getUsers() async throws -> [UserEntity]
}
