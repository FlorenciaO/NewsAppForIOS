//
//  UserListViewModel.swift
//  NewsApp
//
//  Created by Florencia Olivera on 23/10/2024.
//

import Foundation

class UserListViewModel: ObservableObject {
    @Published var users: [UserItemModel] = []
    @Published var isLoading = true
    
    // TODO: Replace with DI pattern
    private let repository: RepositoryProtocol = Repository()
    
    func onAppear() {
        Task {
            do {
                let users = try await repository.getUsers()
                self.users = users.map { entity in
                    UserItemModel(name: entity.name, lastName: entity.lastName, company: entity.company)
                }
            } catch {
                // TODO: handle error
            }
        }
        isLoading = false
    }
}
