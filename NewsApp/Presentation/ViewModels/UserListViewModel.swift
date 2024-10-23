//
//  UserListViewModel.swift
//  NewsApp
//
//  Created by Florencia Olivera on 23/10/2024.
//

import Foundation

class UserListViewModel: ObservableObject {
    @Published var users: [UserItemModel] = []
    
    func onAppear() {
        let newItems = [
            UserItemModel(name: "Roberto", lastName: "Perez", company: "Company A"),
            UserItemModel(name: "Roberto", lastName: "Perez", company: "Company B"),
            UserItemModel(name: "Roberto", lastName: "Perez", company: "Company C")
        ]
        users.append(contentsOf: newItems)
    }
}
